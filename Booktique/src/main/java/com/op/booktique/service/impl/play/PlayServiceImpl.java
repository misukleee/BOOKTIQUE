package com.op.booktique.service.impl.play;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.op.booktique.mapper.play.PlayMapper;
import com.op.booktique.service.play.PlayService;
import com.op.booktique.vo.show.ShowVo;

@Service
public class PlayServiceImpl implements PlayService {
	
	@Autowired
	PlayMapper playMapper;

	@Override
	public List<ShowVo> playList() {
		return this.playMapper.playList();  
	}

	@Override
	public List<ShowVo> playRec(ShowVo showVo) {
		return this.playMapper.playRecList(showVo);
	}

	@Override
	public List<ShowVo> playHot(ShowVo showVo) {
		return this.playMapper.playHot(showVo);
	}
 
	
}
