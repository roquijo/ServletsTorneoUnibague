package controllers.controller;

import client.collection.NodeList;
import client.dao.FacultyDao;
import client.dao.PlayerDao;
import client.dto.Faculty;
import client.dto.Player;
import mvc.graphics.player.PlayerInfoPanel;
import informationOfBD.dto.Dto;
import informationOfBD.dto.PlayerDto;
import informationOfBD.persistence.serverSocket.TypeOperation;

import java.util.ArrayList;
import java.util.List;


public class ControllerForPlayer {

    private static PlayerInfoPanel playerInfoPanel;

   // private static Player playerDto = new Player();

    public static void ControllerForDeletePlayer(int id) {

        Player playerDto = new Player(id);

        ControllerBuildObject.crearObjeto(Player.class, playerDto.delete(), TypeOperation.DELETE);

        ControllerForClient.getInstance(ControllerBuildObject.getObjetoCreado());
        ControllerForClient.runClient();
    }

    public static void ControllerForAddPlayer(Player player) {

        ControllerBuildObject.crearObjeto(Player.class,player.insert(), TypeOperation.INSERT);

        ControllerForClient.getInstance(ControllerBuildObject.getObjetoCreado());
        ControllerForClient.runClient();

    }

    public static void ControllerForUpdatePlayer(Player player){

        ControllerBuildObject.crearObjeto(Player.class,player.update(), TypeOperation.UPDATE);

        ControllerForClient.getInstance(ControllerBuildObject.getObjetoCreado());
        ControllerForClient.runClient();
    }

    public static NodeList<Player> ControllerForReadPlayer() {

        Player player = new Player();
        PlayerDao playerDao = new PlayerDao();

        return playerDao.read(player);
    }

    public static List<Player> ControllerForReadPlayerList() {

        NodeList<Player> lista= ControllerForReadPlayer();
        List<Player> listCast = new ArrayList<>();

        if(!lista.isEmpty()){
            for (int i = 0; i < lista.getSize(); i++) {
                listCast.add(lista.pop(i));
            }
        }
        return listCast;
    }
}
