package cn.edu.hdu.lab505.innovation.util;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateUtill {

	public static String getPreDay(){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		Calendar ca = Calendar.getInstance();
		ca.add(Calendar.DATE, -7);//一周
		date = ca.getTime();
		
		return sdf.format(date);
	}
}
