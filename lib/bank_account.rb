require_relative './history'
require_relative './printer'

class BankAccount
  attr_reader :balance, :printer

  def initialize(balance=0, printer=Printer.new)
    @balance = balance
    @printer = printer
  end

  def credit(amount)
    @balance += amount
    @printer.history.record.push(datestamp, stringify(amount), "", stringify(@balance))
    
  end

  def debit(amount)
    @balance -= amount
    @printer.history.record.push(datestamp, "", stringify(amount), stringify(@balance))
  end

  def display
    @printer.display
  end

  private

  def datestamp
    Time.now.strftime("%d/%m/%Y")
  end

  def stringify(amount)
    '%.2f' % amount
  end

end