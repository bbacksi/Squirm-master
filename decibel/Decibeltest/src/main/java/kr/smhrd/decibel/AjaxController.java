package kr.smhrd.decibel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import kr.smhrd.domain.SoundVO;
import kr.smhrd.domain.WordVO;
import kr.smhrd.mapper.Soundmapper;
import kr.smhrd.mapper.Wordmapper;

@RestController
public class AjaxController {
	
	@Autowired
	Soundmapper mapper;
	
	  @RequestMapping("/SoundListJson.do")
	   public List<SoundVO> SoundListJson(Model model) {
	      List<SoundVO> list = mapper.SoundList();
	      System.out.println(list);
	      return list;  
	   }
	
	  /* @Autowired
	  Wordmapper w_mapper;
	  /*@RequestMapping("/list.do")
	  public  @ResponseBody List<WordVO> stedlist(Model model){
	    	List<WordVO> list = w_mapper.WordList();
	    	System.out.println(list);
	    	return list;
	    }*/
	  /*@RequestMapping("/list.do")
	  public String stedlist(Model model){
	    	List<WordVO> list = w_mapper.WordList();
	    	System.out.println(list);
	    	model.addAttribute("vo", list);
	    	return "list";
	    }*/
	
}
