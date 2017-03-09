require 'spec_helper'
require_relative '../lib/printer'
require_relative '../lib/history'

describe Printer do
  subject(:printer){described_class.new}

  describe 'printer functionality' do
    it 'can display history' do
      expect(printer.display).to eq []
    end 

  end
end