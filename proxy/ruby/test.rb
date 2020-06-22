$LOAD_PATH.unshift File.dirname(__FILE__)

require 'proxy'

proxy = Proxy.new
proxy.request
