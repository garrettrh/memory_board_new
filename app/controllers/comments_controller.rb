class CommentsController < ApplicationController

	def create
		memory = Memory.find(params[:post_id])
		comment = memory.comments.create(comment_params)
		redirect_to memory_path(comment.memory)
	end

	private
	def comment_params
		params.require(:comment).permit(:body, :user)
	end

end
