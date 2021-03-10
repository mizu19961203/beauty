class ShopsController < ApplicationController
before_action :authenticate_user!,:ensure_correct_user,{only: [:edit, :update]}

  def new
    @shop = Shop.new
    @shop.images.build
  end

  def create
    @shop = Shop.create(shop_params)
    if @shop.save
      redirect_to shops_path , notice: '作成しました'
    else
      render 'index'
    end
  end

  def index
    @shops = Shop.page(params[:page]).per(12)
  end

  def show
    @shop = Shop.find(params[:id])
    @hash = Gmaps4rails.build_markers(@shop) do |shop, marker|
      marker.lat shop.latitude
      marker.lng shop.longitude
      marker.infowindow shop.address
      marker.json({ address: shop.address })
    end
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
                                   :seet_id,
                                   :recommend_id,
                                   images_attributes: [:image_url]
                                )
    end

    def ensure_correct_user
      @shop = Shop.find(params[:id])
      if current_user != @shop.user
        redirect_to shops_path
      end
    end


end