require "test_helper"

class QuoteTest < ActiveSupport::TestCase
  validates :name, presence: true
end
