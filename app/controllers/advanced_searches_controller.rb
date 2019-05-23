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
    @results = Offer.where(nil)
    @results = Offer.category(@search.category.to_i) if @search.category.present?
    @results = Offer.by_month(@search.published_on.month) if @search.published_on.present?
    p "^" * 40
    p @results = Offer.price(@search.min_price)
    p "^" * 40

  end

  private

  def search_params
    params.require(:advanced_search).permit(:category, :min_price, :max_price, :published_on)
  end
end
