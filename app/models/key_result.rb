class KeyResult < ApplicationRecord
  belongs_to :objective   
  belongs_to :kr_measure
  
  validates_presence_of :description, :fecha

  def to_s
    description
  end
end
