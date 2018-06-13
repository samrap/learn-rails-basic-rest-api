require 'test_helper'

class BookTest < ActiveSupport::TestCase
  test "does not create a book without a title" do
    book = Book.new
    book.publish_date = '2018-10-09'

    assert_not book.save
  end

  test "does not create a book without a publish date" do
    book = Book.new
    book.title = 'Sam\'s Big Adventure'

    assert_not book.save
  end
end
