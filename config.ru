#!/usr/bin/env ruby
require 'rubygems'
require 'bundler/setup'
require 'serve'

run Serve::RackAdapter.new('site')
