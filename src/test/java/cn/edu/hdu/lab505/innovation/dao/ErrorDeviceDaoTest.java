package cn.edu.hdu.lab505.innovation.dao;

import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


import cn.edu.hdu.lab505.innovation.dao.IErrorDeviceDao;
import cn.edu.hdu.lab505.innovation.domain.Data2Device;
import cn.edu.hdu.lab505.innovation.domain.ErrorDevice;
import cn.edu.hdu.lab505.innovation.domain.Product;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class ErrorDeviceDaoTest {

	@Autowired
	private IErrorDeviceDao dao;
	/*private static ApplicationContext context = null;
	private static IErrorDeviceDao dao = null;
	
	@BeforeClass
	public static void beforeClass() {
			context = new ClassPathXmlApplicationContext("applicationContext.xml");
			dao = context.getBean(IErrorDeviceDao.class);
	}*/

	@Test
	public void test() {
		
		List<ErrorDevice> ed = dao.getPreErrorDevice();
		for(ErrorDevice e : ed){
			
			//System.out.println(e.getProduct().getName());
			System.out.println(e.getId() + "  " + e.getBeginTime());

		}
		
	}
	
	@Test
	public void test2() {
		List<Data2Device> dd = dao.getDeviceInfo();
		for(Data2Device d : dd)
		System.out.println(d.getId() + ": " + d.getDataName() + "  " + d.getDeviceName());
		
	}
	
	
	@Test
	public void test4() {
		List<ErrorDevice> ed = dao.getPreErrorDevice();
		for(ErrorDevice e : ed)
		System.out.println(e.getId() + "" +e.getProduct().getName());
		
	}
	
	@Test
	public void test5() {
		List<ErrorDevice> ed = dao.getByProductId(1);
		for(ErrorDevice e : ed)
		System.out.println(e.getId() + "" +e.getProduct().getName());
		
	}
	
/*	@Test
	public void test6() {
		Product p = new Product();
		p.setId(1);
		//p = dao.getProductById(1);
		//System.out.println("name: " + p.getName());
		ErrorDevice ed = new ErrorDevice();
		ed.setBeginTime(new Date());
		ed.setProduct(p);
		dao.insert(ed);
		
	}
	
	@Test
	public void test7(){
		System.out.println(dao.getById(1));
	}
	
	@Test
	public void test8(){
		dao.updateErrorDevice(1, "cscscs");
		System.out.println(dao.getById(1));
	}*/

}
