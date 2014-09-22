require 'spec_helper.rb'

describe Cheet do 

	it 'is not in the database, before being created' do
		expect(Cheet.count).to eq(0)
	end
	context 'creation' do 
		before do
   			Timecop.freeze(Time.local(2014))
  		end

		it 'be saved to the database' do
			Cheet.create
			expect(Cheet.count).to eq(1)
		end
		it 'can have a message' do 
			Cheet.create(:message => "Hi, I'm a boring message!")
			cheet = Cheet.first
			expect(cheet.message).to eq("Hi, I'm a boring message!")
		end
		it 'can be saved with the current time' do
			Cheet.create(:time => Time.now)
			time = Time.now
			cheet = Cheet.first
			expect(cheet.time).to eq(time)
		end

		it 'can have several tags' do
			Cheet.create(:tags => [Tag.create(:text => 'party'),Tag.create(:text => 'sex')])
			cheet = Cheet.first
			expect(cheet.tags.map{ |tag| tag.text}).to include("party"&& "sex")
		end
	end
end