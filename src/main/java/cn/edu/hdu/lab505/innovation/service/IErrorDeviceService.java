package cn.edu.hdu.lab505.innovation.service;

import java.util.List;

import cn.edu.hdu.lab505.innovation.domain.Data2Device;
import cn.edu.hdu.lab505.innovation.domain.DeviceStatusBean;
import cn.edu.hdu.lab505.innovation.domain.ErrorDevice;
/**
 * 
 * @author cs
 * @date 2017年4月11日
 */
public interface IErrorDeviceService {

	public List<DeviceStatusBean> GatherDeviceStatus();
	public void setDeviceStatus (DeviceStatusBean status, int dataId);			//设置对应Device
	Data2Device getDevice(List<Data2Device> table, int dataId);
	//public List<ErrorDevice> getPreErrorDevice();
	public List<ErrorDevice> getErrorDeviceById(int id);
	public void insertErrorDevice(ErrorDevice ed);
	public boolean updateErrorDevice(long id, String name);
	//public boolean revokeErrorDevice(long id);
}
