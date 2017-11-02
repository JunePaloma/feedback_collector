class User < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :github_token
      t.string :github_uid
      t.string :name
    end
  end
end
