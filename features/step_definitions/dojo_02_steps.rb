Dado("que esteja logado no site do suitecrm") do
 AcessarSite.new.load
end

E("esteja na home do site") do
  AcessarSite.new.log_in("will", "will")
end

Então("acesso a opção Activities e depois Tasks") do
  Cadastrar.new.link_activites.click
end

Então("depois acessar a opção Create Tasks") do
  Cadastrar.new.link_tasks.click 
  Cadastrar.new.link_create.click
end

Então("realizo o cadastro de uma Task") do
  Cadastrar.new.cadastro_task("teste_novo")
end
##############################################################

Quando("realizar a busca da task pelo nome") do 
  Editar.new.link_tasks.click                              
  Editar.new.buscar_task("teste_novo")
end                                                                          
                                                                             
Então("eu realizo a alteração da Task") do                                   
  Editar.new.editar_task("teste_nome_task_alterado")
end 
###############################################################

Quando("realizar a busca da task pelo nome novamente") do 
  Excluir.new.link_tasks.click                              
  Excluir.new.buscar_tasks("teste_nome_task_alterado")
end

Então("realizo a exclusão da Task com sucesso") do
  Excluir.new.excluir_task
  page.driver.browser.switch_to.alert.accept
end      



