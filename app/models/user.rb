class User < ApplicationRecord
    has_many :objectives
    validates_presence_of :name, :password 
    validates :name, presence: true, length: {minimum:5}
    validates :password, presence: true, length: {minimum:5}

    def to_s
    name
  end
end
