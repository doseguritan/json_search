require_relative 'helper'

# params = fetch_params # fetch default values or user values

params = { path: './clients.json', path_type: 'file', key: 'full_name', value: 'jane' }

if !params[:value] || !params[:key]
  puts "value or key is empty"
  exit
end
data = load_data(params[:path], params[:path_type])

results = search_json_partial(data, params[:key], params[:value])

puts "Search key: #{params[:key] ? params[:key] : "any"}"
puts "Search value: #{params[:value]}"
puts "Search results: #{results}"