require 'spec_helper.rb'

describe User do 

	before do 
		User.create(:email => "a@b.com",
			:user_name => "Strangelove",
			:password => "secureshit",
			:password_confirmation => "secureshit")
	end 
	let(:user) {  User.first  }

	it "can be saved with the email and the username to the db" do
		expect(user.email).to eq("a@b.com")
		expect(user.user_name).to eq("Strangelove")
	end

	it "can have a password for his account" do
		expect(user.password_digest).to match String
	end

	it "can save an encrypted password" do
		expect(user.password_digest).not_to eq("secureshit")
	end

	it "won't be saved, if passwords don't match" do
	expect(User.count).to eq (1)
	User.create(:email => "arere@12b.com",
			:user_name => "peter",
			:password => "secureshit",
			:password_confirmation => "secureshittter")
	expect(User.count).to eq (1)
	end

end