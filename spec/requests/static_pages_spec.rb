require 'spec_helper'

describe "Static pages" do
  let(:base_title) { 'X Twitter |' }

  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit root_path
      page.should have_content('X Twitter')
    end

    it "should have title 'X Twitter | Home'" do
      visit root_path
      page.should have_title("#{base_title} Home")
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit help_path
      page.should have_content('Help')
    end

    it "should have title 'X Twitter | Help'" do
      visit help_path
      page.should have_title("#{base_title} Help")
    end
  end

  describe "About page" do
    it "should have the content 'About Us'" do
      visit about_path
      page.should have_content('About Us')
    end

    it "should have title 'X Twitter | About Us'" do
      visit about_path
      page.should have_title("#{base_title} About Us")
    end
  end

  describe "Contact page" do
    it "should have the content 'About Us'" do
      visit contact_path
      page.should have_content('Contact')
    end

    it "should have title 'X Twitter | Contact'" do
      visit contact_path
      page.should have_title("#{base_title} Contact")
    end
  end

end
