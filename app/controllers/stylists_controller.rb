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
end
