json.array!(@projects) do |project|
  json.extract! project, :id, :name, :project_status, :primary_street, :primary_city, :primary_state, :primary_zip, :client_name, :client_contact, :client_meeting, :client_proposal, :project_start, :project_finish, :billing_street, :billing_city, :billing_state, :billing_zip, :brief_description, :staffing_notes, :deal_terms, :rate, :additional_terms, :doc_links
  json.url project_url(project, format: :json)
end
