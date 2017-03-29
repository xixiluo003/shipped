class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.references :user, foreign_key: true
      t.string :description
      t.decimal :cost
      t.string :origin
      t.string :destination
      t.integer :ccontainers

      t.timestamps
    end
  end
end
