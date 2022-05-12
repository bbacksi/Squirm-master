
package kr.smhrd.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SoundVO {
	
	private int sound_num;
	private String sound_file;
	private String sound_subject;
	private String sound_content;
	private Date upload_date;
	private String member_id;
	


}
