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
    @default_date = Date.today
    @search = AdvancedSearch.find(params[:id])
    @results = Offer.where(nil)
    @results = @results.category(@search.category.to_i) if @search.category.present?
    @results = @results.between(@search.published_on, @default_date) if @search.published_on.present?
    @results = @results.price(@search.min_price..@search.max_price) if @search.min_price.present? && @search.max_price.present?

  end

  private

  def search_params
    params.require(:advanced_search).permit(:category, :min_price, :max_price, :published_on)
  end
end
