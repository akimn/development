class Pin < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, :styles => { :medium => "2000x2000>", :thumb => "700x700>" }
	acts_as_likeable
	
	
	 


	def self.search(search)
	 if search	
      	where('"locationBuilding" ILIKE ? OR concern ILIKE ? OR clergyname ILIKE ?', "%#{search}%", "%#{search}%", "%#{search}%")
	  else
	    scoped
	 end
  end
  
end
