class CreateTiempos < ActiveRecord::Migration[5.2]
  def change
    create_table :tiempos do |t|
      t.string :name

      t.timestamps
    end
  end
end
