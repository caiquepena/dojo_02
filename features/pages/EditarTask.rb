class Editar <SitePrism::Page

element :link_activites, '#grouptab_3'
element :link_tasks, 'a[id="moduleTab_6_Tasks"]'
#buscar task
element :link_filter, '#pagination > td > table > tbody > tr > td:nth-child(1) > ul.clickMenu.selectmenu.searchLink.SugarActionMenu.listViewLinkButton.listViewLinkButton_top'
element :input_name, '#name_basic'
element :btn_search, 'input[type=submit][name="button"]'
elements :img_edit, 'img[alt="Edit"]'
#alterar task
element :name_edit, '#name'
element :select_priority_edit, 'select[name="status"]'
element :label_priority_edit, '#priority > option:nth-child(3)'
elements :btn_save_edit, '#SAVE'
#validação da alteração
element :text_task, '#pagecontent > div.moduleTitle > h2'


	def buscar_task(name)
	link_filter.click
	input_name.set(name)
	btn_search.click
	img_edit.first.click
	end

	def editar_task(name)
	name_edit.set(name)
	select_priority_edit.click
	label_priority_edit.click
	btn_save_edit.last.click
	end

	def validacao_task()
	text_task.expect(validao_task.text_task).to eq("teste_nome_task_alterado")
	end	
end