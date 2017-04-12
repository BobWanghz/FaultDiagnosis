package cn.edu.hdu.lab505.innovation.service;

import static org.junit.Assert.*;

import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.edu.hdu.lab505.innovation.domain.DeviceStatusBean;
import cn.edu.hdu.lab505.innovation.domain.ErrorDevice;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class ErrorDeviceServiceTest {

	@Autowired
	private IErrorDeviceService service;
	@Test
	public void test() {
		List<DeviceStatusBean> ds = service.GatherDeviceStatus();
		for(DeviceStatusBean status : ds){
			System.out.println(status.toString());			
			
		}
			
	}
	@Test
	public void test2(){
		List<ErrorDevice> ed = service.getErrorDeviceById(1);
		for(ErrorDevice e : ed){
			System.out.println(e.toString());
		}
		
	}
	
	@Test
	public void test3(){
		ErrorDevice ed = new ErrorDevice();
		ed.setProductId(1);
		ed.setBeginTime(new Date());
		ed.setDataId(1);
		service.insertErrorDevice(ed);
	}
	@Test
	public void test4(){
		service.updateErrorDevice(1, "xiaoWang");
	}

}
