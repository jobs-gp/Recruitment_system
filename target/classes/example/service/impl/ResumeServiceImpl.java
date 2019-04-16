package example.service.impl;
import example.dao.IResumeDao;
import example.pojo.Resume;
import example.service.IResumeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.io.Serializable;
import java.util.List;

@Service
public class ResumeServiceImpl implements IResumeService {

    @Autowired
    private IResumeDao resumeDao;

    @Override
    public List<Resume> getAllResume(String userid) {
        return resumeDao.getAllResumes(userid);
    }

    @Override
    public List<Resume> getAllResumer(String positions,String userid) {
        return resumeDao.getAllResumer(positions,userid);
    }

    @Override
    public List<Resume> getEmployResumeById(String resumeid){
        return resumeDao.getEmployResumeDetail(resumeid);
    }


    @Override
    public int insertResume(String realname,String idnum,String sex,String education,String school,String languages,String lanlevel,String comlevel,String major,String workexp,String positions,String exsalary,String phonenum,String email,String qq,String nowaddress){
        Resume resumes = new Resume();
        resumes.setRealname(realname);
        resumes.setIdnum(idnum);
        resumes.setSex(sex);
        resumes.setEducation(education);
        resumes.setSchool(school);
        resumes.setLanguages(languages);
        resumes.setLanlevel(lanlevel);
        resumes.setComlevel(comlevel);
        resumes.setMajor(major);
        resumes.setWorkexp(workexp);
        resumes.setPositions(positions);
        resumes.setExsalary(exsalary);
        resumes.setPositions(positions);
        resumes.setExsalary(exsalary);
        resumes.setPhonenum(phonenum);
        resumes.setEmail(email);
        resumes.setQq(qq);
        resumes.setNowaddress(nowaddress);
        return resumeDao.insertResumes(resumes);
    }

    @Override
    public Resume getResumeById(String id)
    {
        List<Resume> resumess = resumeDao.findResumeById(id);
        if(resumess.size()>0){
            return resumess.get(0);
        }
        return null;
    }

    @Override
    public int updater(String id,String realname,String idnum,String sex,String education,String school,String languages,String lanlevel,String comlevel,String major,String workexp,String positions,String exsalary,String phonenum,String email,String qq,String nowaddress){
        System.out.println(id);
        Resume resume = new Resume();
        int resumeid=Integer.parseInt(id);
        resume.setResumeid(resumeid);
        resume.setRealname(realname);
        resume.setIdnum(idnum);
        resume.setSex(sex);
        resume.setEducation(education);
        resume.setSchool(school);
        resume.setLanguages(languages);
        resume.setLanlevel(lanlevel);
        resume.setComlevel(comlevel);
        resume.setMajor(major);
        resume.setWorkexp(workexp);
        resume.setPositions(positions);
        resume.setExsalary(exsalary);
        resume.setPhonenum(phonenum);
        resume.setEmail(email);
        resume.setQq(qq);
        resume.setNowaddress(nowaddress);
        return resumeDao.updater(resume);
    }


@Override
    public void deleteresume(Serializable id)

{
    resumeDao.deleteresume(id);
}


}


