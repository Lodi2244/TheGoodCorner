class OffersController < ApplicationController
  def index
    @offers = Offer.text_search(params[:query])
  end
  def show
    @offer = Offer.find(params[:id])
  end
  def create
  end

  def update
  end

  def destroy
  end

  private

  def offer_params
    params.require(:offer).permit(:title, :description, :price, :created_at, :category)
  end
end
