package umg.estructura.rocola.model;


/**
 * Clase que representa un album, contiene una lista de canciones.
 */
public class Album {

	/** Nombre del Album. */
	private String nombre;

	/** Ubicacion de la imagen del album. */
	private String imagen;

	/** Vector que contiene las Canciones del album. */
	private Cancion[] canciones;
	
	
	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public Cancion[] getCanciones() {
		return canciones;
	}

	public void setCanciones(Cancion[] canciones) {
		this.canciones = canciones;
	}

	public String getImagen() {
		return imagen;
	}

	public void setImagen(String imagen) {
		this.imagen = imagen;
	}

}
