class Addlocationtophotographer < ActiveRecord::Migration
  def change

add_column :photographer_profiles, :photographer_location, :string

  end
end
