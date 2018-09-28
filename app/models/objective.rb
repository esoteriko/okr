class Objective < ApplicationRecord
  belongs_to :tiempo
  belongs_to :user
  has_many :key_results, dependent: :destroy
  has_and_belongs_to_many :groups, dependent: :destroy

  accepts_nested_attributes_for :key_results
  accepts_nested_attributes_for :groups

  validates_presence_of :description, :period_value, :user 
end


