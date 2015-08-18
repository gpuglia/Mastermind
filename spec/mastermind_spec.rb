require 'spec_helper'
require_relative '../mastermind.rb'

describe Mastermind do
  context 'playing a game' do
    it 'chooses a random code' do
      expect_any_instance_of(Code).to receive(:random).and_call_original
      mastermind = described_class.new

      expect(mastermind.code.class).to eq(Code)
    end

    it 'gets the users input' do
      mastermind = described_class.new
      expect(mastermind).to receive_message_chain(:gets, :chomp, :split)

      mastermind.play!
    end

    it 'ends when the code has been guessed' do
      mastermind = described_class.new
      allow(mastermind).to receive(:code).and_return(%w(blue red))
      expect(mastermind).to receive(:user_move).and_return(%w(green orange), %w(blue red))

      expect(mastermind.play!).to eq(true)
    end


  end

end
