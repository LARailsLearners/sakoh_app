require 'rails_helper'
require 'support/controller_helpers'

RSpec.describe Home::UsersController, type: :controller do

  let(:user) { create(:user) }

  describe "GET #index" do
    it "access without authorization" do
      sign_in nil
      get :index
      expect(response).to redirect_to(new_user_session_path)
    end

    it "access with authorization" do
      sign_in user
      get :index
      expect(assigns(:users)).to eq([user])
    end
  end

  describe "GET #show" do
    it "access without authorization" do
      sign_in nil
      get :show, {id: user.id}
      expect(response).to redirect_to(new_user_session_path)
    end

    it "access with authorization" do
      sign_in user
      get :show, {id: user.id}
      expect(assigns(:user)).to eq(user)
    end

  end

end
