require 'rails_helper'

RSpec.describe 'new household ', type: :feature do
    scenario 'success' do
        visit households_path
        # expect(page).to have_content('David')
        click_on 'New Household'
        sleep (5)
        fill_in 'household[first]', with: 'Goose'
        fill_in 'household[last]', with: 'loose'
        fill_in 'household[UIN]', with: '32568796'
        fill_in 'household[family]', with: 'pond'
        fill_in 'household[email]', with: 'Goose@gmail.com'
        fill_in 'household[phonenumber]', with: '9657483278'
        fill_in 'household[classification]', with: 'U4'
        fill_in 'household[major]', with: 'CECN'
        click_on 'Create Household'
        sleep (5)
        expect(page).to have_content('Goose')
        click_on 'Back'
        sleep (5)
        expect(page).to have_content('Goose')

    end
end
