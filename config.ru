#!/usr/bin/env ruby
require 'rubygems'
require 'bundler/setup'
Bundler.require

# sigh: https://github.com/tanoku/redcarpet/pull/89
require 'redcarpet'
class RedcarpetCompat
  def to_html(*_dummy)
    @text = @text.encode('utf-8') if @text.respond_to?(:encode)
    @markdown.render(@text)
  end
end

use Rack::Cache

get '/schnitzelstyle-:version.css' do
  scss :site
end

get '/' do
  haml :index
end

run Sinatra::Application
