
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tarefa.label', default: 'Tarefa')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-tarefa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-tarefa" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="descricaoTarefa" title="${message(code: 'tarefa.descricaoTarefa.label', default: 'Descricao Tarefa')}" />
					
						<g:sortableColumn property="concluido" title="${message(code: 'tarefa.concluido.label', default: 'Concluido')}" />
					
						<g:sortableColumn property="deadLine" title="${message(code: 'tarefa.deadLine.label', default: 'Dead Line')}" />
					
						<th><g:message code="tarefa.descricaoCategoria.label" default="Descricao Categoria" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${tarefaInstanceList}" status="i" var="tarefaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${tarefaInstance.id}">${fieldValue(bean: tarefaInstance, field: "descricaoTarefa")}</g:link></td>
					
						<td><g:formatBoolean boolean="${tarefaInstance.concluido}" /></td>
					
						<td><g:formatDate format="dd/MM/yyyy" date="${tarefaInstance.deadLine}" /></td>
					
						<td>${fieldValue(bean: tarefaInstance, field: "descricaoCategoria")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${tarefaInstanceCount ?: 0}" />
			</div>
			<div class="countRegister" align=center>
				<b> ${qtdeConcluido} </b>Tarefa(s) pendente(s)  de um total de <b> ${tarefaInstanceCount} </b>Tarefa(s)
			</div>	
		</div>
	</body>
</html>
