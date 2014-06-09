class CreateStreams < ActiveRecord::Migration
  def change
    create_table :streams do |t|
      t.string :name
      t.string :college_information_id

      t.timestamps
    end
  end
end
