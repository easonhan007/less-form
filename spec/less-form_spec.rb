require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe LessForm do
	before :all do
		@dr = Selenium::WebDriver.for :chrome
		@dr.get html_path('form')
	end

	it 'should set value to text field' do
		LessForm::Form.new(@dr).text_field(:id, 'text_field').set 'ok'
		LessForm::Form.new(@dr).text_field(:id, 'text_field').value.should eq('ok')
		@dr.find_element(id: 'text_field').attribute('value').should eq('ok')
	end

	it 'should set value to text area' do
		LessForm::Form.new(@dr).text_area(:id, 'area').set 'ok'
		LessForm::Form.new(@dr).text_area(:id, 'area').value.should eq('ok')
		@dr.find_element(id: 'area').attribute('value').should eq('ok')
	end

	it 'should set raido' do
		LessForm::Form.new(@dr).radio(:id, 'radio1').set  
		LessForm::Form.new(@dr).radio(:id, 'radio1').should be_set
		@dr.find_element(id: 'radio1').should be_selected
	end

	it 'should set checkbox' do
		LessForm::Form.new(@dr).checkbox(:id, 'checkbox').set true
		LessForm::Form.new(@dr).checkbox(:id, 'checkbox').should be_set
		@dr.find_element(id: 'checkbox').should be_selected
	end

	it 'should clear checkbox' do
		LessForm::Form.new(@dr).checkbox(:id, 'checkbox').set true
		LessForm::Form.new(@dr).checkbox(:id, 'checkbox').should be_set
		@dr.find_element(id: 'checkbox').should be_selected
		
		LessForm::Form.new(@dr).checkbox(:id, 'checkbox').set false
		LessForm::Form.new(@dr).checkbox(:id, 'checkbox').should_not be_set
		@dr.find_element(id: 'checkbox').should_not be_selected

		LessForm::Form.new(@dr).checkbox(:id, 'checkbox').set true
		LessForm::Form.new(@dr).checkbox(:id, 'checkbox').clear
		LessForm::Form.new(@dr).checkbox(:id, 'checkbox').should_not be_set
		@dr.find_element(id: 'checkbox').should_not be_selected
	end

	it 'should have correct selected item' do
		LessForm::Form.new(@dr).select(:id, 'select').selected.value.should eq('car')
		@dr.find_elements(css: 'option').detect {|e| e.selected?}.attribute('value').should eq('car')
	end

	it 'should select by value' do
		select = LessForm::Form.new(@dr).select(:id, 'select')
		select.select_by_value('bike')
		select.selected.value.should eq('bike')
		@dr.find_elements(css: 'option').detect {|e| e.selected?}.attribute('value').should eq('bike')
	end

	it 'should select by text' do
		LessForm::Form.new(@dr).select(:id, 'select').select_by_text('Bus')
		@dr.find_elements(css: 'option').detect {|e| e.selected?}.attribute('value').should eq('bus')
	end

	after :all do
		@dr.close
	end

end
