class Cadastrar <SitePrism::Page

element :link_activites, '#grouptab_3'
element :link_tasks, 'a[id="moduleTab_6_Tasks"]'
element :link_create, '#actionMenuSidebar > ul > li:nth-child(2) > a'
element :input_nome, '#name'
element :select_status, '#status'
element :label_status, '#status > option:nth-child(3)'
element :select_priority, '#priority'
element :label_priority, '#priority > option:nth-child(2)'
elements :btn_save, "input[id='SAVE']"
element :text_task, '#pagecontent > div.moduleTitle > h2'

	def cadastro_task (name)
		input_nome.set(name)
		select_status.click
		label_status.click
		select_priority.click
		label_priority.click
		btn_save.last.click
	end

	def validacao_task()
		text_task.expect(validacao_task.text_task).to eq("teste_novo")
	end

end
