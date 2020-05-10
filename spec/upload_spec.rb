describe 'Upload', :upload do  
  before(:each) do
    # variavel de instancia
    @arquivo = Dir.pwd + '/spec/fixtures/arquivo.txt'
    @imagem  = Dir.pwd + '/spec/fixtures/vader.jpeg'
    

    visit 'https://training-wheels-protocol.herokuapp.com/upload'
  end

  it 'Upload com arquivo texto' do
    attach_file('file-upload', @arquivo)
    click_button 'Upload'

    is_uploaded = find('#uploaded-file')
    expect(is_uploaded.text).to eql 'arquivo.txt'
  end

  it 'Upload com arquivo de imagem' do
    attach_file('file-upload', @imagem)
    click_button 'Upload'

    is_uploaded_image = find('#uploaded-file')
    expect(is_uploaded_image.text).to eql 'vader.jpeg'
  end
end