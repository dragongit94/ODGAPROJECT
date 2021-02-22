package odga.bt.service;

import java.util.List;

import odga.bt.domain.S_Planer;
import odga.bt.domain.Touritems;
<<<<<<< HEAD
=======
import odga.bt.vo.SearchResult;
>>>>>>> e0575f89807002bde1fe6699ad7a8aaeaac686ae
import odga.bt.vo.Searchcode;
import odga.bt.vo.TotalList;

public interface PlannerService {	
	List<Touritems> selectDayById(long p_id, long sp_day);
<<<<<<< HEAD
	List<Touritems> searchedList(String searchOption, String keyword);
=======
	SearchResult searchedList(Searchcode searchcode);
>>>>>>> e0575f89807002bde1fe6699ad7a8aaeaac686ae
	int countContent(String searchOption, String keyword);
	void insert_sp(S_Planer s_planer);
	void delete_sp(long sp_id);
	
<<<<<<< HEAD
	TotalList listS();
	List<Touritems> selectResultS(Searchcode searchcode);
=======
	TotalList listS(long m_id);
	List<Touritems> selectResultS(Searchcode searchcode);
	void newPlanerS(long m_id);
>>>>>>> e0575f89807002bde1fe6699ad7a8aaeaac686ae
}
