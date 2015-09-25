class CreateLevels < ActiveRecord::Migration
  def change
    create_table :levels do |t|
      t.string  :name
      t.text    :description
      t.integer :number
      t.timestamps null: false
    end
    add_reference :levels, :scenario, index: true
  end
end
