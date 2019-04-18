require 'logger'

# require 'kata/logging' and
# include Logging in class
#
# use Logging.dlog for debug messages
module Kata
  module Logging
    # This is the magical bit that gets mixed into your classes
    def logger
      Logging.logger
    end

    # Global, memorized, lazy initialized instance of a logger
    def self.logger
      #@logger ||= Logger.new(STDOUT)
      @logger ||= Logger.new('log/development.log')
    end

    # action is a string
    # status is a string
    # variables is an array of variables
    def self.dlog(action, status, variables)
      message = { action: action, status: status, variables: variables }.to_json
      self.logger.debug(message)
    end
  end
end
