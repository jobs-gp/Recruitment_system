package example.dao;

import example.pojo.Deliveryrecord;
import example.pojo.Resume;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IDeliveryDao {

    int adddeliveryrecords(Deliveryrecord deliveryrecord);


    List<Deliveryrecord> findDeliverById(@Param("deliverid")String deliverid);
    int updateById(Deliveryrecord deliveryrecords);

    /**
     * 根据职位编号查出 userid、deliverid、resumeid
     */
    List<Deliveryrecord> getRecord(@Param("positionid")String positionid);

    List<Deliveryrecord> selectInfoByPrimaryKey(@Param("userid")String userid);

}
