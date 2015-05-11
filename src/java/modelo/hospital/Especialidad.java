package modelo.hospital;

public class Especialidad {
	private int id;
	private String nombre;

    public Especialidad(int id, String nombre) {
        this.id = id;
        this.nombre = nombre;
    }
        
        
        public static Especialidad especialidadORMAEspecialidad (modelo.orm.Especialidad especialidadORM){
            return new Especialidad(especialidadORM.getId(),especialidadORM.getNombre());
        }
}