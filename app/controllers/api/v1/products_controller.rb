class Api::V1::ProductsController < ApplicationController

    def index 
        @products = Product.all.sort{|a,b| b.id <=> a.id}
        render json: @products
    end

    def show
        @product = Product.find_by_id(params[:id])
        if @product
            render json: @product
        else 
            render json: {
                error: "Product not found",
                status: 404
            }
        end
    end

    def update
        @product = Product.find_by_id(params[:id])

        if @product 
            @product.update(product_params)
            save_images_to_product(img_urls: images_params["img_urls"], product_id: @product.id)
            render json: @product
        else 
            render json: {
                error: "Could not find product to update",
                status: 400
            }
        end
    end

    def create 
        @product = Product.new(product_params)
        if @product
            @product.save
            save_images_to_product(img_urls: ["https://loremflickr.com/400/600/product?lock=#{@product.id * 4}"], product_id: @product.id)
            # save_images_to_product(img_urls: images_params["img_urls"], product_id: @product.id)
            render json: @product
        else 
            render json: {
                error: "Could not save product",
                status: 400
            }
        end
    end

    def save_images_to_product(img_urls:, product_id:)
        if images_params["img_urls"]
            img_urls.each do |img_url| 
                @img = ProductImage.new(url: img_url, product_id: product_id)
                if @img 
                    @img.save
                else 
                    render json: {
                        error: "Could not save product images",
                        status: 400
                    }
                end
            end
        end
    end

    def destroy 
        @product = Product.find_by_id(params[:id])
        if @product
            @product.destroy
            render json: {
                message: "Succesfully deleted product with id #{@product.id}",
                status: 200
            }
        else 
            render json: {
                error: "Could not find the product",
                status: 400
            }
        end
    end

    private

    def product_params 
        params.permit(:title, :description, :price, :location, :user_id, :category_id)
    end

    def images_params
        params.permit(:img_urls => [])
    end

end
