package modelo.hospital;

import java.util.ArrayList;
import modelo.personas.Paciente;
import modelo.personas.Medico;
import modelo.personas.Persona;
import org.orm.PersistentException;

public class HoraMedica {
    private int id;
	private int idReserva;
	private boolean esAPS;
	private String fecha;
        private String hora;
	public Paciente paciente;
	public Medico medico;
	public Box box;
	public Persona personaQueRegistra;

        public HoraMedica(int id, int idReserva, boolean esAPS, String fecha, String hora, Paciente paciente, Medico medico, Box box, Persona personaQueRegistra) {
            this.id = id;
            this.idReserva = idReserva;
            this.esAPS = esAPS;
            this.fecha = fecha;
            this.hora = hora;
            this.paciente = paciente;
            this.medico = medico;
            this.box = box;
            this.personaQueRegistra = personaQueRegistra;
        }
        

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

	public static ArrayList<HoraMedica> obtenerHorasLibresMedico(Medico medico, String fechaIn, String fechaFin) throws PersistentException {
             ArrayList<String> fechasRango = diasDeRango(fechaIn, fechaFin);
             ArrayList<HoraMedica> horasMedicasRes = new ArrayList<>();
        for (String fechaActual : fechasRango) {
//            System.out.println("Fecha Actual: "+fechaActual);
            String condicion = "idMedico="+medico.getId()+" and fecha='" + fechaActual+"'";
            System.out.println(condicion);
            modelo.orm.HoraMedica[] horasMedicas = modelo.orm.HoraMedicaDAO.listHoraMedicaByQuery(condicion, "fecha");
            System.out.println("Cantidad de horas: "+horasMedicas.length);
                for (modelo.orm.HoraMedica horaMedica : horasMedicas) {
                    HoraMedica hora = HoraMedica.horaMedicaORMAHoraMedica(horaMedica);
                    
                    //Agrega la hora si es APS y si no está reservada (idReserva=-1)
                    if (hora.esAPS&&hora.idReserva==-1) {
                        horasMedicasRes.add(hora);
                    }   
                }
        }
            return horasMedicasRes;
	}
        
        public static ArrayList<String> diasDeRango(String fechaIn,String fechaFin){
            ArrayList<String> fechas = new ArrayList<>();
            String fechaActual = fechaIn;
            int diaActual,mesActual,añoActual;
            diaActual = Integer.valueOf(fechaActual.split("/")[0]);
            mesActual = Integer.valueOf(fechaActual.split("/")[1]);
            añoActual = Integer.valueOf(fechaActual.split("/")[2]);
            fechas.add(fechaActual);
            while (!fechaActual.equals(fechaFin)) {                
                if (diaActual==31) {
                    diaActual=1;
                    if (mesActual==12) {
                        mesActual=1;
                        añoActual+=1;
                    }
                    else{
                        mesActual+=1;
                    }
                }
                else{
                    diaActual+=1;
                }
                fechaActual = String.format("%02d",diaActual)+"/"+String.format("%02d",mesActual)+"/"+añoActual;
                fechas.add(fechaActual);    
            }
            return fechas;
        }
        
        
        public static HoraMedica horaMedicaORMAHoraMedica(modelo.orm.HoraMedica horaMedicaORM) throws PersistentException{
            modelo.orm.Reserva reserva = modelo.orm.ReservaDAO.loadReservaByQuery("idHoraMedica="+horaMedicaORM.getId(), null);
            int idReserva = -1;
            Paciente paciente = null;
            Persona persona = null;
            Medico medico = Medico.medicoORMAMedico(horaMedicaORM.getMedico());
            Box box = Box.boxORMABox(horaMedicaORM.getBox());
            if (reserva!=null) {
                idReserva = reserva.getId();
                paciente = Paciente.pacienteORMAPaciente(reserva.getPaciente());
                persona = Persona.personaORMAPersona(reserva.getPersonaQueRegistra());
            }
            boolean aps =false;
            if (horaMedicaORM.getEsAPS()==1) {
                aps = true;
            }
            return new HoraMedica(horaMedicaORM.getId(), idReserva, aps, horaMedicaORM.getFecha(), horaMedicaORM.getHora(), paciente, medico, box, persona);
        }
        
        public static void obtenerReserva(int idHoraMedica) throws PersistentException{
            modelo.orm.Reserva reserva = modelo.orm.ReservaDAO.loadReservaByQuery("idHoraMedica="+idHoraMedica, null);
            System.out.println(reserva.getId());
        }

        public int getId() {
            return id;
        }

        public int getIdReserva() {
            return idReserva;
        }

        public boolean isEsAPS() {
            return esAPS;
        }

        public String getFecha() {
            return fecha;
        }

        public String getHora() {
            return hora;
        }

        public Box getBox() {
            return box;
        }
        
        
        
        public static void main(String[] args) throws PersistentException {
//            HoraMedica horaMedica = new HoraMedica();
//            ArrayList<String> horas = horaMedica.diasDeRango("04/05/2015", "14/06/2016");
//            
//            for (int i = 0; i < horas.size(); i++) {
//                System.out.println(horas.get(i));
//            }
            
//            HoraMedica.obtenerReserva(1);
        }
        
        
}