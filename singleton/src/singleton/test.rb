require_relative 'singleton'

class Application
  include Singleton
end

app = Application.instance
puts app.inspect

begin
  another = Application.new
  puts another.inspect
rescue => exception
  puts exception.message
end
