require 'rspec'
require_relative '../helper'

describe 'Search JSON Equal' do
  let(:sample_data) do
    [
      { "name" => "Alice", "email" => "alice@gmail.com" },
      { "name" => "Bob", "email" => "bob@yahoo.com" },
      { "name" => "Charlie", "email" => "charles@hotmail.com" }
    ]
  end

  it 'returns matching results' do
    result = search_json_equal(sample_data, 'email', 'alice@gmail.com')
    expect(result).to eq([{ "name" => "Alice", "email" => "alice@gmail.com" }])
  end

  it 'returns an empty array if no match is found' do
    result = search_json_partial(sample_data, 'email', 'david@ggma.com')
    expect(result).to eq([])
  end
end