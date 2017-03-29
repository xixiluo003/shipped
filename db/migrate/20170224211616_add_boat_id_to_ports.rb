class AddBoatIdToPorts < ActiveRecord::Migration[5.0]
  def change
    add_column :ports, :boat_id, :integer
  end
end
