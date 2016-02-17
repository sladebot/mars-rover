require 'rspec'

require_relative '../dist/rover'
require_relative '../dist/plateu'
# require_relative '../lib/compass'
require_relative '../dist/directions/north'
require_relative '../dist/directions/south'
require_relative '../dist/directions/east'
require_relative '../dist/directions/west'

RSpec.configure do |config|
  config.color = true
  config.tty = true
  config.formatter = :documentation
end
