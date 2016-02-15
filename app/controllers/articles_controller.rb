class ArticlesController < ApplicationController
  def index
  end

  def new
  end

  def edit
  end
  
  def show

        @article = Article.find_by_id(params[:id])

        @comments = @article.comments.order("id desc")

        @comment = Comment.new

    end
before_action :check_current_user, only: [:new, :create, :edit, :update, :destroy]
end
