class UserSerializer < ActiveModel::Serializer
	attributes :id, :name, :email, :profile_img_url
end