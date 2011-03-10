require 'spec_helper'

describe "friends/new.html.erb" do
  before(:each) do
    assign(:friend, stub_model(Friend,
      :request_sender_id => 1,
      :request_receiver_id => 1
    ).as_new_record)
  end

  it "renders new friend form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => friends_path, :method => "post" do
      assert_select "input#friend_request_sender_id", :name => "friend[request_sender_id]"
      assert_select "input#friend_request_receiver_id", :name => "friend[request_receiver_id]"
    end
  end
end
