class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text    :solution
      t.string  :solution_type
      t.string  :solution_hash
      t.boolean :match_case
      t.integer :penalty
      t.timestamps null: false
    end
    add_reference :answers, :challenge, index: true
  end
end
