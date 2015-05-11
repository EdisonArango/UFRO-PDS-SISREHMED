package modelo.personas;

public class Paciente extends Persona {
	private int id;

    public Paciente(int id,int idPersona, String nombre, String apellido, String ciudad, String comuna, String direccion, int edad, String email, String fecha_nacimiento, String login, String pass, String rut, int status) {
        super(idPersona, nombre, apellido, ciudad, comuna, direccion, edad, email, fecha_nacimiento, login, pass, rut, status);
        this.id = id;
    }

	public boolean pacienteActivo(int idPaciente) {
		throw new UnsupportedOperationException();
	}
        
        public static Paciente pacienteORMAPaciente(modelo.orm.Paciente pacienteORM){
            modelo.orm.Persona persona = pacienteORM.getPersona();
            return new Paciente(pacienteORM.getId(), persona.getId(), persona.getNombre(),
                    persona.getApellido(), persona.getCiudad(), persona.getComuna(),
                    persona.getDireccion(), persona.getEdad(), persona.getEmail(),
                    persona.getFecha_nacimiento(), persona.getLogin(), persona.getPass(),
                    persona.getRut(), persona.getStatus());
        }
}