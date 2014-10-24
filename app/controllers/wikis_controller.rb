class WikisController < ApplicationController
  def index
    @wikis = Wiki.all
  end

  def new
  end
end
