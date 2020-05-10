describe 'Caixa de seleção', :dropdown do  
  it 'Selecione item especifico por ID' do
    visit 'https://training-wheels-protocol.herokuapp.com/dropdown'

    select('Loki', from: 'dropdown')
  end

  it 'Selecione item especifico com find()' do
    visit 'https://training-wheels-protocol.herokuapp.com/dropdown'

    dropdown = find('.avenger-list')
    dropdown.find('option', text: 'Scott Lang').select_option
  end

  it 'Selecione item randomico', :random do
    visit 'https://training-wheels-protocol.herokuapp.com/dropdown'

    dropdown = find('.avenger-list')

    # Sample retorna uma posição de um array de forma randômica
    dropdown.all('option').sample.select_option
  end
end