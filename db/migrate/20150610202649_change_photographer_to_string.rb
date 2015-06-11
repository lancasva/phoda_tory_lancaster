class ChangePhotographerToString < ActiveRecord::Migration
  def change
change_column :users, :photographer, :string

  end
end
