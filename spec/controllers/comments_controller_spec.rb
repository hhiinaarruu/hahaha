require 'rails_helper'

describe CommentsController do
   describe '#index' do
     def do_request(post)
       get :index, params: { post_id: post.id }
     end

     let!(:user)  { create(:user) }
     let!(:post) { create(:post) }
     let!(:comments) { create_list(:comment, 5, post: post) }

     before do
       sign_in user
     end

     it 'assigns a comment' do
       do_request(post)
       expect(assigns(:comments)).to match_array(comments)
       expect(response).to render_template :index
     end
   end

    describe '#create' do
      def do_request
        post :create, params: { post_id: my_post.id, comment: my_comment_params }
      end

      let!(:user) { create(:user) }
      let!(:my_post) { create(:post) }
      let!(:my_comment_params) { attributes_for(:comment, content: 'new comment', post: my_post, user: user) }

      before do
        sign_in user
      end

      it 'create new post' do
        expect{ do_request }.to change { Comment.count }.from(0).to(1)
      end
    end
  
   describe '#destroy' do
     def do_request
       delete :destroy, params: { post_id: my1_post.id, id: params }
     end

    let!(:user) { create(:user) }
    let!(:post) { create(:post) }
    let!(:my1_comment_params) { attributes_for(:comment, content: 'new comment', post: my1_post, user: user, id: params) }

     before do
       sign_in user
     end

      it 'destroy a post' do
        do_request
        expect{ do_request }.to change { Comment.count }.from(1).to(0)
      end
   end
end
