package example.dao;

import example.pojo.Deliveryrecord;
import example.pojo.Resume;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IResumeDao {

    List<Resume> getAllResumes(@Param("userid") String userid);

    List<Resume> getAllResumer(@Param("positions") String positions,@Param("userid") String userid);

    Resume getEmployResumeDetail(@Param("resumeid") String resumeid);

    Resume getEmpResume(@Param("userid") String userid);

    int insertResumes(Resume resumes);
    //接口形式定义了数据库操作方法

    List<Resume> findResumeById(@Param("resumeid") String resumeid);

    int updater(Resume resume);

    void deleteresume(java.io.Serializable id);

//    List<Resume> findDeliverDetail(@Param("resumeid")String resumeid,@Param("userid")String userid);



}

