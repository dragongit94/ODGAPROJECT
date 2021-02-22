package test.md.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j;
import test.md.domain.Area_T;
import test.md.domain.Sigungu_T;
import test.md.domain.Touritems;
import test.md.mapper.Area_T_Mapper;
import test.md.vo.Searchcode;
import test.md.vo.TotalList;

@Service
public class Area_T_ServiceImpl implements Area_T_Service {
	@Autowired
	private Area_T_Mapper area_t_mapper;
		
	@Override
	public TotalList listS() {
		ArrayList<Area_T> list = area_t_mapper.list();
		//for(Area_T li:list) System.out.println(li.getArea());
		ArrayList<Sigungu_T> list_s = area_t_mapper.list_s();
		TotalList totalList = new TotalList(list, list_s);
		if(list.size()==0) {
			//System.out.println("## 아무것도 안나옴");
			return null;
		}else {
			//System.out.println("## 들어있음");
			return totalList;
		}
	};
	public List<Touritems> selectResultS(Searchcode searchcode) { 
		List<Touritems> list = area_t_mapper.selectResult(searchcode);
		
		return list;
	}
}
