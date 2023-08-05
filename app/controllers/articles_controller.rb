class ArticlesController < ApplicationController
  def index
    @article = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end
  
  def new
    @article = Article.new
  end

  def create 
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  #Uma funcao privada não pode ser acessada pelas views
  private 
  def article_params
    params.require(:article).permit(:name, :description, :price)
  end
end
