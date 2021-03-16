# https://github.com/ruby/singleton/blob/master/lib/singleton.rb

module Singleton
  module ClassMethods
    def instance
      @instance = new() if nil == @instance
      @instance
    end
  end

  class << self
    def included(base)
      base.private_class_method :new
      base.extend ClassMethods
    end
  end
end
