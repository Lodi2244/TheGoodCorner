class HomeController < ApplicationController
  def index
    @offers = Offer.all
    @offer_sample = @offers.sample
  end
end
