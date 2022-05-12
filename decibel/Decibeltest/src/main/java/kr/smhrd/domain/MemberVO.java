package kr.smhrd.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MemberVO {
	private String member_id;
		private String member_pw;
		private String member_name;
		private String member_email;
		private String member_nickname;
		private String member_joindate;
		private String admin_yn;
		
@Override
	public String toString() {
		return "MemberVO [member_email "+member_id+",password="+member_pw+"]";
	}
	}


