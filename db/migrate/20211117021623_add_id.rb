class AddId < ActiveRecord::Migration[6.1]
  def change
    add_column :cats, :owner_id, :integer
  end
end
