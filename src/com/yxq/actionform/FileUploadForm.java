package com.yxq.actionform;

import org.apache.struts.action.ActionForm;
import org.apache.struts.upload.FormFile;

public class FileUploadForm extends ActionForm
{
	private FormFile uploadFile;

	public FormFile getUploadFile()
	{
		return uploadFile;
	}

	public void setUploadFile(FormFile uploadFile)
	{
		this.uploadFile = uploadFile;
	}
	
}
