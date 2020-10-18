class BusinessesController < ApplicationController
    def index
        @businesses = Business.all.order(id: :desc)
        render json: @businesses,
        include: {comments: {}}
    end
    def show
        @business = Business.find_by(id:params[:id])       
        render json: @business,
        include: {comments: {include: {user: {only: ['id','name','username','img_url'] }, comment_votes: {only: ['id','user_id','vote']}}}}
    end
    def create 
       
        @business = Business.create(business_params)

        # byebug 
        params[:business][:images].map{|image| 
          decoded_image = Base64.decode64(image["image"])
          image_io = StringIO.new(decoded_image)
          @business.images.attach(io: image_io, filename: image["file_name"])
        }

        unless @business.save
          puts @business.errors.inspect
          render json: { error: "Unable to create business" }, status: 422
        end

        @user_biz = UserBiz.create(user_id:1, business_id:@business.id)
        
        render json: @business

    end 
    def update 
        @business = Business.find(business_params[:id])
        @business.update(hearts: business_params["hearts"])
        # @biz.save
    end 

    private

    def business_params
        params.require(:business).permit(:id, :name, :city, :state, :summary, :categories, :website, :twitter, :facebook, :phone, :email, :img_url, :hearts, images: []  )
     end

    #  def image_io
    #     decoded_image = Base64.decode64(params[:business][:images])
    #     StringIO.new(decoded_image)
    #   end

      # def image_name
      #   params[:business][:file_name]
      # end
end
