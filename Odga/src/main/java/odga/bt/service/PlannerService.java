package odga.bt.service;

import java.util.List;

import odga.bt.domain.S_Planer;
import odga.bt.domain.Touritems;
import odga.bt.vo.Searchcode;
import odga.bt.vo.TotalList;

public interface PlannerService {	
	List<Touritems> selectDayById(long p_id, long sp_day);
	List<Touritems> searchedList(String searchOption, String keyword);
	int countContent(String searchOption, String keyword);
	void insert_sp(S_Planer s_planer);
	void delete_sp(long sp_id);
	
	TotalList listS();
	List<Touritems> selectResultS(Searchcode searchcode);
}
