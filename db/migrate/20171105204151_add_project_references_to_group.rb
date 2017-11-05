class AddProjectReferencesToGroup < ActiveRecord::Migration[5.1]
  def change
    add_reference :groups, :project, foreign_key: true
  end
end
