require 'spec_helper'
require_relative '../code.rb'

describe Code do
  it 'can be initialized manually' do
    code = described_class.new(pegs: %w(blue red))

    expect(code).to eq(%w(blue red))
  end

  it 'can be randomized' do
    stub_const("Code::PEGS", %w(green blue))
    random_code = described_class.new(length: 2).random

    expect([%w(green green), %w(green blue), %w(blue green), %w(blue blue)]).to include(random_code)
  end
end
