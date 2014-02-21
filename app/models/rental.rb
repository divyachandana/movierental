class Rental < ActiveRecord::Base
  belongs_to :customer
  belongs_to :movie
  validates :moviename,
            presence:true
  validates :mobileno, 
            presence:true
end
