require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end

    it "should have title 'X Twitter | Home'" do
      visit '/static_pages/home'
      page.should have_title('X Twitter | Home')
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end

    it "should have title 'X Twitter | Help'" do
      visit '/static_pages/help'
      page.should have_title('X Twitter | Help')
    end
  end

  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end

    it "should have title 'X Twitter | About'" do
      visit '/static_pages/about'
      page.should have_title('X Twitter | About')
    end
  end
end
