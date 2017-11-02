class CreateBoatJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :boat_jobs do |t|
    	t.references :boat, foreign_key: {to_table: :boats}, index: true
    	t.references :job, foreign_key: {to_table: :jobs}, index: true
      t.timestamps
    end
  end
end
