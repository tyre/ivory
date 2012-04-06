require "../Content/label"
require "../Content/textbox"

class Input < Group
  TYPES = [ "button","checkbox","file","hidden","image","password",
            "radio","reset","submit","text"]


  defaults type: "text", label: "", inputs: [], read_only: false
  attr_accessor :checked, :disabled, :name, :src, :maxlength, :size, :value

  def initialize(attributes = {})
    super
  end

  def validate_checked(checked)
    if checked && type != "radio" && type != "checkbox"
      raise ArgumentError, "checked only valid for radio or checkbox input"
    end
    checked
  end

  def validate_type(type)
    unless TYPES.include?(type) raise ArgumentError, "type must be #{TYPES}"
  end
end