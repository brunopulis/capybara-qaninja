describe 'Mouse hover', :hover do  
  before(:each) do
    visit 'https://training-wheels-protocol.herokuapp.com/hovers'
  end

  it 'Quando passo o mouse sobre o blade' do
    card = find('img[alt="Blade"]')
    card.hover

    expect(page).to have_content "Nome: Blade"
  end

  it 'Quando passo o mouse sobre o pantera negra' do
    card = find('img[alt="Pantera Negra"]')
    card.hover

    expect(page).to have_content "Nome: Pantera Negra"
  end

  it 'Quando passo o mouse sobre o miranha' do
    card = find('img[alt="Homem Aranha"]')
    card.hover

    expect(page).to have_content "Nome: Homem Aranha"
  end
end