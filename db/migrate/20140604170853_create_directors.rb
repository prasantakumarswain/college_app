class CreateDirectors < ActiveRecord::Migration
  def change
    create_table :directors do |t|
      t.string :name
      t.string :email,null: false, default: ""
      t.references :college_information

      t.timestamps
    end
  end
end
