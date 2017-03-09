require 'spec_helper'
require_relative '../lib/bank_account'

describe BankAccount do
  subject(:acc) { described_class.new }
  
  describe 'initialise with balance' do
    it 'will find attribute balance' do
      expect(acc.balance).to eq 0
    end
  end

  describe 'credit with amount' do
    it 'will add amount to balance' do
      acc.credit(5.50)
      expect(acc.balance).to eq 5.50
    end
  end

    describe 'debit with amount' do
    it 'will remove amount from balance' do
      acc.credit(5.00)
      acc.debit(3.50)
      expect(acc.balance).to eq 1.50
      end
    end

    describe 'record is inserted' do
      it 'will show the record' do
        acc.credit(5.00)
        expect(acc.display).to include "5.00"
      end
    end

      describe 'printer' do
      it 'will print the record' do
        acc.credit(5.00)
        expect(acc.display).to include "5.00"
      end
    end

end
