class Image < ActiveRecord::Base
  belongs_to :gallery
  attr_accessible :gallery_id, :file
  has_attached_file :file, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
