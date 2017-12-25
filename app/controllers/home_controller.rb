class HomeController < ApplicationController
  def index
  	@items = Item.where(:status=>"Active").all
  end
end
