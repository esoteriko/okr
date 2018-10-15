class CreateGroupsObjectives < ActiveRecord::Migration[5.2]
  def change
    create_table :groups_objectives, id: false do |t|
      t.references :group, id: true
      t.references :objective, id: true
    end
  end
end
  