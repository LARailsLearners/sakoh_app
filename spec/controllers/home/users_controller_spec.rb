require 'rails_helper'
require 'support/controller_helpers'

RSpec.describe Home::UsersController, type: :controller do

  let(:user) { create(:user) }

  describe "GET #index" do

    it "tries to assign the requested user as @users" do
      get :index
      expect(assigns(:users)).to eq([user])
    end
  end

  describe "GET #show" do

    it "access with authorization" do
      get :show, {id: user.id}
      expect(assigns(:user)).to eq(user)
    end

  end

end
