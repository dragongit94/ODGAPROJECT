package odga.bt.vo;

import java.util.ArrayList;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import odga.bt.domain.Planer;
import odga.bt.domain.S_Planer;
import odga.bt.domain.Touritems;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class DetailVo {
	private Planer planer;
	private List<S_Planer> s_planer;
	private List<Touritems> touritems;
}
