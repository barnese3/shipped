class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :firstname
      t.string :lastname

      t.timestamps
    end
  end
end
