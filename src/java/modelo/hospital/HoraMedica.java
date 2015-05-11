package modelo.hospital;

import modelo.personas.Paciente;
import modelo.personas.Medico;
import control.servicios.Reserva;
import modelo.personas.Persona;

public class HoraMedica {
	private boolean esAPS;
	private String fecha;
	private int id;
	private int idReserva;
	public Paciente paciente;
	public Medico medico;
	public Box box;
	public Persona personaQueRegistra;

	public boolean horaReservada(int idHora) {
		throw new UnsupportedOperationException();
	}

	public boolean pacienteConInterpolacionDeHora(int idPaciente, int idHora) {
		throw new UnsupportedOperationException();
	}

	public boolean pacienteYaReservoHora(int idPaciente, int idHora) {
		throw new UnsupportedOperationException();
	}

	public boolean horaEsAPS(int idHora) {
		throw new UnsupportedOperationException();
	}

	public boolean horaReservadaConMedico(int idMedico, int idHora) {
		throw new UnsupportedOperationException();
	}

	public void guardarReserva(int idMedico, int idPaciente, int idHora) {
		throw new UnsupportedOperationException();
	}

	public HoraMedica[] obtenerHorasLibresMedico(Medico medico, Object fechaIn_String_fechaFin) {
		throw new UnsupportedOperationException();
	}
}