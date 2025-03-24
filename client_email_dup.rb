require_relative 'helper'

# params = fetch_params.merge!({key: 'email'}) # fetch default values or user values
params = { path: './clients.json', path_type: 'file', key: 'email', value: 'jane.smith@yahoo.com' }

if !params[:value] || !params[:key]
  puts "value or key is empty"
  exit
end

data = load_data(params[:path], params[:path_type])

results = search_json_equal(data, params[:key], params[:value])

# puts "Search key: #{params[:key] ? params[:key] : "any"}"
puts "Search value: #{params[:value]}"
puts "Search results: #{results}"