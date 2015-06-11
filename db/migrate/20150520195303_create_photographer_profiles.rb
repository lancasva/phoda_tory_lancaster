class CreatePhotographerProfiles < ActiveRecord::Migration
  def change
    create_table :photographer_profiles do |t|
      t.string :bio
      t.string :style_specialties
      t.string :age
      t.string :last_name
      t.string :first_name

      t.timestamps

    end
  end
end
