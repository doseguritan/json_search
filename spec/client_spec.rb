require 'rspec'
require_relative '../helper'

describe 'Search JSON Partial' do
  let(:sample_data) do
    [
      { "name" => "Alice", "age" => 25 },
      { "name" => "Bob", "age" => 30 },
      { "name" => "Charlie", "age" => 35 }
    ]
  end

  it 'returns matching results' do
    result = search_json_partial(sample_data, 'name', 'Alice')
    expect(result).to eq([{ "name" => "Alice", "age" => 25 }])
  end

  it 'returns an empty array if no match is found' do
    result = search_json_partial(sample_data, 'name', 'David')
    expect(result).to eq([])
  end

  it 'returns all records that contain the value' do
    result = search_json_partial(sample_data, 'name', 'A')
    expect(result).to eq([{ "name" => "Alice", "age" => 25 }, { "name" => "Charlie", "age" => 35 }])
  end
end