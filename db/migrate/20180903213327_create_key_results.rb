class CreateKeyResults < ActiveRecord::Migration[5.2]
  def change
    create_table :key_results do |t|
      t.references :objective, index: true
      t.string :description
      t.integer :kr_measure_id

      t.timestamps
    end
  end
end
