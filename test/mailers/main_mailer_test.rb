require 'test_helper'

class MainMailerTest < ActionMailer::TestCase
  test "notify_question_author" do
    mail = MainMailer.notify_question_author
    assert_equal "Notify question author", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
