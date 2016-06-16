class CreateProjectProposals < ActiveRecord::Migration
  def change
    create_table :project_proposals do |t|
      t.integer :project_id
      t.string :proposal

      t.timestamps null: false
    end
  end
end
