require 'spec_helper'
require_relative '../mastermind.rb'
# require_relative '../ai.rb'
#
describe Mastermind do
  context 'playing a game' do
    it 'chooses a random code' do
      expect_any_instance_of(Code).to receive(:random).and_call_original
      mastermind = described_class.new

      expect(mastermind.code.class).to eq(Code)
    end
  end
end
