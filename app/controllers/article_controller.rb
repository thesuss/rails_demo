class ArticlesController < ApplicationController
  def index
    @articles = Article.all([:id, :title])
  end
  def new
    @article = Article.new
  end
  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      redirect_to :new
    end
  end

  def show
    @articles = Article.where(id: params[:id])
  end

  private
    def article_params
      params.require(:article).permit(:title, :text)
    end
end
