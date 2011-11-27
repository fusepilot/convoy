class DashboardController < ApplicationController
  def index
    @folders = Folder.all
    @files = UserFile.all
  end
end
