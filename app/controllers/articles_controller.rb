class ArticlesController < ApplicationController
  def index
    @product = Article.all
  end
end
