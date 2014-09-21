require 'spec_helper.rb'

describe User do 
	it "can be saved with the email and the username to the db" do
		User.create(:email => "a@b.com",
					:user_name => "Strangelove")
		user = User.first
		expect(user.email).to eq("a@b.com")
		expect(user.user_name).to eq("Strangelove")
	end
end