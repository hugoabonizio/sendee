require 'test_helper'

class FowardMailerTest < ActionMailer::TestCase
  test 'foward' do
    fields = {
      name: 'Hugo',
      email: 'hugo.abonizio@gmail.com',
      phone: '(43) 3322-1144',
      message: 'This is a message'
    }
    email = FowardMailer.foward('hugo_abonizio@hotmail.com', fields).deliver_now
    
    assert_not ActionMailer::Base.deliveries.empty?
  end
end
