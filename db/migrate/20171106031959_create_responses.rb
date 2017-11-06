class CreateResponses < ActiveRecord::Migration[5.1]
  def change
    create_table :responses do |t|
      t.references :group, foreign_key: true
      t.integer :giver_id, index: true
      t.integer :reviever_id, index: true
      t.column :score, :integer

      t.timestamps
    end
  end
end
