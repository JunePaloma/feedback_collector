class CreateUserGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :user_groups do |t|
      t.user :references
      t.group :references

      t.timestamps
    end
  end
end
