require 'rails_helper'

describe BlogsController, type: :request do
  before do
    require Rails.root.join("db", "seeds")
  end
  after(:all) do
    DatabaseRewinder.clean_all
  end

  describe 'GET #index' do
    it "@blogsに全てのBlogが入っていること" do
      expect_blogs = Blog.all
      get blogs_url
      expect(response).to be_success
      expect(assigns[:blogs].count).to eq 3
      expect(assigns[:blogs]).to eq expect_blogs
    end
  end

  describe 'POST #create' do
    it "新規作成後に@blogのshowに遷移すること" do
      post '/blogs', params: {blog: {title: 'test_title'}}
      expect(response).to redirect_to blog_path(assigns[:blog])
    end
  end
end
