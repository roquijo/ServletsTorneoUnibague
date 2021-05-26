package mvc.graphics.player;

import mvc.graphics.addFrame.PlayerAddFrame;

import javax.swing.*;
import java.awt.*;
import java.io.IOException;

public class ImageOfPlayer extends JPanel {

    PlayerAddFrame addFrame;

    private static JLabel etiquetaImagen;
    private static String ruta;

        //Player

          public ImageOfPlayer()
            {
                FlowLayout fl = new FlowLayout();
                setLayout(fl);

                ImageIcon imagen = new ImageIcon(ruta);
                etiquetaImagen = new JLabel("");
                etiquetaImagen.setIcon(imagen);

                add(etiquetaImagen);
            }

            public String getRuta() {
                return ruta;
            }

            public static void setRuta(String pRuta) {
               ruta = pRuta;
            }

            public static void actualizarImagen(){
                ImageIcon imagen = new ImageIcon(ruta);
                if(etiquetaImagen != null){
                    etiquetaImagen.setIcon(imagen);
                }
            }
/*
    public  String getRuta() {
        return ruta;
    }

    public void setRuta(String ruta) {
        this.ruta = ruta;
    }

    public String getRuta() {
        return ruta;
    }

    public void setRuta(String ruta) {
        this.ruta = ruta;
    }

 */


}
