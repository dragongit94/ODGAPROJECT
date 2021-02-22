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
<<<<<<< HEAD
	private String sp_sday;
	private String sp_eday;
=======
	private Date sp_sday;
	private Date sp_eday;
>>>>>>> e0575f89807002bde1fe6699ad7a8aaeaac686ae
	private String contentid;
	private long p_id;
	private Touritems touritems;
}
