require 'spec_helper'

describe 'charges/index.html.erb' do
  
  let(:failed_charges) { Charge.failed_charges }
  let(:disputed_charges) { Charge.disputed_charges }
  let(:successful_charges) { Charge.successful_charges }
  
  before do    
    assign :failed_charges, failed_charges
    assign :disputed_charges, disputed_charges
    assign :successful_charges, successful_charges
    
    render    
  end
  
  it 'displays at least one failed charge' do
    expect(rendered).to have_selector("table > tbody > tr.list1-background > td")
  end
  
  it 'displays at least one disputed charge' do
    expect(rendered).to have_selector("table > tbody > tr.list2-background > td")
  end
  
  it 'displays at least one successful charge' do
    expect(rendered).to have_selector("table > tbody > tr.list3-background > td")
  end  
  
  it 'displays 5 failed charges' do
    expect(rendered).to have_selector("table > tbody > tr.list1-background > td", count: 5)
  end
  
  it 'displays 10 successful charge' do
    expect(rendered).to have_selector("table > tbody > tr.list3-background > td", count: 10)
  end  
end