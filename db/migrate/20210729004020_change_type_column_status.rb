class ChangeTypeColumnStatus < ActiveRecord::Migration[5.2]
  def up
    change_column :books, :status, :integer
  end

  def down
    change_column :books, :status, :string
  end
end
