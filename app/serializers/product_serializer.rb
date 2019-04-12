class ProductSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :price, :location, :seller, :category, :images

  def images 
    object.product_images.map { |product_image| {url: product_image.url, id: product_image.id}}
  end

  def seller 
    object.user
  end

end
