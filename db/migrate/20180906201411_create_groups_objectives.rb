class CreateGroupsObjectives < ActiveRecord::Migration[5.2]
  def change
    create_table :groups_objectives, id: false do |t|
      t.references :groups, index: true
      t.references :objectives, id: true
    end
  end
end
