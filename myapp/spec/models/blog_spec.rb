require 'rails_helper'
require './app/models/application_record'
require './app/models/blog'

describe Blog do
  it "titleがあれば有効な状態であること" do
    blog = Blog.new
    blog.title = 'title'
    expect(true).to eq blog.valid?
  end
  it "titleがなければ無効な状態であること" do
    blog = Blog.new
    blog.title = ''
    expect(false).to eq blog.valid?
  end
end
