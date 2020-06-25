require 'rails_helper'

RSpec.describe "scores/new", type: :view do
  before(:each) do
    assign(:score, Score.new(
      name: "MyString",
      score: 1
    ))
  end

  it "renders new score form" do
    render

    assert_select "form[action=?][method=?]", scores_path, "post" do

      assert_select "input[name=?]", "score[name]"

      assert_select "input[name=?]", "score[score]"
    end
  end
end
