package example.dao;

import example.pojo.Company;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

public interface ICompanyDao {


    /**
     * 根据登录HR获取公司信息
     * @param companyId
     * @return
     */
    Company findCompanyById(@Param("companyId") String companyId);
}
