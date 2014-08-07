require 'spec_helper'

describe Safran::Parser do
  it 'should have a valid rss url' do
    subject.url.should match(/.rss/)
  end

  it 'should return the RSS feed ' do
    subject.stub(:print)
    subject.parse.should_not be nil
  end

  it 'should have an items array' do
    subject.stub(:print)
    subject.parse.should be_a_kind_of(Array)
  end

end