class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :name, null: false
      t.string :image
      t.integer :duration, null: false
      t.time :start_at
      t.references :group, index: true, foreign_key: true
      t.timestamps
    end
  end
end
