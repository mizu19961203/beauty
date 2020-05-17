class StylistsController < ApplicationController
before_action :authenticate_user!

  def new
    @stylist = Stylist.new
  end

  def create
    @stylist = Stylist.create(stylist_params)
    if @stylist.save
      redirect_to stylists_path
    else
      render 'new'
    end
  end

  def index
    @stylists = Stylist.all
  end

  def show
    @stylist = Stylist.find(params[:id])
  end

  def edit
    @stylist = Stylist.find(params[:id])
  end

  def update
    @stylist = Stylist.find(params[:id])
    @stylist.update(stylist_params)
    redirect_to stylists_path
  end

  def destroy
    @stylist = Stylist.find(params[:id])
    @stylist.destroy
    redirect_to shops_path
  end

  private
    def stylist_params
      params.require(:stylist).permit( :name,
  	                                   :description,
  	                                   :date_start,
  	                                   :date_fin,
  	                                   :user_id,
  	                                   :base_id,
  	                                   :hairstyle_id,
  	                                   :recommend_id,
                                       images: []
                                  	)
    end

end
