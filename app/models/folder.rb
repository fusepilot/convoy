class Folder < ActiveRecord::Base
  acts_as_tree :order => 'name'

  has_many :user_files, :dependent => :destroy, :order => 'attachment_file_name'

  def to_s
    name.titleize
  end
end
