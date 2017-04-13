package cn.edu.hdu.lab505.innovation.util;

import static org.junit.Assert.*;

import java.util.Date;

import org.junit.Test;

public class DateUtillTest {

	@Test
	public void test() {
		Date date = new Date();
		System.out.println(DateUtill.dateToString(date));
	}

}
