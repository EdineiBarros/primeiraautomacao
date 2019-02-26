Dado("que acesso a pagina de cadastro") do
     visit 'http://srbarriga.herokuapp.com/cadastro'
   end

  
  Quando("informo o campo Nome {string} Email {string} e Senha {string}") do |nome, email, senha|
    email = Faker::Internet.email(name = nome)
    find('input[id=nome]'). set nome
    find('input[id=email]'). set email
    find('input[id=senha]'). set senha

    sleep 10
  end
  
  Quando("clico no botao Cadastrar") do
    click_button 'Cadastrar'
  end
  
  Então("recebo mensagem de sucesso") do
    expect(page).to have_content 'Usuário inserido com sucesso'
  
  sleep 10  
end
