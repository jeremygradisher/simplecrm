class CreateProjectContracts < ActiveRecord::Migration[5.0]
  def change
    create_table :project_contracts do |t|
      t.integer :project_id
      t.string :contract

      t.timestamps null: false
    end
  end
end
