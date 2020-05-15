class ShopsController < ApplicationController
before_action :authenticate_user!

  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.create(shop_params)
    if @shop.save
      redirect_to shops_path
    else
      render 'new'
    end
  end

  def index
    @shops = Shop.all
  end

  def show
    @shop = Shop.find(params[:id])
  end

  def edit
    @shop = Shop.find(params[:id])
  end

  def update
    @shop = Shop.find(params[:id])
    @shop.update(shop_params)
    redirect_to shops_path
  end

  def destroy
    @shop = Shop.find(params[:id])
    @shop.destroy
    redirect_to shops_path
  end

  private
    def shop_params
      params.require(:shop).permit(:name,
                                   :description,
                                   :address,
                                   :latitude,
                                   :longitude,
                                   :user_id,
                                   :image_id,
                                   :seet_id,
                                   :recommend_id
                                )
    end

end