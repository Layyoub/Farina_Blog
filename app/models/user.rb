class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
    attr_accessor :username
    # Other model code...
  
  end  
  