require 'spec_helper'

describe Startup do

	let(:ouwa) { Startup.new name:  	 'Open University of West Africa',
													 email: 	 'ouwa@ouwa.org',
													 password: '$3cuR3-p@$$w0rd' }

	subject { ouwa }

	describe 'registering a startup' do

		it { should be_valid }

		it 'should not be successful' do
			ouwa.name 		 = nil
			ouwa.should_not be_valid
		end

		it 'should not save another startup with the same name' do

			duplicate_ouwa = Startup.new name:  	 'Open University of West Africa',
																	 email: 	 ouwa.email,
																	 password: ouwa.password

			ouwa.save			
			duplicate_ouwa.save

			duplicate_ouwa.should_not be_valid
			duplicate_ouwa.errors.size == 2
		end
	end

end