# Имеет начальную и конечную станцию, а также список промежуточных станций. 
# Начальная и конечная станции указываютсся при создании маршрута, а промежуточные могут добавляться между ними.
# Может добавлять промежуточную станцию в список
# Может удалять промежуточную станцию из списка
# Может выводить список всех станций по-порядку от начальной до конечной


class Route < Station
  def initialize(start_station,last_station)
    @stations = [start_station,last_station]
  end

  def add_station(station)
    @stations.insert(-2,station)
  end  

  def delete_station(station)
    @stations.delete(station)
  end  

  def look_station
    @stations.each do |station|
      puts station
    end  
  end

  def next_station(current)
    if current != @stations.last
      @stations.at(@stations.index(current) + 1)
    end
  end
  
  def prev_station(current)
    if current != @stations.first
      @stations.at(@stations.index(current) - 1)
    end
  end  

   def station
     puts @stations
  end  
  
end