# require 'spec_helper'

# describe Hacker do
# 	before :each do
# 		@hacker = Hacker.new(name: 'Tom Hacker', email: 'tom@hacker.org', github: 'tomh', twitter: 'th', language: 'prolog')
# 	end

# 	describe 'Registering a hacker' do
# 		subject { @hacker }
# 		it { should be_valid }

# 		it 'should not be valid without name' do
# 			@hacker.name = nil
# 			@hacker.should_not be_valid
# 		end

# 		it 'should not be valid without an email' do
# 			@hacker.email = nil
# 			@hacker.should_not be_valid
# 		end

# 		it 'should not save two hackers with the same email address' do
# 			hacker_with_same_email_address = @hacker.dup
# 			@hacker.save
# 			hacker_with_same_email_address.email.upcase!
# 			hacker_with_same_email_address.should_not be_valid
# 		end
# 	end

# end
