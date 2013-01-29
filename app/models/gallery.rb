class Gallery < ActiveRecord::Base
  attr_accessible :title, :images_attributes
  has_many :images, :dependent => :destroy
  accepts_nested_attributes_for :images, :reject_if => lambda {|a| a[:content].blank? } , :allow_destroy => true
end
