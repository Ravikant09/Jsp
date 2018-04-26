package com.sunny.servlets;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class DownloadServlet extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String fname=request.getParameter("filename");
		String path=request.getRealPath("/");
		System.out.println(path);
		path=path+"WEB-INF/myfiles";
		File dir=new File(path);
		File file=new File(dir, fname);
		String mimeType=getServletContext().getMimeType(file.getName());
		if(mimeType==null){
			mimeType="application/octet-stream";
		}
		response.setContentLength((int)file.length()); //file.length is long type but contentLength is of int type so typecast
		response.setContentType(mimeType);
		
		if(file.getName().endsWith(".pdf")){
			response.addHeader("Content-Disposition", "inline;filename=\""+file.getName()+"\"");
		}
		else{
			response.addHeader("Content-Disposition", "attachment;filename=\""+file.getName()+"\"");
				
		}
		OutputStream os=response.getOutputStream();//for byte by byte display
		FileInputStream fis=new FileInputStream(file);
		while(true){
			int ab=fis.read();
			if(ab==-1)
				break;
			os.write(ab);
		
		}
	}

}
