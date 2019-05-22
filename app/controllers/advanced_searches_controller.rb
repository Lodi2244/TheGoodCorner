class AdvancedSearchesController < ApplicationController
  def new
    @search = AdvancedSearch.new
    @categories = Category.all
  end

  def create
    @search = AdvancedSearch.create!(search_params)
    redirect_to @search
  end

  def show
    @search = AdvancedSearch.find(params[:id])
    # @results = Offer.where(nil)
    @results = Offer.category(@search.category.to_i)
    p "^" * 40
    p @results = Offer.published_on(@search.published_on)
    p "^" * 40
    @results = Offer.price(@search.min_price)

  end

  private

  def search_params
    params.require(:advanced_search).permit(:category, :min_price, :max_price, :published_on)
  end
end
