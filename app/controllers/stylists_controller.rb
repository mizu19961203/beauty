class StylistsController < ApplicationController
before_action :authenticate_user!,:ensure_correct_user,{only: [:edit, :update]}

  def new
    @stylist = Stylist.new
  end

  def create
    @stylist = Stylist.new(stylist_params)
    if @stylist.save
      redirect_to stylists_path
    else
      render 'new'
    end
  end

  def index
    @stylists = Stylist.page(params[:page]).per(12)
  end

  def show
    @stylist = Stylist.find(params[:id])
    @stylists = Stylist.all
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
      params.require(:stylist).permit(  :last_name,
                                        :first_name,
                                        :last_name_kana,
                                        :first_name_kana,
                                        :birthday,
                                        :email,
                                        :password,
                                        :name,
                                        :base_id,
                                        :user_id,
                                        :recommend_id,
                                        :career_years,
                                        :skilled_style1,
                                        :skilled_style2,
                                        :description,
                                        images: []
                                    )
  end

end