package test.md.vo;

import java.util.ArrayList;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import test.md.domain.Area_T;
import test.md.domain.Sigungu_T;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class TotalList {
	private ArrayList<Area_T> list;
	private ArrayList<Sigungu_T> list_s;
}
