class BookmarksController < ApplicationController
before_action :set_category, only: %i[new create]

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = @category.bookmarks.new(bookmark_params)
    if @bookmark.save
      redirect_to @category, notice: 'Bookmark successfully created!'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to category_path(@bookmark.category)
  end

  private

  def set_category
    @category = Category.find(params[:category_id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:comment, :recipe_id)
  end
end
