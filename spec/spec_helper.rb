ENV['RACK_ENV'] = 'test'

require("bundler/setup")
Bundler.require(:default, :test)
Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each { |file| require file }
set(:root, Dir.pwd())

require('capybara/rspec')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)
require('./app')

RSpec.configure do |config|
  config.after(:each) do

    Recipe.all().each() do |recipe|
      recipe.destroy()
    end

    Ingredient.all().each() do |ingredient|
      ingredient.destroy()
    end

    Instruction.all().each() do |instruction|
      instruction.destroy()
    end

    Quantity.all().each() do |quantity|
      quantity.destroy()
    end
  end
end
