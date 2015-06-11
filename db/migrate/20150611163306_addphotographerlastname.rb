class Addphotographerlastname < ActiveRecord::Migration
  def change

add_column :job_requests, :photographer_last_Name, :string


  end
end
