class Color
  class << self
    attr_accessor :valid_colors

    def load_colors
      return valid_colors if valid_colors

      self.valid_colors = [ ]
      File.open("./colorsparsed.txt").each do |line|
        self.valid_colors << line.to_s.strip
      end
    end

    def clean_hex(color)
      color = color.gsub('#','').upcase
      if color.length == 3
        color = color[0]*2+color[1]*2+color[2]*2
      end
      '#' + color
    end

    def is_hex(color)
      color.scan(/^#[a-fA-F0-9]+/).any?
    end

    def is_valid?(color)
      load_colors
      color = clean_hex(color) if is_hex(color)
      valid_colors.include?(color.to_s.upcase)
    end
  end
end