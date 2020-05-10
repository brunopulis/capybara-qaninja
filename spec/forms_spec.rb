describe 'Forms' do  
  it 'Credenciais válidas' do
    visit 'https://training-wheels-protocol.herokuapp.com/login'

    fill_in 'userId', with: 'stark'
    fill_in 'passId', with: 'jarvis!'

    click_button 'Login'

    expect(find('#flash').visible?).to be true
  end
end