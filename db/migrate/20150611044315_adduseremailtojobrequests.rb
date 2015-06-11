class Adduseremailtojobrequests < ActiveRecord::Migration
  def change

add_column :job_requests, :user_email, :string

  end
end
