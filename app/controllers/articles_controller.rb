class ArticlesController < ApplicationController
<<<<<<< HEAD
=======
  # http_basic_authenticate_with name: "admin", password: "secret", except: [:index, :show]
>>>>>>> 8e02132f68a9b3b50dd8e85a4c2f34d50c1fa11c
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end
<<<<<<< HEAD
end
=======
end
>>>>>>> 8e02132f68a9b3b50dd8e85a4c2f34d50c1fa11c
