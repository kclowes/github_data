class CommitsOverTime

  def initialize(data)
    @data = data
  end

  def graph_data
    result = []
    @data.each do |data_point|
      if result.nil? || result.last.nil?
        result << [data_point[0], data_point[2]]
      elsif data_point[0] == result.last.first
        result << [data_point[0], data_point[2] += result.last.last]
      else
        result << [data_point[0], data_point[2]]
      end
    end
    result.to_h.to_a
  end

  def day_conversion
    graph_data.each do |data_point|
      if data_point.first == 0
        data_point[0] = 'Sunday'
      elsif data_point.first == 1
        data_point[0] = 'Monday'
      elsif data_point.first == 1
        data_point[0] = 'Tuesday'
      elsif data_point.first == 1
        data_point[0] = 'Wednesday'
      elsif data_point.first == 1
        data_point[0] = 'Thursday'
      elsif data_point.first == 1
        data_point[0] = 'Friday'
      elsif data_point.first == 1
        data_point[0] = 'Saturday'
      end
    end

  end

end