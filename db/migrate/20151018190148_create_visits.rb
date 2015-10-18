class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.date :day
      t.time :start
      t.time :finish
      t.text :description

      t.timestamps null: false
    end
  end
end
