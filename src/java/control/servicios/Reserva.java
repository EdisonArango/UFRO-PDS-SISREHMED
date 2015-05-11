package control.servicios;

import java.util.ArrayList;
import modelo.hospital.HoraMedica;
import modelo.personas.Medico;
import org.orm.PersistentException;

public class Reserva {
	public HoraMedica horaMedica;

	public String reservarHoraAPS(int idMedico, int idPaciente, String hora) {
		throw new UnsupportedOperationException();
	}

	public String reservarHoraControl(int idMedico, int paciente, String hora) {
		throw new UnsupportedOperationException();
	}

	public ArrayList<HoraMedica> buscarHorasAPSPorMedico(int idMedico, String fechaIn, String fechaFin) throws PersistentException {
		Medico medico = Medico.cargarMedicoPorId(idMedico);
                System.out.println("Medico: "+medico.getNombre());
                return medico.obtenerHorasLibres(fechaIn, fechaFin);
	}
        
        public ArrayList<String> diasDeRango(String fechaIn,String fechaFin){
            return HoraMedica.diasDeRango(fechaIn, fechaFin);
        }

	public HoraMedica[] buscarHorasAPSPorEspecialidad(int idEspecialidad, String fechaIn, String fechaFin) {
		throw new UnsupportedOperationException();
	}
        
        public static void main(String[] args) throws PersistentException {
            Reserva reserva = new Reserva();
            ArrayList<HoraMedica> horasRes = reserva.buscarHorasAPSPorMedico(1,"11/05/2015","15/05/2015");
            
            for (int i = 0; i < horasRes.size(); i++) {
                System.out.println(horasRes.get(i).getId()+": "+horasRes.get(i).getFecha()+","+horasRes.get(i).getHora());
            }
        }
}