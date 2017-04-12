package cn.edu.hdu.lab505.innovation.dao;

import java.util.List;

import cn.edu.hdu.lab505.innovation.domain.Data2Device;
import cn.edu.hdu.lab505.innovation.domain.ErrorDevice;
import cn.edu.hdu.lab505.innovation.domain.Product;

/**
 * 
 * @author cs
 * @date 2017年4月11日
 */
public interface IErrorDeviceDao {

	public List<ErrorDevice> getPreErrorDevice();					//获取一周内故障设备信息,进行下一步汇总成状态
	public List<ErrorDevice> getByProductId(int id);				//根据ProductId,获取一周内故障设备信息
	public ErrorDevice getById(long id);						//根据Id,获取一条故障设备信息
	public boolean updateErrorDevice(ErrorDevice e);
	
	public List<Data2Device> getDeviceInfo(); 						//获取data2device表，缓存到table中。避免重复查询数据库
	public void insert(ErrorDevice entity);

}
