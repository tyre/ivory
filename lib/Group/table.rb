require "./group.rb"

class Table < Group
  include Enumerable

  attr_accessor :row_header, :column_header
  attr_reader :rows

  def initialize(attributes={})
    @rows = [[]]
    super
  end

  def columns_count 
    ordered = rows.max_by { |row| row.size }
    @columns_count = ordered
  end

  def each
    self.rows.each do |row|
      self.row.each do |cell|
        yield cell
      end
    end
  end

  def each_row
    self.rows.each { |row| yield row }
  end

  def each_column
    (0...columns_count)
    column = self.rows.collect do |row|
      row
    end
    yield column
  end
  
  def to_html
    html = "<table>"
    each_row do |row|
      html += "<tr>"
      row.each do |cell|
        cell_html= cell.respond_to?(:to_html) ? cell.to_html : cell.to_s
        html += "<td>#{cell_html}</td>"
      end
      html += "</tr>"
    end
    html += "</table>"
  end

end