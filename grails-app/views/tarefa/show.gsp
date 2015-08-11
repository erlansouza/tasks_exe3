
<%@ page import="tasks.Tarefa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tarefa.label', default: 'Tarefa')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-tarefa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-tarefa" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list tarefa">
			
				<g:if test="${tarefaInstance?.descricaoTarefa}">
				<li class="fieldcontain">
					<span id="descricaoTarefa-label" class="property-label"><g:message code="tarefa.descricaoTarefa.label" default="Descricao Tarefa" /></span>
					
						<span class="property-value" aria-labelledby="descricaoTarefa-label"><g:fieldValue bean="${tarefaInstance}" field="descricaoTarefa"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tarefaInstance?.concluido}">
				<li class="fieldcontain">
					<span id="concluido-label" class="property-label"><g:message code="tarefa.concluido.label" default="Concluido" /></span>
					
						<span class="property-value" aria-labelledby="concluido-label"><g:formatBoolean boolean="${tarefaInstance?.concluido}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${tarefaInstance?.deadLine}">
				<li class="fieldcontain">
					<span id="deadLine-label" class="property-label"><g:message code="tarefa.deadLine.label" default="Dead Line" /></span>
					
						<span class="property-value" aria-labelledby="deadLine-label"><g:formatDate date="${tarefaInstance?.deadLine}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${tarefaInstance?.descricaoCategoria}">
				<li class="fieldcontain">
					<span id="descricaoCategoria-label" class="property-label"><g:message code="tarefa.descricaoCategoria.label" default="Descricao Categoria" /></span>
					
						<span class="property-value" aria-labelledby="descricaoCategoria-label"><g:link controller="categoria" action="show" id="${tarefaInstance?.descricaoCategoria?.id}">${tarefaInstance?.descricaoCategoria?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:tarefaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${tarefaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
