package test.md.mapper;

import java.util.ArrayList;
import java.util.List;

import test.md.domain.Area_T;
import test.md.domain.Sigungu_T;
import test.md.domain.Touritems;
import test.md.vo.Searchcode;

public interface Area_T_Mapper {
	ArrayList<Area_T> list();
	ArrayList<Sigungu_T> list_s();
	ArrayList<Touritems> selectResult(Searchcode searchcode);
}
