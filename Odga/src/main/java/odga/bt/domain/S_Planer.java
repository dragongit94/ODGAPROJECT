package odga.bt.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class S_Planer {
	private long sp_id;
	private long sp_day;
	private Date sp_sday;
	private Date sp_eday;
	private String contentid;
	private long p_id;
	private Touritems touritems;
}
