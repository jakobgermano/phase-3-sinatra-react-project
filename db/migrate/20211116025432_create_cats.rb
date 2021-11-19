class CreateCats < ActiveRecord::Migration[6.1]
  def change 
    create_table :cats do |t|
    t.string :name
    t.string :gender
    t.integer :age
    t.string :type
  end
  end
end
