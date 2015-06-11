class Addingphotographerid < ActiveRecord::Migration
  def change


    add_column :job_requests, :photographer_id, :string

  end
end
