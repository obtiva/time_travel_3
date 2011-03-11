require 'spec_helper'

describe "friends/index.html.erb" do
  before(:each) do
    assign(:friends, [
      stub_model(Friend,
        :request_sender_id => 1,
        :request_receiver_id => 1
      ),
      stub_model(Friend,
        :request_sender_id => 1,
        :request_receiver_id => 1
      )
    ])
  end

  # it "renders a list of friends" do
  #   render
  #   # Run the generator again with the --webrat flag if you want to use webrat matchers
  #   assert_select "tr>td", :text => 1.to_s, :count => 2
  #   # Run the generator again with the --webrat flag if you want to use webrat matchers
  #   assert_select "tr>td", :text => 1.to_s, :count => 2
  # end
end
