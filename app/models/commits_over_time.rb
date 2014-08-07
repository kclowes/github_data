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

  def only_print_numbers
    graph_data.map do |array|
      array.last
    end
  end
end