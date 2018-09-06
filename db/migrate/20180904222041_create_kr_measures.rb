class CreateKrMeasures < ActiveRecord::Migration[5.2]
  def change
    create_table :kr_measures do |t|
      t.string :name

      t.timestamps
    end
  end
end
