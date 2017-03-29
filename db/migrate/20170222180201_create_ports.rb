class CreatePorts < ActiveRecord::Migration[5.0]
  def change
    create_table :ports do |t|
      t.string :name
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
