package control.servicios;

import modelo.hospital.HoraMedica;

public class Reserva {
	public HoraMedica horaMedica;

	public String reservarHoraAPS(int idMedico, int idPaciente, String hora) {
		throw new UnsupportedOperationException();
	}

	public String reservarHoraControl(int idMedico, int paciente, String hora) {
		throw new UnsupportedOperationException();
	}

	public HoraMedica[] buscarHorasAPSPorMedico(int idMedico, Object fechaIn, Object string, String fechaFin) {
		throw new UnsupportedOperationException();
	}

	public HoraMedica[] buscarHorasAPSPorRango(String especialidad, String fechaIn, String fechaFin) {
		throw new UnsupportedOperationException();
	}
}