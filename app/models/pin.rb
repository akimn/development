class Pin < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, :styles => { :medium => "2000x2000>", :thumb => "700x700>" }
	acts_as_likeable
	
	
	validates :locationBuilding, presence: true
	validates :clergyname, presence: true
	validates :concern, presence: true

	validates :locationBuilding, length: { minimum: 2 }
	validates :locationBuilding, length: { maximum: 255 }
	validates :clergyname, length: { minimum: 1 }
	validates :clergyname, length: { maximum: 255 }
	validates :concern, length: { minimum: 1 }
	validates :concern, length: { maximum: 255 }


	def self.search(search)
	 if search	
      	where('"locationBuilding" ILIKE ? OR concern ILIKE ? OR clergyname ILIKE ?', "%#{search}%", "%#{search}%", "%#{search}%")
	  else
	    scoped
	 end
  end
  
end
