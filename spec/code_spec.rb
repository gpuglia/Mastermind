require 'spec_helper'
require_relative '../code.rb'

describe Code do
  it 'can be represented as an array' do
    code = described_class.new(2)

    expect(code.to_a.class).to eq(Array)
  end

  it 'has variable length' do
    [1,2].each do |length|
      code = Code.new(length)

      expect(code.to_a.size).to eq(length)
    end
  end
end
