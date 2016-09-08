# метод  
# attr_accessor_with_history
#  Этот метод динамически создает геттеры и сеттеры для любого кол-ва атрибутов, 
#  при этом сеттер сохраняет все значения инстанс-переменной при изменении этого значения. 
# Также в класс, в который подключается модуль должен добавляться инстанс-метод
 
# <имя_атрибута>_history
#   который возвращает массив всех значений данной переменной.

# метод 
 
# strong_attr_acessor
 
#  который принимает имя атрибута и его класс. При этом создается 
#  геттер и сеттер для одноименной инстанс-переменной, но сеттер проверяет тип присваемоего значения. 
#  Если тип отличается от того, который указан вторым параметром, то выбрасывается исключение. 
#  Если тип совпадает, то значение присваивается.



module Accessors
  def self.included(base)
    base.extend ClassMethods
  end
  
  def attr_accessor_with_history(*attributes)
    attributes.each do |attribute|
        attribute_name = "@#{attribute}".to_sym
        define_method(attribute.to_sym) { instance_variable_get(attribute_name) }
        define_method("#{attribute}=".to_sym) do |value|
          instance_variable_set(attribute_name, value)
          if @history[attribute_name]
            @history[attribute_name] << value
          else
            @history[attribute_name] = [value]
          end
        end
        define_method("#{attribute}_history") { instance_variable_get @history[attribute_name] }
      end
  end
  
  def strong_attr_accessor(attribute_name, attribute_class)
    var_name = "@#{attribute_name}".to_sym
    define_method(attribute_name) { instance_variable_get(var_name) }
    define_method("@#{attribute_name}".to_sym) do |attribute|
      raise TypeError unless attribute.is_a?(attribute_class)
      instance_variable_set(var_name, attribute_class)
    end
  end

end