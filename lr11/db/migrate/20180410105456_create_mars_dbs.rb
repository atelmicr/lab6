class CreateMarsDbs < ActiveRecord::Migration[5.1]
  def change
    create_table :mars_dbs do |t|
      t.string :marsarr
      t.integer :marsquan

      t.timestamps
    end
  end
end
