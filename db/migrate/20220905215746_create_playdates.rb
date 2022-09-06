class CreatePlaydates < ActiveRecord::Migration[7.0]
  def change
    create_table :playdates do |t|
      t.string :title
      t.text :description
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
