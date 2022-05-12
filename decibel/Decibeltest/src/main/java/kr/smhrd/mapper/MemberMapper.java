package kr.smhrd.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import kr.smhrd.domain.MemberVO;

@Mapper
public interface MemberMapper {

	public void memberInsert(MemberVO member);
	
	@Select("select * from tbl_member where member_email = #{member_email} and member_pw = #{member_pw}")
	public MemberVO mLogin(MemberVO member);
	//아이디와 패스워드 비교 -> 동일하면 넘겨줌
}
