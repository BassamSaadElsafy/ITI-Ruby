class PostsController < ApplicationController

  def index
    @posts = [
      {"name" => "first post"},
      {"name" => "second post"},
      {"name" => "third post"}
    ]
  end

  def new
    @success = true
    @page_title = "Creating Post"
  end

  def create
    
    #getting values from form 
    title = params[:title].inspect
    description = params[:description].inspect
    #insert data to posts table Here

    post = {title: title, description: description}

    redirect_to posts_url, flash: { post_created: 200 }

  end

  def show 
    #render to a page that shows specific post
  end

  def edit 
    #render to edit page_load
  end

  def update 
    #code to update specific post then redirect to index page 
  end

  def destroy 
    #delete specific post then show msg and
    render :plain => "post deleted successfully"
  end

end
