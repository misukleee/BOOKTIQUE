package com.op.booktique.service.play;

import java.util.List;

import com.op.booktique.vo.show.ShowVo;

public interface PlayService {

	public List<ShowVo> playList();

	public List<ShowVo> playRec(ShowVo showVo);

	public List<ShowVo> playHot(ShowVo showVo);  

	 
}
