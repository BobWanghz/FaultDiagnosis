package cn.edu.hdu.lab505.innovation.controller.admin;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.apache.log4j.Logger;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

import org.springframework.beans.factory.annotation.Autowired;

import cn.edu.hdu.lab505.innovation.domain.DataBean;
import cn.edu.hdu.lab505.innovation.domain.DeviceStatusBean;
import cn.edu.hdu.lab505.innovation.domain.ErrorDevice;
import cn.edu.hdu.lab505.innovation.service.IErrorDeviceService;
import cn.edu.hdu.lab505.innovation.service.ISensorDataService;
import cn.edu.hdu.lab505.innovation.service.Exception.SensorDataIndexOutOfBoundsException;

/**
 * 
 * @author cs
 * @date 2017年4月11日
 */

@Path("/device")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class DeviceCtrl {
 
	private static final Logger LOGGER = Logger.getLogger(DeviceCtrl.class);
    @Autowired
    private IErrorDeviceService service;
    @Autowired
    private ISensorDataService sensorDataService;
    
    @GET
    @Path("/getStatus")
    //@Produces(MediaType.APPLICATION_JSON)
    public List<DeviceStatusBean> getDeviceStatus(){
    	List<DeviceStatusBean> status = new ArrayList<DeviceStatusBean>();
    	status = service.GatherDeviceStatus();	
    	return status;
    	
    }
    
    @GET
    @Path("getInfo/{productId}")
    //@Produces(MediaType.APPLICATION_JSON)
    public List<ErrorDevice> getErrorDeviceInfo(@PathParam("productId") int productId){
    	List<ErrorDevice> status = new ArrayList<ErrorDevice>();
    	status = service.getErrorDeviceById(productId);	
    	return status;
    	
    }
    /*
    @GET
    @Path("getErrorDataInfo/{productId}/{dataId}")
    @Produces(MediaType.APPLICATION_JSON)
    public List<ShowData> getErrorDataInfo(@PathParam("productId") int productId, 
    		@PathParam("productId") int dataId, @QueryParam("start") String start, @QueryParam("limit") String limit){
    	List<ShowData> data = new ArrayList<ShowData>();
    	data = deviceService.getData(productId, dataId, start, limit);	
    	return data;
    	
    }*/
    @GET
    @Path("getData/{productId:\\d+}/{sensorNo:\\d+}")
    public List<DataBean> findSerialData(@PathParam("productId") int productId, @PathParam("sensorNo") int sensorNo, @QueryParam("start") String startString, @QueryParam("limit") String limitString) throws SensorDataIndexOutOfBoundsException {
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date start = null;
        Date limit = null;
        try {
            start = format.parse(startString);
            limit = format.parse(limitString);
        } catch (ParseException e) {
            LOGGER.error(e);
        }
        return sensorDataService.findSerialData(productId, sensorNo, start, limit);

    }
    
    @PUT
    //@Path("update/{id}/{name}")
    @Path("update/{id}")
    public Boolean updateErrorDevice(@PathParam("id") long id ,@QueryParam("name") String name){
    	
    	return service.updateErrorDevice(id, name);
    }
    
    
}
