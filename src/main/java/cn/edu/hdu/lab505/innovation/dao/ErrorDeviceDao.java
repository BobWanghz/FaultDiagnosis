package cn.edu.hdu.lab505.innovation.dao;

import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import cn.edu.hdu.lab505.innovation.common.AbstractHibernateCurdDaoSupport;
import cn.edu.hdu.lab505.innovation.domain.Data2Device;
import cn.edu.hdu.lab505.innovation.domain.ErrorDevice;
import cn.edu.hdu.lab505.innovation.domain.Product;
import cn.edu.hdu.lab505.innovation.util.DateUtill;

/**
 * 
 * @author cs
 * @date 2017年4月11日
 */
@Repository
public class ErrorDeviceDao extends AbstractHibernateCurdDaoSupport<ErrorDevice> implements IErrorDeviceDao{

	private static List<Data2Device> table;				//data2device缓存，避免重复查询数据库
	
	@Override
    public List<ErrorDevice> getPreErrorDevice() {
		String hql="from ErrorDevice e WHERE e.beginTime >= '" + DateUtill.getPreDay() + "' AND e.updateMan is null";
		//String hql="from ErrorDevice e WHERE e.beginTime >= '" + DateUtill.getPreDay() + "'";
        List<ErrorDevice> list = (List<ErrorDevice>)getHibernateTemplate().find(hql);
       
            return list;
        
    }
	
	@Override
	public List<Data2Device> getDeviceInfo() {
		
		 if(table == null){
			 String hql="FROM Data2Device d";    
		     table = (List<Data2Device>)getHibernateTemplate().find(hql);		     
		 }
		 return table;		 
	}

	@Override
	public List<ErrorDevice> getByProductId(int id) {
		  String hql="from ErrorDevice e WHERE e.beginTime >= '" + DateUtill.getPreDay() + "' AND e.product.id = ?";
	        List<ErrorDevice> list = (List<ErrorDevice>)getHibernateTemplate().find(hql,id);
	       
	            return list;
	}
	/**
	 * 获取被更改过的ErrorDevice的list，即其中的updateMan字段不空的数据
	 * @author WHZ
	 * @return ErrorDevice组成的list
	 * */
	@Override
	public List<ErrorDevice> getPreChangedErrorDevice(){
		String hql="from ErrorDevice e WHERE e.beginTime >= '" + DateUtill.getPreDay() + "' AND e.updateMan is not null";
        List<ErrorDevice> list = (List<ErrorDevice>)getHibernateTemplate().find(hql);
       
            return list;
        
	}
	public void insert(ErrorDevice entity) {
		getHibernateTemplate().save(entity);
		
	}

	@Override
	public ErrorDevice getById(long id) {
		String hql="from ErrorDevice e WHERE e.id = ?";
        ErrorDevice e = (ErrorDevice)getHibernateTemplate().find(hql,id).get(0);
        return e;
	}


	@Override
	public boolean updateErrorDevice(ErrorDevice ed) {
		
		try {
			getHibernateTemplate().update(ed);
			return true;
		} catch (Exception e) {
			return false;
		}
				
	}
	
	


}
