package umg.estructura.rocola.view;

import javax.faces.context.FacesContext;

import javazoom.jlgui.basicplayer.BasicPlayerException;
import umg.estructura.rocola.controller.Reproductor;
import umg.estructura.rocola.controller.RocolaService;
import umg.estructura.rocola.model.Album;
import umg.estructura.rocola.model.Cancion;
import umg.estructura.rocola.model.Cola;

/**
 * Clase que se encarga de comunicarse con la pagina jsp, para obtener los
 * eventos correspondientes.
 */
public class RocolaBean {

	final RocolaService service = new RocolaService();
	final Cola cola = new Cola();
	Reproductor reproductor;

	int paginaActual = 0;
	boolean mostrarListado = false;

	boolean showPrevPage, showNextPage;

	String albunSeleccionado, labelPaginas, enReproduccion;
	String listadoCancionesCola[];
	Cancion listadoCanciones[];

	public String getLoad() {
		Integer albunes = this.service.obtenerNumeroAlbunes();
		this.showPrevPage = (this.paginaActual > 0);
		if (albunes == 0) {
			this.showNextPage = false;
		} else {
			Integer albunesSiguientes = albunes - ((this.paginaActual + 1) * 9);
			this.showNextPage = albunesSiguientes > 0;
		}

		int paginaFinal = albunes / 9;
		if (albunes % 9 != 0) {
			paginaFinal++;
		}
		paginaFinal = (paginaFinal == 0) ? 1 : paginaFinal;
		this.labelPaginas = "Pag. " + (this.paginaActual + 1) + "/" + paginaFinal;

		return null;
	}

	public Album[] getListaAlbunes() {
		return this.service.obtenerAlbunesPorPagina(this.paginaActual);
	}

	public void mostrarListadoCanciones() {
		this.mostrarListado = true;
		this.albunSeleccionado = FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap().get("albumSeleccionado");
		if (this.albunSeleccionado != null) {
			this.listadoCanciones = this.service.obtenerCancionesDeAlbum(this.albunSeleccionado);
		}
	}

	public void addCancion() throws BasicPlayerException {
		try {
			String ubicacion = FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap().get("cancionSeleccionadaUbicacion");
			String nombre = FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap().get("cancionSeleccionadaNombre");
			if ((ubicacion != null) && (nombre != null)) {
				Cancion cancion = new Cancion(nombre, ubicacion);
				this.cola.push(cancion);
				if (this.reproductor == null) {
					this.reproductor = new Reproductor(this.cola);
					this.reproductor.start();
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public String[] getListadoCancionesCola() {
		return this.cola.listar();
	}

	public String getEnReproduccion() {
		if (this.reproductor != null) {
			this.enReproduccion = this.reproductor.getEnReproduccion();
		}
		return this.enReproduccion;
	}

	/**
	 * METODOS DE CONVENCION PARA RICHFACES
	 */

	public void siguientePagineo() {
		this.paginaActual++;
	}

	public void anteriorPagineo() {
		this.paginaActual--;
		if (this.paginaActual < 0) {
			this.paginaActual = 0;
		}
	}

	public boolean isMostrarListado() {
		return this.mostrarListado;
	}

	public void setMostrarListado(boolean mostrarListado) {
		this.mostrarListado = mostrarListado;
	}

	public String getAlbunSeleccionado() {
		return this.albunSeleccionado;
	}

	public void setAlbunSeleccionado(String albunSeleccionado) {
		this.albunSeleccionado = albunSeleccionado;
	}

	public Cancion[] getListadoCanciones() {
		return this.listadoCanciones;
	}

	public void setListadoCanciones(Cancion[] listadoCanciones) {
		this.listadoCanciones = listadoCanciones;
	}

	public boolean isShowPrevPage() {
		return this.showPrevPage;
	}

	public void setShowPrevPage(boolean showPrevPage) {
		this.showPrevPage = showPrevPage;
	}

	public boolean isShowNextPage() {
		return this.showNextPage;
	}

	public void setShowNextPage(boolean showNextPage) {
		this.showNextPage = showNextPage;
	}

	public void setListadoCancionesCola(String[] listadoCancionesCola) {
		this.listadoCancionesCola = listadoCancionesCola;
	}

	public String getLabelPaginas() {
		return this.labelPaginas;
	}

	public void setLabelPaginas(String labelPaginas) {
		this.labelPaginas = labelPaginas;
	}

	public void setEnReproduccion(String enReproduccion) {
		this.enReproduccion = enReproduccion;
	}

	public void setLoad() {

	}

}
