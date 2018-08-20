require_relative 'rails_helper'
require_relative 'spec_helper'

# require './app/controllers/application_controller.rb'
# require './app/controllers/users_controller.rb'


RSpec.describe UsersController, :type => :controller do

  describe "logs user in to the right page after logging in" do
     let(:valid_user) { User.create(first_name: "Nicole", last_name: "Gasperini", fav_color: "Yellow", email: "gasperini@gmail.com", password: "123456") }
    let (:other_users) { FactoryBot.create_list(:user, 10)}
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:valid_user]
      sign_in valid_user
    end

    it "should have a current_user" do
      expect(subject.current_user).to_not eq(nil)
    end

    it "should have index" do
      get 'index'
      response.should be_success
    end

     it "populates a list of users" do

      get :index
      expect(other_users).to be_an_instance_of(Array)
    end
 end

end