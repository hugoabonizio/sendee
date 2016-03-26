require 'test_helper'

class FowardContactTest < ActiveSupport::TestCase
  test "generate identification token" do
    @simple = FowardContact.create(to: 'test@email.com', fields: 'subject,email,message')
    assert_not_nil @simple.token
  end
end
