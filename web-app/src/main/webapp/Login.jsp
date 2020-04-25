<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Login</title>
	
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
</head>

<body>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-t-50 p-b-90">
				<%
				String erro = null; //declarando erro caso =null
				
				if("POST".equalsIgnoreCase(request.getMethod()) && request.getParameter("submit") != null){ //clique entrar
									
						String	usuario = request.getParameter("usuario");
						String	senha = request.getParameter("senha");
						
						if("admin".equalsIgnoreCase(usuario) && "admin".equalsIgnoreCase(senha)){
							//usuario validado
							 response.sendRedirect("DadosPessoais.jsp");
						}else{
							erro = "Usuario ou senha inválidos.";
						}
							
					}
					%>
				<form method="post" class="login100-form validate-form flex-sb flex-w">
					<span class="login100-form-title p-b-51">
						Tela Login 
					
					</span>
					
					<div class="wrap-input100 validate-input m-b-16" >
						Usuário: <input class="input100" type="text" name="usuario" />
						<span class="focus-input100"></span>
					</div>
					
					
					<div class="wrap-input100 validate-input m-b-16" >
						Senha: <input class="input100" type="password" name="senha" />
						<span class="focus-input100"></span>
					</div>
					
					
					<div class="flex-sb-m w-full p-t-3 p-b-24">
						<div>
							<a href="#" class="txt1" type ="reset">
								Redefinir Senha
							</a>
						</div>
					</div>
					
					<span style="color: red;">
					<%							
					if(erro != null){
						out.print(erro);
					}
					%>
					</span>

					<div class="container-login100-form-btn m-t-17">
						<button class="login100-form-btn" type ="submit" name="submit" >
							Login
						</button>
					</div>
					<%
					erro = null;
					%>
				</form>
			</div>
		</div>	
	</div>	
</body>
</html>