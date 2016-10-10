class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to @article
  end


  private
  def article_params
    params.require(:post).permit(:title, :body)
  end
end
