class Api::V1::PostsController < Api::V1::ApplicationController
    before_action :authorized
    
    def index
        @posts = Post.all
        render :json => @posts
    end

end