class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string  :name
      t.text    :description
      t.integer :points
      t.integer :number
      t.timestamps null: false
    end
    add_reference :challenges, :level, index: true
    add_reference :challenges, :category, index: true
  end
end
