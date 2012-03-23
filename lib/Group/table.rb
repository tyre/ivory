require "./group.rb"
require "enumerable"

class Table < Group
  include Enumerable

  def initialize
    rows = [[]]
  end

  def columns
    @columns = rows.max_by { |row| row.count }
  end

  def each
    rows.each do |row|
      row.each do |cell|
        yield cell
      end
    end
  end

  def each_row
    rows.each { |row| yield row }
  end

  def each_column
    (0...columns)
    column = rows.collect do |row|
      row[column]
    end
    yield column
  end

end