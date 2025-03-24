require 'json'

def load_data(path = "./clients.json", path_type = "file")
  return JSON.parse(File.read(path)) if path_type == "file"
  # use http here to fetch api.
end

# search json via key and value
def search_json_partial(data, key, value)
  return [] if data.empty?
  
  if key
    data.select { |item| item[key]&.to_s&.downcase&.include?(value.downcase) }
  else
    data.select { |item| item.values.any? { |v| v.to_s.downcase.include?(value.downcase) } }
  end
end

def search_json_equal(data, key, value)
  data.select{ |item| item[key].to_s.downcase == value.downcase }
end

def fetch_params(keys=%i[path key value path_type])
  params = { path: './clients.json', path_type: 'file', key: '', value: '' }
  ARGV.each do |arg|
    key, value = arg.split('=')
    params[key.to_sym] = value if keys.include?(key.to_sym)
  end
  params
end