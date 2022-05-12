package kr.smhrd.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
 
public class WordVO {

	private int id_num;
	private String member_id;
	private String sted_word;
	private String stwi_word;
	
}
