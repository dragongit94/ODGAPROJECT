package odga.bt.mapper;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import odga.bt.domain.Area_T;
import odga.bt.domain.S_Planer;
import odga.bt.domain.Sigungu_T;
import odga.bt.domain.Touritems;
import odga.bt.vo.Searchcode;

@Mapper
public interface PlannerMapper {
	List<Touritems> selectDayById(@Param("p_id")long p_id,@Param("sp_day")long sp_day);
<<<<<<< HEAD
	List<Touritems> searchedList(@Param("searchOption")String searchOption,@Param("keyword") String keyword);
	int countContent(@Param("searchOption")String searchOption,@Param("keyword") String keyword);
=======
	List<Touritems> searchedList(Searchcode searchcode);
	int countContent(Searchcode searchcode);
>>>>>>> e0575f89807002bde1fe6699ad7a8aaeaac686ae
	void insert_sp(S_Planer s_planer);
	void delete_sp(long sp_id);
	ArrayList<Area_T> list();
	ArrayList<Sigungu_T> list_s();
	ArrayList<Touritems> selectResult(Searchcode searchcode);
<<<<<<< HEAD
=======
	void newPlaner(long m_id);
>>>>>>> e0575f89807002bde1fe6699ad7a8aaeaac686ae
}

