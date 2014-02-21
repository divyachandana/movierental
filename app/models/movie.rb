class Movie < ActiveRecord::Base
  has_many :rentals
  validates :moviename,
            presence:true
  validates :language,
            presence:true
  validates :yor,
            presence:true
  validates :typeofmovie,
            presence:true
  
end
