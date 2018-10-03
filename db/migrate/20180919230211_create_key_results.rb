class CreateKeyResults < ActiveRecord::Migration[5.2]
  def change
    create_table :key_results do |t|
      t.string :description
      t.date :fecha
      t.integer :value
      t.references :objective, foreign_key: true
      t.references :kr_measure, foreign_key: true

      t.timestamps
    end
  end
end
