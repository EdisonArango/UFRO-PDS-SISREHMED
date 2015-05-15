package modelo.personas;

import java.util.ArrayList;
import modelo.hospital.Especialidad;
import modelo.hospital.HoraMedica;
import org.orm.PersistentException;

public class Medico extends Persona {
	private int id;
	public Especialidad especialidad;
        public HoraMedica horaMedica;

        public Medico(int id, Especialidad especialidad, int idPersona, String nombre, String apellido, String ciudad, String comuna, String direccion, int edad, String email, String fecha_nacimiento, String login, String pass, String rut, int status) {
            super(idPersona, nombre, apellido, ciudad, comuna, direccion, edad, email, fecha_nacimiento, login, pass, rut, status);
            this.id = id;
            this.especialidad = especialidad;
        }
        

	public boolean medicoActivo(int idMedico) {
		throw new UnsupportedOperationException();
	}

	public ArrayList<HoraMedica> obtenerHorasLibres(String fechaIn,String fechaFin) throws PersistentException {
		return HoraMedica.obtenerHorasLibresMedico(this, fechaIn, fechaFin);
	}
        
        public static Medico cargarMedicoPorId(int id) throws PersistentException{
            modelo.orm.Medico medicoORM = modelo.orm.MedicoDAO.loadMedicoByQuery("id="+id, null);
            return medicoORMAMedico(medicoORM);
        }
        
        public static Medico[] obtenerTodosLosMedicos() throws PersistentException{
            modelo.orm.Medico[] medicosORM = modelo.orm.MedicoDAO.listMedicoByQuery(null, null);
            Medico[] medicos = new Medico[medicosORM.length];
            for (int i = 0; i < medicosORM.length; i++) {
                medicos[i] = Medico.medicoORMAMedico(medicosORM[i]);
            }
            return medicos;
        }
        
        /**
         * Error, validar que atributos pueden ser nulos
         * @param medicoORM
         * @return 
         */
        public static Medico medicoORMAMedico(modelo.orm.Medico medicoORM){
            Especialidad specialidad = Especialidad.especialidadORMAEspecialidad(medicoORM.getEspecialidad());
            return new Medico(medicoORM.getId(),specialidad,medicoORM.getPersona().getId(),
                    medicoORM.getPersona().getNombre(),medicoORM.getPersona().getApellido(),
                    medicoORM.getPersona().getCiudad(),medicoORM.getPersona().getComuna(),
                    medicoORM.getPersona().getDireccion(),
                    medicoORM.getPersona().getEdad(),medicoORM.getPersona().getEmail(),
                    medicoORM.getPersona().getFecha_nacimiento(),medicoORM.getPersona().getLogin(),
                    medicoORM.getPersona().getPass(),medicoORM.getPersona().getRut(),
                    medicoORM.getPersona().getStatus());
        }

        public int getId() {
            return id;
        }
        
}