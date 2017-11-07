class AddCohortToGroups < ActiveRecord::Migration[5.1]
  def change
    add_reference :groups, :cohort, foreign_key: true
  end
end
