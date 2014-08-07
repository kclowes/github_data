require 'spec_helper'
require_relative '../../app/models/commits_over_time'

describe CommitsOverTime do

  it "prints an array of the number of commits" do
    data = [[0, 0, 3], [0, 1, 2], [1, 0, 1]]
    commits_over_time = CommitsOverTime.new(data)

    expected_output = [5, 1]
    expect(commits_over_time.only_print_numbers).to eq(expected_output)
  end

end