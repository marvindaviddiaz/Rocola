package umg.estructura.rocola.model;

/**
 * Clase que se encargara de funcionar como una Cola, para almacenamiento de las
 * canciones a reproducir.
 */
public class Cola {

	int max = 256, frente = -1, fin = -1;
	Cancion[] vec = new Cancion[this.max];

	public void push(Cancion cancion) throws Exception {
		if (((this.frente == 0) && (this.fin == this.max)) || (this.fin + 1 == this.frente)) {
			throw new Exception("No hay Espacio");
		}
		this.fin++;
		if (this.fin == this.max) {
			this.fin = 0;
		}
		this.vec[this.fin] = cancion;
		System.out.println("Push: " + cancion.getNombre());
		if (this.frente == -1) {
			this.frente = 0;
		}

	}

	public Cancion pop() {
		Cancion cancion = null;
		if (this.frente != -1) {
			cancion = this.vec[this.frente];
			if (this.frente == this.fin) {
				this.frente = -1;
				this.fin = -1;
			} else if (this.frente == this.max) {
				this.frente = 0;
			} else {
				this.frente++;
			}
		}
		return cancion;
	}

	public String[] listar() {
		String retorno = "";
		if (this.frente != -1) {
			for (int i = this.frente;; i++) {
				if (i == this.max) {
					i = 0;
				}
				final Cancion cancion = this.vec[i];
				if (cancion != null) {
					retorno += "," + this.vec[i].getNombre();
				}
				if (i == this.fin) {
					break;
				}
			}
		}
		return retorno.split(",");
	}
}
