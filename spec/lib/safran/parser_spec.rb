require 'spec_helper'

describe Parser do
  it 'should have a valid rss url' do
    subject.url.should match(/.rss/)
  end

  it 'should return RSS feed ' do
    subject.parse.should_not be nil
  end

  it 'should contain RSS items' do
    subject.parse.should contain
  end
end