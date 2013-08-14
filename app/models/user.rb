class User < ActiveRecord::Base
  attr_accessible :email, :name, :website, :password, :password_confirmation

  # before_save { self.email = email.downcase }
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # validates :email, presence:   true,
  #                   format:     { with: VALID_EMAIL_REGEX },
  #                   uniqueness: { case_sensitive: false }
  has_secure_password
  validates_presence_of :password, :on => :create

  has_many :clients
end

