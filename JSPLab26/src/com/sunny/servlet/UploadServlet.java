package com.sunny.servlet;

import java.io.IOException;
import java.io.Writer;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


@WebServlet(name="uploadServlet",urlPatterns={"/upload.sunny"})



@MultipartConfig(
		
	location="E:/uploaded",				//where to upload complete address(path)
	fileSizeThreshold=1024*1014*10,		//at a time how much stream it has to read(i.e one time read)
	//if we do not use threshold than it will use default threshold
	maxFileSize=1024*1014*50			//maximum file size to upload
)


//before Servlet 3.0 we have to create file at server end and than write file to server
//location but After 3.0 all are done automatically with help of MultipartConfig annotation

public class UploadServlet extends HttpServlet {

	
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Collection<Part> parts=request.getParts();
		for(Part part:parts){
			System.out.println("Name	:"+part.getName());
			System.out.println("Header	:");
			for(String headerName:part.getHeaderNames()){
				System.out.println(headerName+"\t\t"+part.getHeader(headerName));
			}
			
			System.out.println("ContentType	:"+part.getContentType());
			System.out.println("InputStream	:"+part.getInputStream());
			System.out.println("Size of File :"+part.getSize());
			
			String fileinfo=part.getHeader("content-disposition");
			System.out.println(fileinfo);
			
			String fnames[]=fileinfo.split("\"");	//split on basis on delimiter "
			String fname=fnames[fnames.length-1];	
			//since last subString is file name so to get file name use length-1

			part.write(fname);	// the name of the file to which the stream will be written. The file is created relative to the location as specified in the MultipartConfig
		}
			
		Writer out=response.getWriter();
		out.write("<h1>File Successfully Uploaded to E:\\uploaded");

	}

	
}
