package tasks


class Tarefa {

	
	String descricaoTarefa
	Date deadLine
	Categoria descricaoCategoria
	boolean concluido

    static constraints = {
	descricaoTarefa(nullable:true, maxSize:50)
    }
    static mapping = {
    	concluido defaulValue: false
    }
}
