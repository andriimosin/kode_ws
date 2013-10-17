class HomeController < ApplicationController
  def index
    @last_article = Article.last

    @older_articles = Article.where.not(id: @last_article.id)
  end
end
