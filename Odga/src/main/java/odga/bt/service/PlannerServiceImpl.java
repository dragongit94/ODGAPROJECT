package odga.bt.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
<<<<<<< HEAD
=======
import lombok.extern.log4j.Log4j;
>>>>>>> e0575f89807002bde1fe6699ad7a8aaeaac686ae
import odga.bt.domain.Area_T;
import odga.bt.domain.S_Planer;
import odga.bt.domain.Sigungu_T;
import odga.bt.domain.Touritems;
import odga.bt.mapper.PlannerMapper;
<<<<<<< HEAD
import odga.bt.vo.Searchcode;
import odga.bt.vo.TotalList;

=======
import odga.bt.vo.SearchResult;
import odga.bt.vo.Searchcode;
import odga.bt.vo.TotalList;

@Log4j
>>>>>>> e0575f89807002bde1fe6699ad7a8aaeaac686ae
@Service
@AllArgsConstructor
public class PlannerServiceImpl implements PlannerService {
    private PlannerMapper plannerMapper; //Spring 4.3 ~: AutoInjection (with @AllArgsConstructor ) 
    
	@Override
	public List<Touritems> selectDayById(long p_id, long sp_day) {
		return plannerMapper.selectDayById(p_id,sp_day);
	}
	
	@Override
<<<<<<< HEAD
	public List<Touritems> searchedList(String searchOption, String keyword) {
		return plannerMapper.searchedList(searchOption,keyword);
	}
	@Override
	public int countContent(String searchOption, String keyword) {
		return plannerMapper.countContent(searchOption,keyword);
=======
	public SearchResult searchedList(Searchcode searchcode) {
		//return plannerMapper.searchedList(searchcode);

		List<Touritems> lists = plannerMapper.selectResult(searchcode);
		int count = plannerMapper.countContent(searchcode);
		System.out.println(count);
		SearchResult searchResult = new SearchResult(lists, count);
		return searchResult;
	}
	@Override
	public int countContent(String searchOption, String keyword) {
		return -1;
>>>>>>> e0575f89807002bde1fe6699ad7a8aaeaac686ae
	}
	@Override
	public void insert_sp(S_Planer s_planer) {
		plannerMapper.insert_sp(s_planer);
	}
	@Override
	public void delete_sp(long sp_id) {
		plannerMapper.delete_sp(sp_id);
	}
	@Override
<<<<<<< HEAD
	public TotalList listS() {
=======
	public TotalList listS(long m_id) {
		//newPlanerS(m_id); //신규 플래너 id 생성
>>>>>>> e0575f89807002bde1fe6699ad7a8aaeaac686ae
		ArrayList<Area_T> list = plannerMapper.list();
		//for(Area_T li:list) System.out.println(li.getArea());
		ArrayList<Sigungu_T> list_s = plannerMapper.list_s();
		TotalList totalList = new TotalList(list, list_s);
		if(list.size()==0) {
			//System.out.println("## 아무것도 안나옴");
			return null;
		}else {
			//System.out.println("## 들어있음");
			return totalList;
		}
	}
	@Override
	public List<Touritems> selectResultS(Searchcode searchcode) { 
		List<Touritems> list = plannerMapper.selectResult(searchcode);
		
		return list;
	}
<<<<<<< HEAD
	
=======
	@Override
	public void newPlanerS(long m_id) {
		plannerMapper.newPlaner(m_id);
	}
>>>>>>> e0575f89807002bde1fe6699ad7a8aaeaac686ae
}
