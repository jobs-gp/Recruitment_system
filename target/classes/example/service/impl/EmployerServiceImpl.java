package example.service.impl;

import example.dao.IEmpolyerDao;
import example.pojo.Employer;
import example.service.IEmployerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpSession;

@Component
public class EmployerServiceImpl implements IEmployerService {

    @Autowired
    private IEmpolyerDao empolyerDao;

    @Override
    public String getCompanyId(HttpSession session) {
        String account = (String) session.getAttribute("employerName");
        Employer employer = empolyerDao.findEmployerByAccount(account);
        if (null != employer) {
            return employer.getCompanyId();
        }
        return null;
    }


    @Override
    public Employer HrLogin(Employer employer){
        return empolyerDao.findEmployer(employer);
    }
}
