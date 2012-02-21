require 'spec_helper'

describe "Pages" do
	
	describe "Home page" do
		it "it should have the content 'Sample App'" do
			visit '/pages/home'
			page.should have_selector('h1',
				:text => 'Sample App')
		end
		
		it "should have the right title" do
			visit '/pages/home'
			page.should have_selector('title',
				:text => " | Home")
		end
	end
	
	describe "Contact page" do
		it "it should have the content 'Contact'" do
			visit '/pages/contact'
			page.should have_content('Contact')
		end
	end
	
	describe "About page" do
		it "it should have the content 'About Us'" do
			visit '/pages/about'
			page.should have_selector('h1',
				:text => 'About Us')
		end
		
		it "should have the right title" do
			visit '/pages/about'
			page.should have_selector('title',
				:text => " | About")
		end
	end
	
	describe "Help page" do
		it "it should have the content 'help'" do
			visit '/pages/help'
			page.should have_selector('h1', 
				:text => 'Help')
		end
		
		it "should have the right title" do
			visit '/pages/help'
			page.should have_selector('title',
				:text => " | Help")
		end
	end
end
