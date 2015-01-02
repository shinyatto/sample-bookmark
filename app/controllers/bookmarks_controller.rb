class BookmarksController < ApplicationController
  before_action :authenticate

  def new
    @bookmark = current_user.created_bookmark.build
  end

  def craete
    @bookmark = current_user.created_bookmark.build(bookmark_params)
    if @bookmark.save
      redirect_to @bookmark, notice: '作成しました'
    else
      render :new
    end
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(

    )
  end
end
