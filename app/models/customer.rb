class Customer < ActiveRecord::Base
  has_many :rentals
  
  validates :mobileno, 
            presence:true,
                    length: { is: 10 }
  validates :name,
           format: { with: /\A[a-zA-Z]+\z/,message: "only allows alphabets" },
           presence:true
            
  validates :email, 
             format:{ :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i},
             presence:true
  validates :address,
            presence:true  
  
end
