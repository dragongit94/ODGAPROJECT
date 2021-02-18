package test.md.service;

import java.util.List;

import test.md.domain.Area_T;
import test.md.domain.Touritems;
import test.md.vo.Searchcode;
import test.md.vo.TotalList;

public interface Area_T_Service {
	TotalList listS();
	List<Touritems> selectResultS(Searchcode searchcode);
}
