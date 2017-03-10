require_relative './history'

class Printer
  attr_reader :history
  def initialize(history = History.new)
    @history = history
  end

  def display
    puts " date || credit || debit || balance ||" + "\n"
    @history.record.each{|x| print x + " || ";}   
  end
end
