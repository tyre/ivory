#Attributed to Chad "Endbringer" Fowler.

class Class
  def attr_with_default(attr_name, default_value)
    attr_writer attr_name
    define_method(attr_name) do
      instance_variable_get("@#{attr_name}") || default_value
    end
  end

  def defaults(hash)
    hash.each do |attribute_name, default_value|
      define_method(attribute_name) do
        instance_variable_get("@#{attribute_name}") || instance_variable_set("@#{attribute_name}", default_value)
      end
    end
  end
end