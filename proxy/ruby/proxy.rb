require 'real_subject'

class Proxy
  def initialize
    @real_subject = RealSubject.new
  end

  def request
    @real_subject.request
  end
end
