class CreateObjectives < ActiveRecord::Migration[5.2]
  def change
    create_table :objectives do |t|
      t.string :description
      t.integer :period_value
      t.references :tiempo, foreign_key: true
      t.references :user, foreign_key: true
      

      t.timestamps
    end
  end
end
