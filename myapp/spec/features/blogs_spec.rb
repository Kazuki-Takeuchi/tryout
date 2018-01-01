require 'rails_helper'

feature 'Blog管理'do
  scenario 'Blogの新規作成時にtitleを入力しなかった場合にエラーが表示されること' do
    visit blogs_path
    click_link 'New Blog'
    expect {
      click_button 'Save'
    }.not_to change(Blog, :count)
    expect(current_path).to eq blogs_path
    expect(page).to have_content "Title can't be blank"
  end

  scenario 'Blogの新規作成時にtitleを入力した場合はデータが保存され閲覧画面に遷移すること' do
    visit blogs_path
    click_link 'New Blog'
    fill_in 'Title', with: 'title'
    expect {
      click_button 'Save'
    }.to change(Blog, :count).by(1)

    last_blog = Blog.last
    expect(current_path).to eq blog_path(last_blog)
    expect(page).to have_content 'Blog was successfully created.'
  end
end
