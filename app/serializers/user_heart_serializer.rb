class UserHeartSerializer < ActiveModel::Serializer
  attributes :id , :user_id, :user_biz_id, :created_at
  has_one :user, serializer: BaseUserSerializer  
  has_one :user_biz, serializer: UserBizSerializer 

  class BaseUserSerializer < ActiveModel::Serializer
    attributes :id, :name, :usernname
  end 
  
  class UserBizSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :business_id

    # Using serializer described below:
    # UserSerializer::TeamSerializer::GameSerializer
    has_one :business, serializer: BusinessSerializer

  end 


end
