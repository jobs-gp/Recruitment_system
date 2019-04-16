package example.service;

import example.pojo.Resume;

import java.util.List;

public interface IResumeService {
    List<Resume> getAllResume(String userid);

    List<Resume> getAllResumer(String positions,String userid);

    List<Resume> getEmployResumeById(String resumeid);

    int insertResume(String realname,String idnum,String sex,String education,String school,String languages,String lanlevel,String comlevel,String major,String workexp,String positions,String exsalary,String phonenum,String email,String qq,String nowaddress);

    void deleteresume(java.io.Serializable id);

    Resume getResumeById(String id);

    int updater(String id,String realname,String idnum,String sex,String education,String school,String languages,String lanlevel,String comlevel,String major,String workexp,String positions,String exsalary,String phonenum,String email,String qq,String nowaddress);

}
