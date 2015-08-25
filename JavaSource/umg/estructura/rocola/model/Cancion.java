package umg.estructura.rocola.model;

/**
 * Clase que representa una cancion para el sistema.
 */
public class Cancion {

	/** Nombre de la cancion. */
	private String nombre;

	/** Lugar donde se encuentra la cancion. */
	private String ubicacion;


	public Cancion(String nombre, String ubicacion) {
		super();
		this.nombre = nombre;
		this.ubicacion = ubicacion;
	}

	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getUbicacion() {
		return this.ubicacion;
	}

	public void setUbicacion(String ubicacion) {
		this.ubicacion = ubicacion;
	}

}
