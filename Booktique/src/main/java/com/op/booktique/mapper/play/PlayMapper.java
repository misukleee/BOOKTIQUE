package com.op.booktique.mapper.play;

import java.util.List;

import com.op.booktique.vo.show.ShowVo;

public interface PlayMapper {

	public List<ShowVo> playList();

	public List<ShowVo> playRecList(ShowVo showVo);

	public List<ShowVo> playHot(ShowVo showVo);  

} 


