<%@ page import="tasks.Tarefa" %>



<div class="fieldcontain ${hasErrors(bean: tarefaInstance, field: 'descricaoTarefa', 'error')} ">
	<label for="descricaoTarefa">
		<g:message code="tarefa.descricaoTarefa.label" default="Descricao Tarefa" />
		
	</label>
	<g:textField name="descricaoTarefa" maxlength="50" value="${tarefaInstance?.descricaoTarefa}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tarefaInstance, field: 'concluido', 'error')} ">
	<label for="concluido">
		<g:message code="tarefa.concluido.label" default="Concluido" />
		
	</label>
	<g:checkBox name="concluido" value="${tarefaInstance?.concluido}" />

</div>

<div class="fieldcontain ${hasErrors(bean: tarefaInstance, field: 'deadLine', 'error')} required">
	<label for="deadLine">
		<g:message code="tarefa.deadLine.label" default="Dead Line" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="deadLine" precision="day"  value="${tarefaInstance?.deadLine}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: tarefaInstance, field: 'descricaoCategoria', 'error')} required">
	<label for="descricaoCategoria">
		<g:message code="tarefa.descricaoCategoria.label" default="Descricao Categoria" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="descricaoCategoria" name="descricaoCategoria.id" from="${tasks.Categoria.list()}" optionKey="id" required="" value="${tarefaInstance?.descricaoCategoria?.id}" class="many-to-one"/>

</div>

