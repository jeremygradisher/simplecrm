json.array!(@project_contracts) do |project_contract|
  json.extract! project_contract, :id, :project_id, :contract
  json.url project_contract_url(project_contract, format: :json)
end
