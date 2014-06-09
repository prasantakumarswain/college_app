class CreateCollegeInformations < ActiveRecord::Migration
  def change
    create_table :college_informations do |t|
      t.string :name
      t.text :address

      t.timestamps
    end
  end
end
