class FoldersController < ApplicationController
  def index
    @folders = Folder.find_all_by_is_root(true)
  end

  def new
  end

  def create
  end

  def show
    @folder = Folder.find(params[:id])
    @items = @folder.user_files + @folder.children
  end
end
