class Api::V1::ProductImagesController < ApplicationController

    def destroy
        @image = ProductImage.find_by_id(params[:id])

        if @image
            @image.destroy
            render json: {
                message: "Succesfully deleted product image with id #{@image.id}",
                status: 200
            }
        else 
            render json: {
                error: "Could not find the product",
                status: 400
            }
        end
    end
end
