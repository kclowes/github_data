require 'rails_helper'
require 'webmock/rspec'

feature 'welcome page' do
  scenario 'user can see an array from the API' do
    VCR.use_cassette('ruby_commits') do

      visit root_path

      expect(page).to have_content('[[0, 0, 131]')
    end
  end
end