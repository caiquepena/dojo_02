class Excluir<SitePrism::Page

element :link_activites, '#grouptab_3'
element :link_tasks, 'a[id="moduleTab_6_Tasks"]'
#buscar task
element :link_filter, '#pagination > td > table > tbody > tr > td:nth-child(1) > ul.clickMenu.selectmenu.searchLink.SugarActionMenu.listViewLinkButton.listViewLinkButton_top'
element :input_name, '#name_basic'
element :btn_search, 'input[type=submit][name="button"]'
#excluir task
elements :check_task, 'input[type=checkbox][name="mass[]"]'
element :list_actions, :id, 'actionLinkTop'
elements :link_delete, :id, 'delete_listview_top'
element :text_delete, '#MassUpdate > div.list.view.listViewEmpty'

	def buscar_tasks(name)
	link_filter.click
	input_name.set(name)
	btn_search.click
	end

	def excluir_task()
	check_task.first.click
	list_actions.click
	link_delete.last.click
	end

	#def validacao_exclusao()
	#	text_delete.expect(validacao_exclusao.text_task).to eq('No results found for "teste_nome_task_alterado"')
	#end
end	