require 'test_helper'

class CourseTest < ActiveSupport::TestCase

  def setup
    @course = Course.new(title: "Example Course", description: "My description")
  end

  test "should be valid" do
    assert @course.valid?
  end

  test "title should be present" do
    @course.title = "       "
    assert_not @course.valid?
  end

  test "description should be present" do
    @course.description = "                               "
    assert_not @course.valid?
  end

end
