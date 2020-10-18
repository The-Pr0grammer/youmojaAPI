class DirectUploadsController < ActiveStorage::DirectUploadsController
    def create 
        protect_from_forgery with: :exception  
        skip_before_action :verify_authenticity_token
        byebug 
    end 
end 