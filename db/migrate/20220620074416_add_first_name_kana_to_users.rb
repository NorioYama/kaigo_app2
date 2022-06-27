class AddFirstNameKanaToUsers < ActiveRecord::Migration[6.0]
  def up
    add_column :users, :first_name_kana, :string, null: false 
    add_column :users, :last_name_kana, :string, null: false
    add_column :users, :birthday, :date, null: false
  end
end
