class Objective < ApplicationRecord
    belongs_to :user 
    has_many :key_results
    has_and_belongs_to_many :groups 
    belongs_to :tiempo

    accepts_nested_attributes_for :key_results
   
end

