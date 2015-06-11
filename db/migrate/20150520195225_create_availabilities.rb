class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.string :photographer_id
      t.string :location_available
      t.string :time_available
      t.string :date_available

      t.timestamps

    end
  end
end
