require_relative 'rails_helper'
require_relative 'spec_helper'
# require './app/controllers/application_controller.rb'
# require './app/controllers/users_controller.rb'


RSpec.describe UsersController, :type => :controller do

  before do
    user = FactoryBot.create(:user)
    allow(controller).to receive(:authenticate_user!).and_return(true)
    allow(controller).to receive(:current_user).and_return(user)
  end

  before(:each) do
    activate_authlogic
  end
    @user = create(:user, first_name: "Nate", last_name: "Shoop", fav_color: "Blue", email: "shoop@gmail.com")

   describe "PUT #update" do


     it "is valid with valid attributes" do
        expect(@user).to be_valid
      end

    it "validates new attributes" do
      it "assigns new attributes from user input" do
        put :update, id: @user, user: Factory.attributes_for(:user)
        assigns(:user).should eq(@user)
      end
      it "saves new user information to user attributes" do
        put :update, id: @user, user: Factory.attributes_for(:user, first_name: "Nicole", last_name: "Gasperini", fav_color: "Yellow", email: "gasperini@gmail.com")
        @user.reload
        @user.first_name.to_eq("Nicole")
        @user.last_name.to_eq("Gasperini")
        @user.fav_color.to_eq("Yellow")
        @user.email.to_eq("gasperini@gmail.com")
      end
      it "rendirects to root page" do
        put :update, id: @user, user: Factory.attributes_for(:user)
        response.should redirect_to @user
      end
    end

  end
end