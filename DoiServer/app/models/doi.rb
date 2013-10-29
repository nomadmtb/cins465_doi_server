class Doi < ActiveRecord::Base

	belongs_to :user
	has_many :urls, :dependent => :destroy
	has_many :reviews, :dependent => :destroy
	attr_accessor :url

end
