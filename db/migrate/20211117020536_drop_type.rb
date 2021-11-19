class DropType < ActiveRecord::Migration[6.1]
  def change
    remove_column :cats, :type, :string
  end
end
