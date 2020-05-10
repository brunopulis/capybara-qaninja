describe 'Checkboxes', :checkbox do  
  before(:each) do
    visit 'https://training-wheels-protocol.herokuapp.com/checkboxes'
  end

  it 'Marca um item especifico' do
    check('thor')
  end

  it 'Desmarca um item especifico' do
    uncheck('antman')
  end

  it 'Marcando com find set true' do
    find('input[value=cap]').set true
  end

  it 'Desmarcando com find set false' do
    find('input[value=guardians]').set false
  end
end