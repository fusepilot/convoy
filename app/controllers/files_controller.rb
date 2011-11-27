class FilesController < ApplicationController
  def show
    @file = UserFile.find(params[:id])
    
    case @file.attachment_content_type
      when "video/mp4"
        @file_partial = "files/mimes/video"
      when "video/ogg"
        @file_partial = "files/mimes/video"
      when "image/png"
        @file_partial = "files/mimes/image"
      else
        @file_partial = "files/mimes/default"
    end
  end
end
