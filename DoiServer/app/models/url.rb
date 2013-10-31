class Url < ActiveRecord::Base

  belongs_to :doi

  validates :url, :presence => true, format: {:with => /\A(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$\z/ }
  validates :doi_id, :presence => true


end
