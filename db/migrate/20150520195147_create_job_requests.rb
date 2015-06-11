class CreateJobRequests < ActiveRecord::Migration
  def change
    create_table :job_requests do |t|
      t.string :availability_id
      t.string :user_id
      t.string :description
      t.string :location
      t.string :time
      t.string :date
      t.string :user_last_name
      t.string :user_first_name

      t.timestamps

    end
  end
end
