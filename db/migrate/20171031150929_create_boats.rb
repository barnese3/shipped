class CreateBoats < ActiveRecord::Migration[5.1]
  def change
    create_table :boats do |t|
      t.string :name
      t.integer :container_amount
      t.string :location
      t.references :user, foreign_key: {to_table: :users}, index: true

      t.timestamps
    end
  end
end
