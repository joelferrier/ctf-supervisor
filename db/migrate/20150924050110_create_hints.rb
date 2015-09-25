class CreateHints < ActiveRecord::Migration
  def change
    create_table :hints do |t|
      t.text    :message
      t.integer :points
      t.timestamps null: false
    end
    add_reference :hints, :challenge, index: true
  end
end
