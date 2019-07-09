require 'rails_helper'

RSpec.describe 'As a user' do
  describe 'when I visit root_path' do
    scenario 'I can search for gifs and see results' do
      visit root_path

      fill_in 'q', with: 'tiger'

      click_button 'Search'

      expect(current_url).to have_content('q=tiger')
      expect(current_path).to eq('/search')

      expect(page).to have_css('.gif_id', count: 5)

      expect(page).to have_css('.gif_id')
      expect(page).to have_css('.gif_url')
      expect(page).to have_css('.gif')
    end
  end

  # As a user
  # When I visit "/"
  # And I enter "tiger" in the search box
  # and I click "Search"
  # Then my path should be /search with "q=tiger" in the parameters
  # And I should see "5 Results"
  # And I should see an id, a url, and the gif.
end
