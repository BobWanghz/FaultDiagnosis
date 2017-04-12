package cn.edu.hdu.lab505.innovation.domain;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class ErrorDevice {
	
	private long id;
	@JsonIgnore
	private int productId;				//产品ID,不显示在数据库用作设置外键主键
	private int dataId;               	//t_sensordata 数据id
	private Date beginTime;				//开始时间
	private Date overTime;				//结束时间
	private int faultType;				//错误类型
	private String updateMan;			//修改人
	private Date updateTime;			//修改时间
	private String productName;
	
	@JsonIgnore
	private Product product;			
	
	
	@Id
	@GeneratedValue
	public long getId() {
		return id;
	}	
	public void setId(long id) {
		this.id = id;
	}
	
	@Transient
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public int getDataId() {
		return dataId;
	}
	public void setDataId(int dataId) {
		this.dataId = dataId;
	}
	public Date getBeginTime() {
		return beginTime;
	}
	public void setBeginTime(Date beginTime) {
		this.beginTime = beginTime;
	}
	public Date getOverTime() {
		return overTime;
	}
	public void setOverTime(Date overTime) {
		this.overTime = overTime;
	}
	public int getFaultTybe() {
		return faultType;
	}
	public void setFaultTybe(int faultTybe) {
		this.faultType = faultTybe;
	}
	public String getUpdateMan() {
		return updateMan;
	}
	public void setUpdateMan(String updateMan) {
		this.updateMan = updateMan;
	}
	public Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="productId")
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	@Transient
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	@Override
	public String toString() {
		return "ErrorDevice [id=" + id + ", dataId=" + dataId + ", beginTime=" + beginTime + ", overTime=" + overTime
				+ ", faultTybe=" + faultType + ", updateMan=" + updateMan + ", updateTime=" + updateTime
				+  "]";
	}
	
			
	
}
