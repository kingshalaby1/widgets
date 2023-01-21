require "test_helper"
require "support/with_clues"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  include TestSupport::WithClues
  
  # driven_by :selenium, using: :chrome, screen_size: [1400, 1400]
  driven_by :rack_test
end
