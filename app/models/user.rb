class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :flyer_miles, :last_name, :password, :password_confirmation
  
  has_secure_password
  
  before_save { |user| user.email = email.downcase }
  
  before_create :start_miles_at_zero
  
  def start_miles_at_zero
    self.miles = 0
  end
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :first_name, :presence => true, :length  => { maximum: 15 }
  validates :last_name, :presence  => true, :length  => { minimum: 5 }
  validates :email, :presence => true,
                      :format =>      { with: VALID_EMAIL_REGEX },
                      :uniqueness  => { case_sensitive: false }
  validates :password, :length => { minimum: 6 }
  validates :password_confirmation, :presence => true
  
end
