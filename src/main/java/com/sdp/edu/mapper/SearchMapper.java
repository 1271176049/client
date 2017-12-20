package com.sdp.edu.mapper;

import java.util.List;

import com.sdp.edu.bean.T_MALL_USER_ACCOUNT;
import com.sdp.edu.vo.VO_ATTR_VALUE;
import com.sdp.edu.vo.VO_SKU_SPU_PP;

public interface SearchMapper {

	List<VO_SKU_SPU_PP> select_vo_sku_spu_pp(int class2id);

	List<VO_ATTR_VALUE> select_vo_attr_values(int class_2_id);

}
