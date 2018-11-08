require 'rails_helper'

describe ProfilesController do

  describe '#update' do
    def do_request
      put :update, params: { user_name: user_name}
    end

    let!(:user) { create(:user) }

    before do
      sign_in user
    end

    it 'update profile' do
       expect(response).to be_success
    end
  end