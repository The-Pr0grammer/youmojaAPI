class UserBizsController < ApplicationController
    def index
        @user_bizs = UserBiz.all.order(id: :desc).map{|ub|
        ub_hash = Hash.new()
        badge_map = {} 
        
        ub.business.badges.sort_by{|b| b.price}.each{|badge| badge_map[badge.color]? badge_map[badge.color]+=1 : badge_map[badge.color] = 1}

        images_map = false

        if ub.business.images.attached?
            images_map = ub.business.images.map{|img| rails_blob_path(img, only_path: true) }
        end

        ub_hash = {"id" => ub.id, "user" => {"id" => ub.user.id, "name" => ub.user.name, "username"=> ub.user.username, "img_url" => ub.user.img_url}, "business" => {"id"=>ub.business.id, "name" => ub.business.name, "categories"=> ub.business.categories, 
        "summary" => ub.business.summary, "img_url"=> ub.business.img_url, "images" => images_map, "hearts" => ub.business.user_hearts.count, "comments" => ub.business.comments.count, "badges" => badge_map}}

        }
        # render json: @user_bizs ,adapter: nil, include: {user: {only: ['id','name','username','img_url']}, business: {include: {comments: {include: {user: {only: ['id','username','img_url'] }}}}}}
        render json: @user_bizs 
    end
    def show
        @user_biz = UserBiz.find_by(id:params[:id])      
        render json: @user_biz
        # render json: @user_biz , include: {user: {only: ['id','name','username','img_url']}, business: {include: {comments: {include: {user: {only: ['id','username','img_url'] }}}}}}
    end
    def badges 
        @bizs_badges_info = UserBiz.all.map{|ub| 
        bbi_hash = Hash.new()
        
        bbi_hash = {"business_id" => ub.business.id, "business_name" => ub.business.name, "business_summary" => ub.business.summary, "user_id" => ub.user.id, "user_img_url" => ub.user.img_url, "badges_sum" => ub.business.badges.map{|badge| badge.price}.reduce(:+).to_f}
        
        }.sort_by!{|hash| hash["badges_sum"]}.reverse
        
        render json: @bizs_badges_info
    end 
end
