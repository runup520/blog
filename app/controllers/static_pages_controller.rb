#encoding: utf-8
class StaticPagesController < ApplicationController
  def home
  	@kms = Article.where("tag = '知识管理'")
    @javas = Article.where("tag = 'java开发'")
    @rubys = Article.where("tag = 'ruby开发'")
    @jss = Article.where("tag = '脚本语言'")
    @articles = Article.all
  end

  def help
  end
  
  def about
  end

  def contact
  end

  def km
    @kms = Article.where("tag = '知识管理'")
  end

  def java
    @javas = Article.where("tag = 'java开发'")
  end

  def ruby
    @rubys = Article.where("tag = 'ruby开发'")
  end

  def js
    @jss = Article.where("tag = '脚本语言'")
  end



	
end
