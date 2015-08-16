require 'spec_helper'
require_relative '../ai.rb'
require_relative '../code.rb'
require 'pry'

describe Ai do
  it 'has a code' do
    ai = described_class.new(6)

    expect(ai.code.class).to eq(Code)
  end

  it 'knows the match between a guess and the secret code' do
    ai = described_class.new(3)
    allow(ai).to receive(:code).and_return(%w(blue green orange))

    expect(ai.compare(%w(red green red))).to eq([false, true, false])
  end

end
