require 'spec_helper'
require_relative '../../lib/bank_account'
require_relative '../../lib/history'
require_relative '../../lib/printer'

RSpec.describe "Bank account functionality" do
  describe 'Bank account to be display' do
    let(:acc){BankAccount.new}
      it 'with a withdrawal and deposit' do
        acc.credit(5000)
        acc.debit(2000)
        expect(acc.display).to include '5000.00'
        expect(acc.display).to include '2000.00'
        expect(acc.display).to include '3000.00'
      end
    end
end
