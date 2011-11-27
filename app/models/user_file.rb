class UserFile < ActiveRecord::Base
  has_attached_file :attachment

  belongs_to :folder

  def to_s
    attachment_file_name
  end
end
