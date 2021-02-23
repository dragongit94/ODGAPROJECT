package odga.bt.mapper;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import odga.bt.domain.Area_T;
import odga.bt.domain.Planer;
import odga.bt.domain.S_Planer;
import odga.bt.domain.Sigungu_T;
import odga.bt.domain.Touritems;
import odga.bt.vo.Searchcode;

@Mapper
public interface PlannerMapper {
	List<Touritems> selectDayById(@Param("p_id")long p_id,@Param("sp_day")long sp_day);
	List<Touritems> searchedList(Searchcode searchcode);
	int countContent(Searchcode searchcode);
	void insert_sp(S_Planer s_planer);
	void delete_sp(long sp_id);
	ArrayList<Area_T> list();
	ArrayList<Sigungu_T> list_s();
	ArrayList<Touritems> selectResult(Searchcode searchcode);
	void newPlaner(long m_id);
	long thisP_id(long m_id);
	
	void delete_sPlan(long p_id);
	void delete_Plan(long p_id);
}

