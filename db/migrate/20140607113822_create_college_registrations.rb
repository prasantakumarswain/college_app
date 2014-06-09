class CreateCollegeRegistrations < ActiveRecord::Migration
  def change
    create_table :college_registrations do |t|
      t.string :name
      t.string :email
      t.references :college_information_id
      t.references :stream_id
      t.timestamps
    end
  end
end
