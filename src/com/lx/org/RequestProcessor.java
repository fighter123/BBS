package com.lx.org;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.upload.MultipartRequestWrapper;
public class RequestProcessor extends org.apache.struts.action.RequestProcessor {
    protected void  doForward(String uri, HttpServletRequest request,  HttpServletResponse response) throws IOException, ServletException {
        HttpServletRequest myRequest = request;
        if (request instanceof MultipartRequestWrapper) {
            myRequest = ((MultipartRequestWrapper) request).getRequest();
        }
        super.doForward(uri, myRequest, response);
    }
}