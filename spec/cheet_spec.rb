require 'spec_helper.rb'



describe Cheet do 
	context 'creating ' do 
		it 'there is no cheet in the database, before creating one' do
			expect(Cheet.count).to eq(0)
		end
		it 'can be created and saved to the database' do
			Cheet.create
			expect(Cheet.count).to eq(1)
		end
		it 'can be created with a message' do 
			Cheet.create(:message => "Hi, I'm a boring message!")
			cheet = Cheet.first
			expect(cheet.message).to eq("Hi, I'm a boring message!")
		end
	end

end