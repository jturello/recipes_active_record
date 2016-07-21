require('spec_helper')

describe('recipe app') do

  describe('homepage',{:type => :feature}) do
    it('displays the homepage') do
      visit('/')
      expect(page).to have_content('Recipe List')
    end

    it('contains no recipes before any are saved') do
      visit('/')
      expect(page).not_to have_content 'Click a link to view the recipe'
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
      # visit('/')

    end
  end
end
