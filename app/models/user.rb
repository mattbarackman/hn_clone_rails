class User < ActiveRecord::Base

  has_secure_password
  attr_accessible :name, :email, :password, :password_confirmation

  has_many :posts
  has_many :comments


  # validates: email, presence: true
  # validates: name, presence: true

end
