class TagsController < ApplicationController

	def index
  		@tags = Tag.all
	end	

	def show
	  @tag = Tag.find(params[:id])
	end







	def destroy
		@tag = Tag.find(params[:id])
		@tag.taggings.destroy_all
		@tag.destroy

		flash.notice = "Tag '#{@tag.name}' Destroyed!"

		redirect_to ('/tags')
	end







end
