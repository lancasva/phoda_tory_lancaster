class Photographerstringtointeger < ActiveRecord::Migration
  def change

change_column :job_requests, :photographer_id, :integer


  end
end
