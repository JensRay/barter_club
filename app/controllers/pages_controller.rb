class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    sleep(5)
    redirect_to items_path
  end
end
