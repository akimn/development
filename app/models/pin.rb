class Pin < ActiveRecord::Base
	

	belongs_to :user
	has_attached_file :image, :styles => { :medium => "500x500>", :thumb => "7000x7000>" }
	acts_as_likeable
	
	 validates :image, presence: true
	 validates :locationBuilding, presence: true
	 validates :concern, presence: true

	
end
