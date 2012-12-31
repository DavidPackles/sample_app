# to run test on static pages use command 
# $ bundle exec rspec spec/requests/static_pages_spec.rb
# to run tests with spork
# start the spork server in another terminal window with 
# $ bundle exec spork
# then! run your test
# $ bundle exec rspec spec/requests/static_pages_spec.rb 

require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_selector('h1',        text: 'Sample App') }
    it { should have_selector('title',     text: full_title('')) }
    it { should_not have_selector 'title', text: '| Home' }
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_selector('h1',    text: 'Help') }
    it { should have_selector('title', text: full_title('Help')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_selector('h1',    text: 'About') }
    it { should have_selector('title', text: full_title('About Us')) }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_selector('h1',    text: 'Contact') }
    it { should have_selector('title', text: full_title('Contact')) }
  end
  
end
