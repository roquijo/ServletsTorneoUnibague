package mvc.graphics.team;

import javax.swing.*;
import java.awt.*;

public class ImageOfTeam extends JPanel{

    private static JLabel etiquetaImagen;
    private static String ruta;

    public ImageOfTeam()
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
}
