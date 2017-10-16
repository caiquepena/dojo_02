class AcessarSite <SitePrism::Page
	set_url "https://demo.suiteondemand.com"
	#declarando os elementos, em suas respectivas variaveis.
	
	#tela de login
	element :input_usuario, '#user_name'
	element :input_senha, '#user_password'
	element :btn_login, '#bigbutton'

	def log_in (username, password)
	input_usuario.set(username)
	input_senha.set(password)
	btn_login.click
	end

end

