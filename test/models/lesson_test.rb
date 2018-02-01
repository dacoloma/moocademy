require 'test_helper'

class LessonTest < ActiveSupport::TestCase

  def setup
    @course = Course.new(title: "Example Course", description: "My description")
    @lesson = Lesson.new(title: "Example Lesson", body: "My body", course_id: 1)
  end

  test "should be valid" do
    assert @lesson.valid?
  end

  test "title should be present" do
    @lesson.title = "       "
    assert_not @lesson.valid?
  end

  test "body should be present" do
    @lesson.body = "                               "
    assert_not @lesson.valid?
  end

  test "should belong to a course" do
    @lesson.course_id = nil
    assert_not @lesson.valid?
  end

end
