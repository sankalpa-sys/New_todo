class AddExtraFieldsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :username, :string
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :admin, :boolean
  end
end
