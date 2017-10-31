class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :description
      t.string :origin
      t.string :destination
      t.integer :cost
      t.integer :containers
      t.references :user, foreign_key: {to_table: :users}, index: true
      t.references :boat, foreign_key: {to_table: :boats}, index: true

      t.timestamps
    end
  end
end
