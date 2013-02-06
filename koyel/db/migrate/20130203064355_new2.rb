class New2 < ActiveRecord::Migration
  def up
   add_column :users, :contactno, :string
  end

  def down
   remove_column :users, :contactno
  end
end
