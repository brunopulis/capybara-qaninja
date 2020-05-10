describe 'Radiobutton', :radio do  
  before(:each) do
    visit 'https://training-wheels-protocol.herokuapp.com/radios'
  end

  it 'Marca um item especifico por ID' do
    choose('cap')
  end

  it 'Marca um item por find com css selector' do
    find('input[value=guardians]').click
  end
end