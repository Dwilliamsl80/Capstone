class Review < ApplicationRecord
	belongs_to :reviewer
	belongs_to :user

			before_create :set_reviewDate_to_now
  		def set_reviewDate_to_now
    		self.reviewDate = Time.now
  		end
end
