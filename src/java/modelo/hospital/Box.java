package modelo.hospital;

public class Box {
	private int id;
	private String nombre;

    public Box(int id, String nombre) {
        this.id = id;
        this.nombre = nombre;
    }
        
    public static Box boxORMABox(modelo.orm.Box boxORM){
        return new Box(boxORM.getId(),boxORM.getNombre());
    }
}