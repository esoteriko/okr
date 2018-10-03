class User < ApplicationRecord
    has_many :objectives
    validates_presence_of :name, :password 
    validates :name, presence: true, length: {minimum:3}
    validates :password, presence: true, length: {minimum:3}

      
    end



