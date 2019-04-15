package example.dao;

import example.pojo.Deliveryrecord;
import example.pojo.Position;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IPositionDao {

    List<Position> getAllPositions();

    List<Position> hrSelectById(String companyId);

//    List<Position> getPersonPositions();

    Position selectByPrimaryKey(String positionid);

    int insertPositions(Position position);

    List<Position> findPositionById(@Param("positionid") String positionid);

    int updateposition(Position posi);

    void deletePosition(java.io.Serializable id);

    /**
     * 根据公司ID获取全部职位信息
     * @param companyId
     * @return
     */
    List<Position> findPositionByCompanyId(@Param("companyId") String companyId);

    /**
     * 根据职位编号查出这个职位的详情
     */
    List<Position> selectCompanyPosition(@Param("positionid")String positionid);


}
