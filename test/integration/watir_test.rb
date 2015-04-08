require 'rails_helper'
require 'selenium-webdriver'
require 'watir'

RSpec.describe "UserProjects", :type => :request do
  describe "Watir" do
    it "should log in and create a project" do
      browser = Watir::Browser.new
      browser.goto("http://localhost:3000")
      expect(browser.title).to eq('ProjectLabsSpring2015')
      browser.link(text: "Account").click
      browser.link(text: "Sign in").click
      browser.text-field(id: "user_email").set("example@projectman.net")
      browser.text-field(id: "user_password").set("password")
      browser.form(id: "new_user").submit
      assert browser.text.include? 'Signed in successfully.'
      browser.link
    end
  end
end
