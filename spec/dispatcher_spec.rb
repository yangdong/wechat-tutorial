describe "#Dispatcher" do
	it "to help message" do
		Dispatcher.dispatch({:content => "help"}).should == :help
	end

	it "to help message" do
		Dispatcher.dispatch({:event => :subscribe}).should == :welcome
	end

	it "to picture message" do
		Dispatcher.dispatch({}).should == :'picture_message'
	end
end