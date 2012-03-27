require "./group.rb"
require "awesome_print"

class Table < Group
  include Enumerable

  attr_accessor :row_header, :column_header
  attr_reader :rows

  def initialize
    @rows = [["frat"]]
  end

  def columns_count 
    ordered = rows.max_by { |row| row.size }
    ap ordered
    @columns_count = ordered.first.size
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
 #####################################################################
  
  def to_html
    html = "<tr>"
    each_row do |row|
      row.each do |cell|
        html+= cell.respond_to? to_html ? cell.to_html : cell.to_s
      end
    end
  end

  def to_s 
    string = horizontal_line
    each_row do |row|
      row.each do |cell|
        string += "| " + cell.inspect + " |"
        string += horizontal_line
      end
    end
    string
  end

  def horizontal_line
    horizontal = "____"
    columns_count.times { horizontal += "__"}
    horizontal+="\n"
  end

end