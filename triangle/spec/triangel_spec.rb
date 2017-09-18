require 'spec_helper'
require File.expand_path(File.dirname(__FILE__) + '/../triangle')

describe '三角形の形を求める' do
  it '三角形でない' do
     expect(Triangle.triangle(['1,', '2,', '3'])).to eq '三角形じゃないです＞＜'
     expect(Triangle.triangle(['1,', '3,', '2'])).to eq '三角形じゃないです＞＜'
     expect(Triangle.triangle(['2,', '1,', '3'])).to eq '三角形じゃないです＞＜'
     expect(Triangle.triangle(['2,', '3,', '1'])).to eq '三角形じゃないです＞＜'
     expect(Triangle.triangle(['3,', '1,', '2'])).to eq '三角形じゃないです＞＜'
     expect(Triangle.triangle(['3,', '2,', '1'])).to eq '三角形じゃないです＞＜'
     expect(Triangle.triangle(['3,', '2,', '0'])).to eq '三角形じゃないです＞＜'
     expect(Triangle.triangle(['-3,', '-2', '-1'])).to eq '三角形じゃないです＞＜'
  end
  it '正三角形' do
     expect(Triangle.triangle(['1,', '1,', '1'])).to eq '正三角形ですね！'
  end
  it '二等辺三角形' do
     expect(Triangle.triangle(['2,', '2,', '1'])).to eq '二等辺三角形ですね！'
     expect(Triangle.triangle(['2,', '1,', '2'])).to eq '二等辺三角形ですね！'
     expect(Triangle.triangle(['1,', '2,', '2'])).to eq '二等辺三角形ですね！'
  end
  it '二等辺三角形 境界値' do
     expect(Triangle.triangle(['2,', '2,', '3.9'])).to eq '二等辺三角形ですね！'
  end
  it '不等辺三角形' do
     expect(Triangle.triangle(['2,', '3,', '4'])).to eq '不等辺三角形ですね！'
     expect(Triangle.triangle(['2,', '4,', '3'])).to eq '不等辺三角形ですね！'
     expect(Triangle.triangle(['3,', '2,', '4'])).to eq '不等辺三角形ですね！'
     expect(Triangle.triangle(['3,', '4,', '2'])).to eq '不等辺三角形ですね！'
     expect(Triangle.triangle(['4,', '2,', '3'])).to eq '不等辺三角形ですね！'
     expect(Triangle.triangle(['4,', '3,', '2'])).to eq '不等辺三角形ですね！'
  end
  it '不等辺三角形 境界値' do
     expect(Triangle.triangle(['1,', '2,', '2.9'])).to eq '不等辺三角形ですね！'
     expect(Triangle.triangle(['1.1,', '2,', '3'])).to eq '不等辺三角形ですね！'
     expect(Triangle.triangle(['1,', '2.1,', '3'])).to eq '不等辺三角形ですね！'
  end
end
