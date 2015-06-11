class ChangeIdToInteger < ActiveRecord::Migration
  def change
    change_column :availabilities, :photographer_id, :integer
    change_column :job_requests, :availability_id, :integer
  end
end
