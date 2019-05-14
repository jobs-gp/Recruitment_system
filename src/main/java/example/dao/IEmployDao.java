package example.dao;

import example.pojo.Employ;

public interface IEmployDao {

    Employ findEmploy(Employ employ);

    int addEmploy(Employ newEmploy);
}
