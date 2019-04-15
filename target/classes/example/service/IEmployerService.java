package example.service;

import example.pojo.Employer;

import javax.servlet.http.HttpSession;

public interface IEmployerService {

    /**
     * 根据当前登陆用户获取HR所在公司ID
     * @return
     */
    String getCompanyId( HttpSession session);

    Employer HrLogin(Employer employer);
}
