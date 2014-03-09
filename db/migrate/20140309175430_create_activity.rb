class CreateActivity < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :title
      t.integer :estimation
      t.integer :pomodoros
      t.integer :interruptions

      t.timestamps
    end
  end
end
