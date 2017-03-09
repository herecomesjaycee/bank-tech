require 'spec_helper'
require_relative '../lib/history'

describe History do
  subject(:history){described_class.new}

  describe 'initialisation' do
    it 'will have attribute record' do
      expect(history.record).to eq []
    end
  end
end
