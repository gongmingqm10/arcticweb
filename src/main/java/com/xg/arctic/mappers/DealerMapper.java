package com.xg.arctic.mappers;

import com.xg.arctic.model.Dealer;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;


import java.util.List;

/**
 * User: gongming
 * Date: 7/25/14
 * Time: 12:03 PM
 * Email:gongmingqm10@foxmail.com
 */
public interface DealerMapper {
    @Select(
            "SELECT id, dealerName, type, salerName, phone, address, province FROM dealer"
    )
    List<Dealer> findAllDealers();

    @Select(
            "SELECT id, dealerName, type, salerName, phone, address, province FROM dealer" +
                    " where province =  #{province}"
    )
     //#{province}
    List<Dealer> findDealerByProvince(String province);

    @Delete(
            "DELETE FROM dealer WHERE id = #{id}"
    )
    void deleteDealerById(long id);

    @Update(
            "UPDATE dealer " +
                    "SET dealerName=#{param2}, type=#{param3}, salerName=#{param4}," +
                    " phone=#{param5}, address=#{param6}" +
                    " WHERE id=#{param1}"
    )
    void updateDealerById(long id, String dealer, String type, String saler, String phone, String address);

}
