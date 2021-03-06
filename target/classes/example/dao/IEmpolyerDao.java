package example.dao;

import example.pojo.Employer;
import org.apache.ibatis.annotations.Param;

public interface IEmpolyerDao {

    /**
     * 根据登陆账号获取雇主信息
     * @param account
     * @return
     */
    Employer findEmployerByAccount(@Param("account") String account);


    Employer findEmployer(Employer employer);

    int addEmployer(Employer newEmployer);


//    List<User> getAllUsers();
//    //接口形式定义了数据库操作方法
//
//    int insertUsers(User user);
//
//    void deleteUser(java.io.Serializable id);
//
//    int updateUsers(User edituser);
//
//
//    List<User> findUserById(@Param("autoid") String autoid);
////    public User selectByName(String username);


}
