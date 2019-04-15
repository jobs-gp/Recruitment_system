package example.service.impl;

import example.dao.IEmployDao;
import example.pojo.Employ;
import example.service.IEmployService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class EmployServiceImpl implements IEmployService  {

    @Autowired
    private IEmployDao employDao;

    @Override
    public Employ login(Employ employ){
        return employDao.findEmploy(employ);
    }


}
