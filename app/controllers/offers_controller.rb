class OffersController < ApplicationController

  def index
    @offers = Offer.text_search(params[:query])
  end

  def new
    @offer = Offer.new
    @categories = Category.all
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def create
    @offer = Offer.create!(offer_params)
    redirect_to offers_path
  end

  def update
    @offer = Offer.find(params[:id])
    @offer.update
    respond_to do |format|
      format.js
      format.html { redirect_to @offer }
    end
  end

  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy
    respond_to do |format|
      format.js
      format.html { redirect_to @offers }
    end
  end

  private

  def offer_params
    params.require(:offer).permit(:title, :description, :price, :created_at, :category_id)
  end
end
