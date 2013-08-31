class ArticlesController < ApplicationController
	def new
		@user = User.find(current_user)
   		@article = @user.articles.build(params[:article])
	end

	def create
		@user = User.find(current_user)
   		@article = @user.articles.create(params[:article])
   		redirect_to articles_path

	end

	def index
		@user = User.find(current_user)
		@article = @user.articles.all
	end

	def edit
		@user = User.find(current_user)
		@article = @user.articles.find(params[:id])
	end

	def update
		@user = User.find(current_user)		
		@cc=@user.articles.find(params[:id])
		@cc.update_attributes(params[:article])
		redirect_to articles_path
	end 


	def show
		@user = User.find(current_user)
		@article = @user.articles.find(params[:id])
		
	end

	def destroy
		@user = User.find(current_user)
		@user.articles.find(params[:id]).destroy
		redirect_to articles_path
	end


end
