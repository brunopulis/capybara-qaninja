describe 'Drag n Drop', :keyboard do  
  before(:each) do
    visit 'https://training-wheels-protocol.herokuapp.com/key_presses'
  end

  it 'Simulando teclas' do
    keys = %i[tab escape space enter shift control alt]

    keys.each do |t|
      find('#campo-id').send_keys t

      expect(page).to have_content 'You entered: ' + t.to_s.upcase
    end
  end

  it 'Simulando letras' do
    keys = %w[a s d f e t]

    keys.each do |l|
      find('#campo-id').send_keys l

      expect(page).to have_content 'You entered: ' + l.to_s.upcase
    end
  end
end