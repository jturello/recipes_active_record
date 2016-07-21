require('spec_helper')

describe('recipes') do

  describe('app homepage', {:type => :feature}) do
    it('displays the homepage') do
      visit('/')
      expect(page).to have_content('Recipe List')
    end

    it('contains no recipes before any are saved') do
      visit('/')
      expect(page).not_to have_content 'Click a link to view recipe details'
    end

    it('displays an Add Recipe link') do
      visit('/')
      expect(page).to have_content 'Add a Recipe'
    end

    it('displays Add Recipe Page when Add Recipe link is clicked') do
      visit('/')
      click_link('Add a Recipe')
      expect(page).to have_content('Add Recipe Page')
    end

    it('displays recipes that have been saved') do
      visit('/')
      click_link('Add a Recipe')
      fill_in('recipe', :with => 'Eggs Benedict')
      click_button('Add')
      expect(page).to have_content('Eggs Benedict')
    end
  end

  describe('Add Recipe Page', {:type => :feature}) do

    it("let's user add a recipe") do
      visit('/recipes/new')
      fill_in('recipe', :with => 'Eggs Benedict')
      click_button('Add')
      expect(page).to have_content('Eggs Benedict')
    end

    it('displays homepage when home link is clicked') do
      visit('/recipes/new')
      click_link('home')
      expect(page).to have_css('h1', 'Recipe List')
    end

  end

end
