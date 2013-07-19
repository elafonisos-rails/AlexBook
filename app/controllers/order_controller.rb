class OrderController < ApplicationController


  def new
    if @order.nil?
      @order=Order.new
    end

    unless params[:pid].nil? or params[:quantity].nil?
      product=Product.find(params[:pid])
      @item=Item.new(:publisher=>product.publisher,:isbn=>product.isbn,:title=>product.title,:price=>product.price,:quantity=>params[:quantity])
      @item.save
      @order.items << @item
    end


  end




  def edit
  end


  def search
    @products=Product.where("upper(title) LIKE upper('%#{params[:title]}%')").where("upper(publisher) LIKE upper('%#{params[:publisher]}%')")

  end

end
