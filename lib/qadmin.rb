$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

unless defined?(ActiveSupport)
  require 'active_support'
end

module Qadmin
  VERSION = '0.1.0'
end

%w{
  options
  helper
  overlay
  templates
  controller
}.each {|lib| require "qadmin/#{lib}" }