class New3 < ActiveRecord::Migration
  def up
   rename_column :users, :name, :firstname
   add_column :users, :lastname, :string
   add_column :users, :gender, :string
   add_column :users,:country, :string
  end

  def down
   rename_column :users, :firstname, :name
   remove_column :users, :lastname
   remove_column :users, :gender
   remove_column :users, :country
  end
end
