# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# coding: utf-8

Blog.create(:id => 1, :title => "ねこがすき！にゃんにゃんブログ")
Blog.create(:id => 2, :title => "いぬがすき！わんわんブログ")
Blog.create(:id => 3, :title => "つまがすき！いとうさんブログ")
Entry.create(:id => 1, :title => "はじめてのエントリー", :body => "はじめまして！", :blog_id => 1)
Entry.create(:id => 2, :title => "2番目のエントリー", :body => "おひさしぶりです！", :blog_id => 1)
Entry.create(:id => 3, :title => "3番目のエントリー", :body => "もうくじけました・・・", :blog_id => 3)
Comment.create(:id => 1, :body => "てすてす", :status => "approved", :entry_id => 1)
Comment.create(:id => 2, :body => "ねこはかわいいですよね", :status => "unapproved", :entry_id => 1)
Comment.create(:id => 3, :body => "例のねこについて", :status => "approved", :entry_id => 2)
Comment.create(:id => 4, :body => "こんにちはこんにちは！", :status => "approved", :entry_id => 3)
