class CreateBoats < ActiveRecord::Migration[5.0]
  def change
    create_table :boats do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.integer :capacity
      t.string :location
      t.string :content_type

      t.timestamps
    end
  end
end
