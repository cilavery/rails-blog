class TagsController < ApplicationController
	before_filter :require_login, only: [:destroy]

	def show
	@tags = Tag.find(params[:id])
	end

	def index
	 @tags = Tag.all
	end

	def destroy
	  @tags = Tag.find(params[:id])
	  @tags.destroy
	  flash.notice = "Tag '#{@tags}' deleted"
	  redirect_to tags_path
	end

end
