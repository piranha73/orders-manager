class PagesController < ApplicationController
  def index
  end

  def about
    @team = %w(stefany fanny robin michele)
  end
end
