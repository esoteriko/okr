class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name
      t.references :group_type, index: true

      t.timestamps
    end
  end
end
