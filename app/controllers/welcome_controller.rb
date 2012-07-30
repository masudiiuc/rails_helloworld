class WelcomeController < ApplicationController
  def index
    @title = "Home"
  end

  def about
    @title = "About Us"
  end

  def contact
    @title = "Contact Us"
  end

end
