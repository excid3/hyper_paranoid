require "hyper_paranoid/version"

module HyperParanoid
  class Railtie < Rails::Railtie
    initializer "require stuff" do
      require "acts_as_paranoid"
    end

    config.app_generators do |g|
      g.templates.unshift File::expand_path("../templates", __FILE__)
    end
  end
end
