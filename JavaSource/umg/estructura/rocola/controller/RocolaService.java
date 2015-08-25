package umg.estructura.rocola.controller;

import static java.io.File.separator;

import java.io.File;
import java.io.FileFilter;
import java.util.ArrayList;
import java.util.List;

import umg.estructura.rocola.model.Album;
import umg.estructura.rocola.model.Cancion;

public class RocolaService {

	private int ALBUNES_PAGINA = 9;
	private String NOMBRE_IMAGEN = "Folder.jpg";
	private String BLANCO = "%20";
	private static final String ATRAS = ".." + separator;
	private static final String CAPETA_MUSICA = ATRAS + ATRAS + ATRAS + ATRAS + ATRAS + ATRAS + "music" + separator;

	private final File DIRECTORIO = new File(this.getClass().getResource(CAPETA_MUSICA).getFile());

	private final FileFilter FILTRO_CARPETAS = new FileFilter() {
		@Override
		public boolean accept(File dir) {
			return dir.isDirectory();
		}
	};

	private final FileFilter FILTRO_MUSICA = new FileFilter() {
		@Override
		public boolean accept(File dir) {
			return (dir.getName().endsWith(".mp3"));
		}
	};

	/**
	 * Este metodo retorna un entero con el total de albunes existentes.
	 */
	public int obtenerNumeroAlbunes() {
		List<Album> lista = new ArrayList<Album>();
		File[] files = this.DIRECTORIO.listFiles(this.FILTRO_CARPETAS);
		return files.length;
	}

	/**
	 * Este metodo retorna un vector de 9 nombres albunes. Si se recibe el
	 * numero 0: retorna los primeros nueve albunes, si se recibe el numero 1:
	 * retornaria los siguientes 9 albunes, etc.
	 * 
	 */
	public Album[] obtenerAlbunesPorPagina(int pagina) {
		List<Album> lista = new ArrayList<Album>();
		File[] files = this.DIRECTORIO.listFiles(this.FILTRO_CARPETAS);

		int totalAlbunes = files.length;
		int inicio = (pagina * this.ALBUNES_PAGINA);
		int fin = (inicio + this.ALBUNES_PAGINA);

		File archivo;
		Album album;
		while ((inicio < fin) && (totalAlbunes > inicio)) {
			archivo = files[inicio];
			album = new Album();
			album.setNombre(archivo.getName());
			album.setImagen("/music/" + archivo.getName() + "/" + this.NOMBRE_IMAGEN);
			album.setImagen(album.getImagen().replace(" ", this.BLANCO));
			lista.add(album);
			inicio++;
		}
		return lista.toArray(new Album[lista.size()]);
	}

	/**
	 * Este metodo retorna una lista de canciones en base al nombre del albun.
	 * 
	 */
	public Cancion[] obtenerCancionesDeAlbum(String nombre) {
		List<Cancion> lista = new ArrayList<Cancion>();
		Cancion cancion = null;
		try {
			File album = new File(this.getClass().getResource(CAPETA_MUSICA + nombre).toURI());
			if (album.isDirectory()) {
				File[] files = album.listFiles(this.FILTRO_MUSICA);
				if (files != null) {
					for (File file : files) {
						cancion = new Cancion(file.getName(), file.getPath());
						lista.add(cancion);
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return lista.toArray(new Cancion[lista.size()]);
	}

}
