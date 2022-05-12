package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import kr.smhrd.domain.WordVO;

@Mapper
public interface Wordmapper {
	
	@Select("select * from tbl_word where member_id = 'echo'")
	public List<WordVO> WordList();
	

	public WordVO sted(WordVO word);
}
