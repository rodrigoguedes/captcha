<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<style type="text/css">@import url( http://www.guj.com.br/templates/default/styles/style.css?1201112652786 );</style>
<style type="text/css">@import url( http://www.guj.com.br/css/guj.css?1201112652786);</style>
<title>Registrar</title>
</head>
<body>
	
	<form name="formregister" action="validacaptcha" method="post">
	<table class="forumline" cellspacing="1" cellpadding="3" width="50%" border="0" align="center">
		<tr>
			<th class="thhead" valign="middle" colspan="2" height="25">Registrar Informação</th>
		</tr>
	        
		<tr>
			<td class="row2" colspan="2" align="center"><span class="gensmall"><font color="red">Você deve preencher os campos com "*"</font></span></td>
	
		</tr>
	        
		<tr>
			<td class="row1" width="38%" align="right">Usuário: *</td>
			<td class="row2"><input class="post" type="text" style="WIDTH: 200px" maxlength="25" size="25" name="username" value=""/></td>
		</tr>
	        
		<tr>
			<td class="row1" align="right">Endereço de e-mail: *</td>
			<td class="row2"><input class="post" type="text" style="WIDTH: 200px" maxlength="255" size="25" name="email" value=""/></td>
	
		</tr>
	        
		<tr>
			<td class="row1" align="right">Senha: *</td>
			<td class="row2"><input name="password" type="password" class="post" id="password" style="WIDTH: 200px" size="25" maxlength="100" /> </td>
		</tr>
	        
		<tr>
			<td class="row1" align="right">Confirme a senha: *</td>
	
			<td class="row2"><input class="post" style="WIDTH: 200px" type="password" maxlength="100" size="25" name="password_confirm" /> </td>
		</tr>
		
		<tr>
			<td class="row1" align="right"></td>
			<td class="row2"><img src="geracaptcha" /></td>
		</tr>
		
		<tr>
			<td class="row1" align="right">Digite o texto da image: *</td>
	
			<td class="row2"><input class="post" type="text" style="WIDTH: 200px" maxlength="7" size="25" name="captcha.id" value=""/></td>
		</tr>

		<tr>
			<td class="row2" colspan="2" align="center"><font color="#ff0000"><b>
			<c:out value="${msg}"></c:out>
			</b></font></td>
		</tr>
		
		<tr align="center">
			<td class="catbottom" colspan="2" height="28">
				<input class="mainoption" type="submit" value="Enviar" name="submit" />&nbsp;&nbsp;
				<input class="liteoption" type="reset" value="Limpar" name="reset" />
			</td>
		</tr>
	</table>
	</form>
</body>
</html>