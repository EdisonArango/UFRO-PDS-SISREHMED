package modelo.personas;

import modelo.hospital.Especialidad;
import modelo.hospital.HoraMedica;

public class Medico extends Persona {
	private int id;
	public Especialidad especialidad;

	public boolean medicoActivo(int idMedico) {
		throw new UnsupportedOperationException();
	}

	public HoraMedica[] obtenerHorasLibres(int idMedico, Object fechaIn_String_fechaFin) {
		throw new UnsupportedOperationException();
	}
}