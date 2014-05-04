require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Sample App') }
    it { should have_title(full_title('')) }
    it { should_not have_title(' Pirmas') }
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_content('Pagalba') }
    it { should have_title(full_title('Pagalba')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('Apie') }
    it { should have_title(full_title('Apie')) }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_content('Kontaktai') }
    it { should have_title(full_title('Kontaktai')) }
  end

  describe "Susisiekite" do
    before { visit susisiekite_path }

    it { should have_content('Susisiekite') }
    it { should have_title(full_title('Susisiekite')) }
  end
end