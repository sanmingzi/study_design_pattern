module Rails
  class << self
    attr_accessor :application

    @application = nil
  end

  class Application
    def self.inherited(base)
      Rails.application ||= base
    end
  end
end
