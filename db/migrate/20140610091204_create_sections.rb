class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :name
      t.references :college_information
      t.references :stream
      t.references :director
      t.timestamps
    end
  end
end
