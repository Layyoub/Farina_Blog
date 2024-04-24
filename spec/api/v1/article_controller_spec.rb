require 'rails_helper'
require 'capybara/rspec'
RSpec.describe "Farina", type: :system do
    it "creates a new wand" do
        visit new_article_path
        fill_in "Title", with: "sberka"
        sleep(1)
        fill_in "Body", with: " Un world dissolve."
        sleep(1)
        select "public", from: "Status"
        sleep(1)
        click_button "Submit"
        expect(page).to have_content ''
    end
    it "updates the notebook article" do
        article = create(:article)
        sleep(1)
        visit edit_article_path(article)
        fill_in "Title", with: "sberrka"
        fill_in "Body", with: " nlhyn"
        select "public", from: "Status"
        sleep(1)
        click_button "Update Article"
        sleep(1)
        expect(page).to have_content ''
    end
   
    it "Delete the article" do
        article = create(:article)
        sleep(1)
        visit article_path(article)
        sleep(1)
        find('a', text: 'DELETE').click
      end
     
    it "Create new comment " do
        article = create(:article)
        sleep(1)
        visit article_path(article)
        fill_in "Commenter", with: "Wanderlust Words"
        fill_in "Body", with: " suuuuuuu."
        sleep(1)
        select "public", from: "Status"
        sleep(1)
        click_button "Add Comment"
        sleep(1)
        expect(page).to have_content ''
    end
    it " Delete comment " do
        article = create(:article)
        sleep(1)
        visit article_path(article)
        fill_in "Commenter", with: "Wanderlust Words"
        fill_in "Body", with: " aaaaaaa."
        sleep(1)
        select "public", from: "Status"
        sleep(1)
        click_button "Add Comment"
        sleep(1)
        find('a', text: 'DELETE COMMENT').click
      end
end







