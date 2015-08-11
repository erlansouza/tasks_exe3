package tasks
class Categoria {
	
	String descricaoCategoria

	public String toString() {
		this.descricaoCategoria
	}

    static constraints = {
    }
	static hasMany = [tarefa:Tarefa]
}