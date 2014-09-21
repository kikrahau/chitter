require 'spec_helper.rb'

describe Tag do 
	context 'is created' do 
		it 'and stored to the database' do
			Tag.create
			expect(Tag.count).to eq(1)
		end
		it 'with a short text' do 
			Tag.create(:text => "party")
			tag = Tag.first
			expect(tag.text).to eq("party")
		end
	end
end