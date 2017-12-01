class HomeController < ApplicationController
  def index
    @header         = Home::Header.last
    @about          = Home::About.last
    @services       = Home::Service.last
    @portfolio      = Home::Portfolio.last
    @call_to_action = Home::CallToAction.last
    @contact        = Home::Contact.last
  end
end