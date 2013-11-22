class Pin < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, :styles => { :medium => "500x500>", :thumb => "7000x7000>" }
end
