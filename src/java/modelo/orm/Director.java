/**
 * "Visual Paradigm: DO NOT MODIFY THIS FILE!"
 * 
 * This is an automatic generated file. It will be regenerated every time 
 * you generate persistence class.
 * 
 * Modifying its content may cause the program not work, or your work may lost.
 */

/**
 * Licensee: Universidad de La Frontera
 * License Type: Academic
 */
package modelo.orm;

import java.io.Serializable;
import javax.persistence.*;
@Entity
@org.hibernate.annotations.Proxy(lazy=false)
@Table(name="Director")
public class Director implements Serializable {
	public Director() {
	}
	
	@Column(name="id", nullable=false, length=10)	
	@Id	
	@GeneratedValue(generator="MODELO_ORM_DIRECTOR_ID_GENERATOR")	
	@org.hibernate.annotations.GenericGenerator(name="MODELO_ORM_DIRECTOR_ID_GENERATOR", strategy="increment")	
	private int id;
	
	@ManyToOne(targetEntity=modelo.orm.Persona.class, fetch=FetchType.LAZY)	
	@org.hibernate.annotations.Cascade({org.hibernate.annotations.CascadeType.SAVE_UPDATE, org.hibernate.annotations.CascadeType.LOCK})	
	@JoinColumns({ @JoinColumn(name="idPersona", referencedColumnName="id", unique=true, nullable=false) })	
	private modelo.orm.Persona persona;
	
	private void setId(int value) {
		this.id = value;
	}
	
	public int getId() {
		return id;
	}
	
	public int getORMID() {
		return getId();
	}
	
	public void setPersona(modelo.orm.Persona value) {
		this.persona = value;
	}
	
	public modelo.orm.Persona getPersona() {
		return persona;
	}
	
	public String toString() {
		return String.valueOf(getId());
	}
	
}
