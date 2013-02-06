class New < ActiveRecord::Migration
  def up
   remove_column:users, :roll
   remove_timestamps(:users)
   add_column :users, :department, :string
   add_column :users, :age, :string
   add_column :users, :email, :string
  end

  def down
   add_column :users, :roll, :string
   add_timestamps(:users)
   remove_column :users, :age
   remove_column :users, :department
   remove_column :users, :email
  end
end
