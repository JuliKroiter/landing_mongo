class HomeController < ApplicationController
  def index
    @block = Block.last
  end
end