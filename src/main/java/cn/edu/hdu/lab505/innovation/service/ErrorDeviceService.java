package cn.edu.hdu.lab505.innovation.service;

import java.beans.IntrospectionException;
import java.beans.PropertyDescriptor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.hdu.lab505.innovation.dao.IErrorDeviceDao;
import cn.edu.hdu.lab505.innovation.domain.Data2Device;
import cn.edu.hdu.lab505.innovation.domain.DeviceStatusBean;
import cn.edu.hdu.lab505.innovation.domain.ErrorDevice;
import cn.edu.hdu.lab505.innovation.domain.Product;
/**
 * 
 * @author cs
 * @date 2017年4月11日
 */
@Service
public class ErrorDeviceService implements IErrorDeviceService{

	@Autowired
	private IErrorDeviceDao dao;
	
	@Override
	public List<DeviceStatusBean> GatherDeviceStatus() {
		List<ErrorDevice> dfi =  dao.getPreErrorDevice();
		List<DeviceStatusBean> statusList = new ArrayList<DeviceStatusBean>();
		for(ErrorDevice d : dfi){							//遍历故障信息表(deviceFaultInfo),将1周内故障信息进行汇总
			boolean flag = false;   							//标记已存的statusList是否存在相同productId
			for(DeviceStatusBean status : statusList){			//遍历当前设备状态列表
				if(status.getProductId() == d.getProduct().getId()){	
				setDeviceStatus(status, d.getDataId());			//如果列表已存在该产品状态,设置当前产品其他设备状态
				flag = true;
				}
			}
			
			if(!flag){				//未遍历到
				DeviceStatusBean temp = new DeviceStatusBean();	//新建一个设备状态			
				int id = d.getProduct().getId();
				String name = d.getProduct().getName();
				
				temp.setProductId(id);
				temp.setProductName(name);
				setDeviceStatus(temp, id);
				statusList.add(temp);
										
			}
				
		}
			
		return statusList;
	}
	
	@Override
	public void setDeviceStatus(DeviceStatusBean status, int dataId){
		String deviceName = null;
		List<Data2Device> table = dao.getDeviceInfo();
		deviceName = getDevice(table, dataId).getDeviceName();
		if(deviceName != null){
			PropertyDescriptor pd;
			Method setMethod;
			try {
				pd = new PropertyDescriptor(deviceName, status.getClass());
				setMethod = pd.getWriteMethod();
				setMethod.invoke(status, true);
			} catch (IntrospectionException e) {
				e.printStackTrace();
			} catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e) {
				e.printStackTrace();
			}
		}
				
	}

	@Override
	public Data2Device getDevice(List<Data2Device> table, int dataId) {
		for(Data2Device d : table){
			if(d.getDataId() == dataId)
				return d;
		}
		return null;
	}


	@Override
	public List<ErrorDevice> getErrorDeviceById(int id) {
		List<ErrorDevice> ed = dao.getByProductId(id);
		for(ErrorDevice e : ed){
			e.setProductName(e.getProduct().getName());
		}
		return ed;
	}

	@Transactional
	@Override
	public void insertErrorDevice(ErrorDevice ed) {
		Product p = new Product();
		p.setId(ed.getProductId());
		ed.setProduct(p);
		dao.insert(ed);
	}

	@Transactional
	@Override
	public boolean updateErrorDevice(long id, String name) {

		ErrorDevice e = dao.getById(id);
		e.setUpdateMan(name);
		if(name == null)
			e.setUpdateTime(null);
		else
			e.setUpdateTime(new Date());
		return dao.updateErrorDevice(e);
			
	}
	
}
