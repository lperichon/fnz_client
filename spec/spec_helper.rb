require "rubygems"
require 'bundler/setup'

require 'protected_attributes'

require 'fnz_client'
require 'typhoeus'

# == begin app initializer
module Fnz
  HYDRA = ::Typhoeus::Hydra.new
  HOST = "localhost:3008"
  API_KEY = "1234"
end
# == end app initializer

require "#{File.dirname(__FILE__)}/../app/models/installment.rb"
require "#{File.dirname(__FILE__)}/../app/models/membership.rb"

require 'support/typhoeus_mocks'

RSpec.configure do |config|
  config.include TyphoeusMocks
end

