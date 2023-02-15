class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :project_status
      t.string :primary_street
      t.string :primary_city
      t.string :primary_state
      t.string :primary_zip
      t.string :client_name
      t.string :client_contact
      t.string :client_meeting
      t.text :client_proposal
      t.string :project_start
      t.string :project_finish
      t.string :billing_street
      t.string :billing_city
      t.string :billing_state
      t.string :billing_zip
      t.text :brief_description
      t.text :staffing_notes
      t.string :deal_terms
      t.string :rate
      t.text :additional_terms
      t.text :doc_links

      t.timestamps null: false
    end
  end
end
