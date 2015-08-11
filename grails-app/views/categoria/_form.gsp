<%@ page import="tasks.Categoria" %>



<div class="fieldcontain ${hasErrors(bean: categoriaInstance, field: 'descricaoCategoria', 'error')} required">
	<label for="descricaoCategoria">
		<g:message code="categoria.descricaoCategoria.label" default="Descricao Categoria" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricaoCategoria" required="" value="${categoriaInstance?.descricaoCategoria}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: categoriaInstance, field: 'tarefa', 'error')} ">
	<label for="tarefa">
		<g:message code="categoria.tarefa.label" default="Tarefa" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${categoriaInstance?.tarefa?}" var="t">
    <li><g:link controller="tarefa" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="tarefa" action="create" params="['categoria.id': categoriaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'tarefa.label', default: 'Tarefa')])}</g:link>
</li>
</ul>


</div>

