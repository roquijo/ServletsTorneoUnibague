package client.dao;

import informationOfBD.bdConection.DataSource;
import client.dto.Faculty;
import informationOfBD.dto.FacultyDto;

public class FacultyDao extends Dao<Faculty> {

    public FacultyDao() {
        super(DataSource.getInstance());
    }
}
