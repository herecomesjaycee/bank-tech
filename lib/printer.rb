require 'history'

class Printer
  attr_reader :history
  def initialize(history = History.new)
    @history = history
  end

  def display
    @history.record
  end
end
