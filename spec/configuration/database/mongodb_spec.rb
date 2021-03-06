# encoding: utf-8

require File.dirname(__FILE__) + '/../../spec_helper'

describe Backup::Configuration::Database::MongoDB do
  before do
    Backup::Configuration::Database::MongoDB.defaults do |db|
      db.name               = 'mydb'
      db.username           = 'myuser'
      db.password           = 'mypassword'
      db.host               = 'myhost'
      db.port               = 'myport'
      db.only_collections   = %w[my other tables]
      db.additional_options = %w[my options]
      db.ipv6               = true
    end
  end

  it 'should set the default MongoDB configuration' do
    db = Backup::Configuration::Database::MongoDB
    db.name.should               == 'mydb'
    db.username.should           == 'myuser'
    db.password.should           == 'mypassword'
    db.host.should               == 'myhost'
    db.port.should               == 'myport'
    db.only_collections.should   == %w[my other tables]
    db.additional_options.should == %w[my options]
    db.ipv6.should               == true
  end
end
