class TopController < ApplicationController
  def index
    @bookmarks = Bookmark.all
  end
end
