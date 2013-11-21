require "spec_helper"

describe PostsController do
  describe "GET index" do
    let! (:posts) {5.times map{ |index| Post.create(content: "post #{index}")} }

    it 'should instantiate @top_posts and @latest_posts with top 5 and latest 5 posts' do
      get :index
      expect(assigns[:posts]).to eq(posts)
    end
  end
end