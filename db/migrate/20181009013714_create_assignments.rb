class CreateAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |t|
      t.references :objective, foreign_key: true
      t.references :group, foreign_key: true
      t.string :assigned
      t.date :at

      t.timestamps
    end
  end
end
