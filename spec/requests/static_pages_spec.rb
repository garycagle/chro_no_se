require 'spec_helper'
describe "static_pages" do

	describe "Home page" do
	    it "should have the content 'Home'" do
	      visit '/static_pages/home'
	      page.should have_content('Home')
	    end
	    it "should have the title 'ChroNoSe | Home'" do
      		visit '/static_pages/home'
      		page.should have_selector('title',
                   :text => "ChroNoSe | Home")
    	end
	end

	describe "Help page" do
	    it "should have the content 'Help'" do
	      visit '/static_pages/help'
	      page.should have_content('Help')
	    end
	end

	describe "About page" do
	    it "should have the content 'About'" do
	      visit '/static_pages/about'
	      page.should have_content('About')
	    end
	end

end
