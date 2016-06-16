class CreateProjectContracts < ActiveRecord::Migration
  def change
    create_table :project_contracts do |t|
      t.integer :project_id
      t.string :contract

      t.timestamps null: false
    end
  end
end
