class CommentsController < ApplicationController
  def create
    @cat = Cat.find(params[:cat_id])
    @comment = @cat.comments.create(comment_params)
    redirect_to cat_path(@cat)
  end

  def destroy
    @cat = Cat.find(params[:cat_id])
    @comment = @cat.comments.find(params[:id])
    @comment.destroy
    redirect_to cat_path(@cat)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
