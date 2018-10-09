class Group < ApplicationRecord
    belongs_to :group_type
    has_many :groups_objectives
    has_and_belongs_to_many :objectives, through: :groups_objectives
end
