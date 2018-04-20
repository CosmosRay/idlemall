package com.idlemall.cosmos.action.homePage;

import com.idlemall.cosmos.action.base.BaseAction;

/**页面详情页Action
 * @author CosmosRay
 *
 */
@SuppressWarnings("serial")
public class DetailPageAction extends BaseAction {

	/**
	 * 第一次进入页面不做任何操作
	 * @return
	 */
	public String enterOne(){
		return "success";
	}
}
