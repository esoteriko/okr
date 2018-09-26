class CreateGroupsObjectives < ActiveRecord::Migration[5.2]
  def change
    create_table :groups_objectives, id: false do |t|
      t.references :group, index: true
      t.references :objective, id: true
    end
  end
end
  