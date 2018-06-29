class WelcomeController < ApplicationController
  include WelcomeHelper
  include Save_delete

  def index
  	@user=User.new
  end

  def show
    # @data=User.find(params[:id])
     @data=User.includes(:profiles).find(params[:id])
    # byebug
  end

end
