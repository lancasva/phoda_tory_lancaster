class Addphonenumbertophotographer < ActiveRecord::Migration
  def change

add_column :photographer_profiles, :photographer_phone, :string

 end
end
