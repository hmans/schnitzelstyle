#!/usr/bin/env ruby
require 'rubygems'
require 'bundler/setup'

require 'schnitzelstyle'
require 'serve'
require 'rack/cache'

# sigh: https://github.com/tanoku/redcarpet/pull/89
require 'redcarpet'
class RedcarpetCompat
  def to_html(*_dummy)
    @text = @text.encode('utf-8') if @text.respond_to?(:encode)
    @markdown.render(@text)
  end
end

use Rack::Cache
run Serve::RackAdapter.new('site')
