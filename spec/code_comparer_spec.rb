require 'spec_helper'
require_relative '../code_comparer.rb'

describe CodeComparer do
  it 'determines the matching pegs in two codes' do
    secret = %w(blue green blue)
    guess = %w(yellow green blue)
    comparer = described_class.new(secret, guess)

    expect(comparer.match).to eq([false, true, true])
  end
end
