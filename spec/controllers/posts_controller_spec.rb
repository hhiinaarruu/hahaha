require 'rails_helper'

describe PostsController do

  describe '#index' do
    def do_request
      get :index
    end

    let!(:user)  { create(:user) }
    let!(:posts) { create_list(:post, 5) }

    # let!(:me) { create(:user, user_name: 'bentran') }
    # let!(:my_post) { create(:post, caption: 'Ben Post', user: me) }
    # let!(:my_comment) { create(:comment, user: me, post: my_post) }

    before do
      sign_in user
    end

    it 'should return posts data' do
      do_request

      expect(assigns(:posts).size).to eq 5
      expect(response).to render_template :index
    end
  end

  describe '#new' do
    def do_request
      get :new
    end

    let!(:user) { create(:user) }

    before do
      sign_in user
    end

    it 'assigns new user' do
      do_request

      expect(response).to render_template :new    
    end
  end

  describe '#create' do
    def do_request
      post :create, params: { post: post_params }
    end

    let!(:user) { create(:user) }
    let!(:post_params) { attributes_for(:post, caption: 'new post') }
 
    before do
      sign_in user
    end

    it 'create new post' do
      expect{ do_request }.to change { Post.count }.from(0).to(1)
      expect(response.status).to eq(302)
    end
  end

  describe '#show' do
    def do_request
      get :show, params: { id: field.id }
    end

    let!(:user) { create(:user) }
    let!(:posts) { create_list(:post, 5) }
    let!(:me) { create(:user, user_name: 'hinarruu') }
    let!(:my_post) { create(:post, caption: 'olala', user: me) }

    before do
      sign_in user
    end

    it 'show new post' do
      expect(response.status).to eq(200)
    end
  end
  
  describe '#update' do
    def do_request
      put :update, params: { id: post.id, post: params }
    end

    let!(:user) { create(:user) }
    let!(:post) { create(:post) }

    before do
      sign_in user
    end

    it 'update post' do
       expect(response).to be_success
    end
  end

  describe '#destroy' do
    def do_request
      delete :destroy
    end

    let!(:user) { create(:user) }
    let!(:post) { create(:post) }

    before :each do
      sign_in user
    end

    it 'delete post' do
      expect(response.status).to eq(200)
    end
  end

end