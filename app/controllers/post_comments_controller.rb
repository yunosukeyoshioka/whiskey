class PostCommentsController < ApplicationController
	
	def create
		@whiskey = Whiskey.find(params[:whiskey_id])
		@comment = @whiskey.post_comments.new(post_comment_params)
		@comment.save
    #comment = current_user.post_comments.new(post_comment_params)
    #comment.whiskey_id = whiskey.id
    #@whiskey.post_comments.create(post_comment_params)
    redirect_to whiskey_path(@whiskey)
		
	end

	def destroy
		
	end

	private
  def post_comment_params
    params.require(:post_comment).permit(:comment, :whiskey_id)
  end

end
