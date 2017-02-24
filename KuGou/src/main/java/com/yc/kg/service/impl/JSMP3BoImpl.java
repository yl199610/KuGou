package com.yc.kg.service.impl;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;

import com.yc.kg.entity.JSMP3Bo;

public class JSMP3BoImpl implements JSMP3Bo {

	@Override
	public String getLrcContent(File file) {
		StringBuilder sb = new StringBuilder();
		String inputLine;
		try {
			BufferedReader read = new BufferedReader(new InputStreamReader(new FileInputStream(file), "GB2312"));
			while ((inputLine = read.readLine()) != null) {
				sb.append("," + "\"" + inputLine + "\"");
			}
			read.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "[" + sb.toString().substring(1) + "]";
	}

}
