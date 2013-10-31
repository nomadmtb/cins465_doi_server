class Review < ActiveRecord::Base

	belongs_to :doi
	belongs_to :user

	validates :doi_id, :presence => true
	validates_numericality_of :doi_id, :message => ': Invalid doi_id'

end
