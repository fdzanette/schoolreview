class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @topschools = School.pick_top_schools
  end

end
