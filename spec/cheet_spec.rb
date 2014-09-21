require 'spec_helper.rb'

describe Cheet do 

		it 'there is no cheet in the database, before creating one' do
			expect(Cheet.count).to eq(0)
		end
	context 'is created' do 
		before do
   			Timecop.freeze(Time.local(2014))
  		end

		it 'and saved to the database' do
			Cheet.create
			expect(Cheet.count).to eq(1)
		end
		it 'with a message' do 
			Cheet.create(:message => "Hi, I'm a boring message!")
			cheet = Cheet.first
			expect(cheet.message).to eq("Hi, I'm a boring message!")
		end
		it 'with the current time' do
			Cheet.create(:time => Time.now)
			time = Time.now
			cheet = Cheet.first
			expect(cheet.time).to eq(time)
		end
	end

	context 'c'
end