class CreateFaculties < ActiveRecord::Migration
  def change
    create_table :faculties do |t|
      t.string :name
      t.string :email,null: false, default: ""
      t.references :college_information
      t.references :stream_id

      t.timestamps
    end
  end
end
