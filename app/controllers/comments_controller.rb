class CommentsController < ApplicationController
<<<<<<< HEAD
=======
  http_basic_authenticate_with name: "admin", password: "secret", only: :destroy

>>>>>>> 8e02132f68a9b3b50dd8e85a4c2f34d50c1fa11c
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end

  private

  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
