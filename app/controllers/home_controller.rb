class HomeController < ApplicationController
   before_filter :authorize, :except => :index
  def index
  end
end
