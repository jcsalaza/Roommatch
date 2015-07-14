class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :age
      t.string :gender
      t.string :school
      t.string :grad_year
      t.string :hometown
      t.string :city
      t.date :move_in_date
      t.string :bedrooms
      t.string :budget
      t.string :smoking_preference
      t.string :drinking_preference
      t.string :cleanliness
      t.timestamps
    end
  end
end
