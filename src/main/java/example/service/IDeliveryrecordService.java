package example.service;

import example.dto.ResumeDto;
import example.pojo.Deliveryrecord;

import java.util.List;

public interface IDeliveryrecordService {

int adddeliveryrecord(String positionid,String resumeid,String userid,String realname,String positions);

Deliveryrecord getDeliveryRecordById(String id);
int updateDeliver(String id, String acceptorrefuse);


List<Deliveryrecord> getAllRecord(String positionid);


List<Deliveryrecord> getPerDeliveryById(String userid);


}
