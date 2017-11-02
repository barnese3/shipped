class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :description
      t.string :origin
      t.string :destination
      t.string :status
      t.integer :cost
      t.integer :containers
      t.references :company, foreign_key: {to_table: :companies}, index: true

      t.timestamps
    end
  end
end