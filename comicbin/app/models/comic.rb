class Comic < ActiveRecord::Base

	validates :title, :image, :presence => true

end
