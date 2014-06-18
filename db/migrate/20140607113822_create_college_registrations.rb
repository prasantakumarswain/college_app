class CreateCollegeRegistrations < ActiveRecord::Migration
  def change
    create_table :college_registrations do |t|
      t.string :name
      t.string :email
      t.references :college_information
      t.references :stream
      t.timestamps
    end
  end
end
