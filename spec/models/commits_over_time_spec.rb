require 'spec_helper'
require_relative '../../app/models/commits_over_time'

describe CommitsOverTime do

  it "returns data suitable for a flot graph" do
    github_data = [[0, 0, 3], [0, 1, 2], [1, 0, 1]]
    commits_over_time = CommitsOverTime.new(github_data)

    expected_output = [[0, 5], [1, 1]]
    expect(commits_over_time.graph_data).to eq(expected_output)
  end

  it "changes the day number into a string" do
    github_data = [[0, 0, 3], [0, 1, 2], [1, 0, 1]]
    commits_over_time = CommitsOverTime.new(github_data)

    expected_output = [['Sunday', 5], ['Monday', 1]]
    expect(commits_over_time.day_conversion).to eq(expected_output)
  end
end