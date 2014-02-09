class ComicsController < ApplicationController

  def index

    @comics = Comic.all

  end

  def new

    @comic = Comic.new
    render 'new'
  end

  def show

    comic_id = params["id"]
    @comic = Comic.find_by :id => comic_id
    render 'show'

  end

  def destroy

    c = Comic.find(params["id"])
    c.destroy
    @comics = Comic.all
    render 'index'

  end

  def edit

  end

  def create

    c = Comic.new
    c.title = params["comic"]["title"]
    c.description = params["comic"]["description"]
    c.image = params["comic"]["image"]
    c.save
    
    @comics = Comic.all
    render 'index'
  end

end