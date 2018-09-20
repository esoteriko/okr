class Objective < ApplicationRecord
  belongs_to :tiempo
  belongs_to :user
  has_many :key_results, dependent: :destroy
  accepts_nested_attributes_for :key_results

  

end
