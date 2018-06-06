class PagesController < ApplicationController
  def index
    WorkJob.perform_now('bob')

    @users_count = User.all.count
  end
end
