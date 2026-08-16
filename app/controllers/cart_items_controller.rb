class CartItemsController < ApplicationController
    def create
      @item = Cart.add(params[:product_id])

      respond_to do |format|
        format.turbo_stream
      end
    end
end
