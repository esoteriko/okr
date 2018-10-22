class Objective < ApplicationRecord
  belongs_to :tiempo
  belongs_to :user
  has_many :key_results, dependent: :destroy
  has_many :groups_objectives
  has_and_belongs_to_many :groups, through: :groups_objectives

  accepts_nested_attributes_for :key_results
  accepts_nested_attributes_for :groups_objectives
  

  validates_presence_of :description, :period_value, :user
  
  
end



