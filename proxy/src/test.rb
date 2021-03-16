$LOAD_PATH.unshift File.dirname(__FILE__)

require 'proxy'
require 'ceo'

ceo = CEO.new
ceo_proxy = Proxy.new(ceo)
ceo_proxy.say
