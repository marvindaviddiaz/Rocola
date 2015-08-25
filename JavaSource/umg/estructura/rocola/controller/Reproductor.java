package umg.estructura.rocola.controller;

import static javazoom.jlgui.basicplayer.BasicPlayer.STOPPED;
import static javazoom.jlgui.basicplayer.BasicPlayer.UNKNOWN;

import java.io.File;

import javazoom.jlgui.basicplayer.BasicPlayer;
import umg.estructura.rocola.model.Cancion;
import umg.estructura.rocola.model.Cola;

public class Reproductor extends Thread {

	final Cola cola;
	private BasicPlayer player = new BasicPlayer();
	private String enReproduccion = "";

	public Reproductor(final Cola cola) {
		super();
		this.cola = cola;
	}

	@Override
	public void run() {
		try {
			while (true) {
				if (this.isStop()) {
					final Cancion cancion = this.cola.pop();
					if (cancion != null) {
						this.enReproduccion = cancion.getNombre();
						System.out.println("Reproduciendo: " + this.enReproduccion);
						this.player.open(new File(cancion.getUbicacion()));
						this.player.play();
					}else{
						this.enReproduccion = null;
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public boolean isStop() throws InterruptedException {
		super.sleep(2000);
		return (this.player.getStatus() == UNKNOWN) || (this.player.getStatus() == STOPPED);
	}

	public String getEnReproduccion(){
		return this.enReproduccion;
	}

}
