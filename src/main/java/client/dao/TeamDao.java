package client.dao;

import client.dto.Team;
import informationOfBD.bdConection.DataSource;

public class TeamDao extends Dao<Team> {

    public TeamDao() {
        super(DataSource.getInstance());
    }
}
