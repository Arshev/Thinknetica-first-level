module Validation

  def self.included(base)
    base.extend ClassMethods
    base.send :include, InstanceMethods
    base.class_variable_set(:@@validations, {})
  end

  module ClassMethods
    def validate(attribute, *args)
      class_variable_get(:@@validations)[attribute] = *args
    end
  end

  def valid?
    validate!
  rescue
    false
  end

  module InstanceMethods
    protected

    def validate!
      self.class.class_variable_get(:@@validations).each do |validation, args|
        value = instance_variable_get("@#{validation}")
        send("validate_#{args[0]}", value, *args[1, args.size])
      end
      true
    end

    def presence(value)
      raise 'Attribute can not be empty' if value.nil?
    end

    def format(value, format)
      raise 'Error format' if value !~ format
    end

    def type(value, type)
      raise 'Error type' if value != type
    end
  end

end