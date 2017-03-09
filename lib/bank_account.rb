require 'history'

class BankAccount
  attr_reader :balance, :history, :printer

  def initialize(balance=0, printer=Printer.new(history=History.new))
    @balance = balance
    @printer = printer
    @history = history
  end

  def credit(amount)
    @history.record.push(datestamp, stringify(amount), "", @balance)
    @balance += amount
  end

  def debit(amount)
    @history.record.push(datestamp, "", stringify(amount), @balance)
    @balance -= amount
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