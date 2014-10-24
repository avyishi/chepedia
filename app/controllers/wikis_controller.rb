class WikisController < ApplicationController
  def index
    @wikis = Wiki.all
  end

  def new
    @wiki = Wiki.new
  end

  def create
    @wiki = current_user.wikis.build(wiki_params)
    if @wiki.save
      flash[:notice] = "Awesome, wiki was created successfully!"
      redirect_to @wiki
    else
      flash[:error] = "There was an error creating the wiki. Please try again"
      render :new
    end
  end

  def edit
  end

  def update
    @wiki = Wiki.friendly.find(params[:id])
    if @wiki.update_attributes(wiki_params)
      flash[:notice] = "Wiki was updated."
      redirect_to @wiki
      else
       flash[:error] = "There was an error saving the wiki. Please try again."
      render :edit
    end
  end


end
