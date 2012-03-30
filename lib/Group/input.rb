require "../Content/label"
require "../Content/textbox"

class Input < Group
  TYPES = [ "button","checkbox","file","hidden","image","password",
            "radio","reset","submit","text"]

  attr_accessor :label, :inputs, :type, :checked, :disabled, :name,
                :read_only, :src, :maxlength, :size, :value

  def initialize(type = "text", attributes = {label: "", inputs: []})
    attributes.each do |key, value|
      value = send("validate_#{key}", value) if respond_to("validate_#{key}")
      self.send("#{key}=", value)
    end
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