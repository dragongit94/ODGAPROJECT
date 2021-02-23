package odga.bt.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import odga.bt.domain.Area_T;
import odga.bt.domain.Planer;
import odga.bt.domain.S_Planer;
import odga.bt.domain.Sigungu_T;
import odga.bt.domain.Touritems;
import odga.bt.mapper.PlannerMapper;
import odga.bt.vo.SearchResult;
import odga.bt.vo.Searchcode;
import odga.bt.vo.TotalList;
@Transactional
@Log4j
@Service
@AllArgsConstructor
public class PlannerServiceImpl implements PlannerService {
    private PlannerMapper plannerMapper; //Spring 4.3 ~: AutoInjection (with @AllArgsConstructor ) 
    
	@Override
	public List<Touritems> selectDayById(long p_id, long sp_day) {
		return plannerMapper.selectDayById(p_id,sp_day);
	}
	
	/*@Override
	public List<Touritems> searchedList(String searchOption, String keyword) {
		return plannerMapper.searchedList(searchOption,keyword);
	}
	@Override
	public int countContent(String searchOption, String keyword) {
		return plannerMapper.countContent(searchOption,keyword);
	}*/
	@Override
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
	public TotalList listS(long m_id) {
		//newPlanerS(m_id); //�떊洹� �뵆�옒�꼫 id �깮�꽦
		ArrayList<Area_T> list = plannerMapper.list();
		//for(Area_T li:list) System.out.println(li.getArea());
		ArrayList<Sigungu_T> list_s = plannerMapper.list_s();
		TotalList totalList = new TotalList(list, list_s);
		if(list.size()==0) {
			//System.out.println("## �븘臾닿쾬�룄 �븞�굹�샂");
			return null;
		}else {
			//System.out.println("## �뱾�뼱�엳�쓬");
			return totalList;
		}
	}
	@Override
	public List<Touritems> selectResultS(Searchcode searchcode) { 
		List<Touritems> list = plannerMapper.selectResult(searchcode);
		
		return list;
	}
	@Override
	public void newPlanerS(long m_id) {
		plannerMapper.newPlaner(m_id);
	}

	@Override
	public void save(Planer planer) {
		plannerMapper.save(planer);
		
	}
}
