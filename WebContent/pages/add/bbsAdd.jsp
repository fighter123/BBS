<%@ page contentType="text/html; charset=gb2312"%>
<%@ taglib uri="struts-html" prefix="html" %>
<%@ taglib uri="struts-bean" prefix="bean" %>
<%@ taglib uri="struts-logic" prefix="logic" %>

<html>
  <head>
    <title>��������</title>  
    <link href="css/common.css" type="text/css" rel="stylesheet"/>
	<link href="css/index.css" type="text/css" rel="stylesheet"/>
	
  </head>
  <body>
    <center>
      <!-- �������� -->
	  <table border="1" width="99%" cellspacing="0" cellpadding="0" bordercolor="#E3E3E3" bordercolorlight="#E3E3E3" bordercolordark="white" rules="all" style="margin-top:8">
      <html:form action="needLogin/addBbs.do" enctype="multipart/form-data"  focus="bbsTitle">
          <input type="hidden" name="method" value="addBbs">
          <input type="hidden" name="validate" value="yes">
		  <tr bgcolor="#F0F0F0" height="30"><td colspan="2" style="text-indent:5" background="images/index/classT.jpg"><b><font color="white">�� ��������</font></b></td></tr>          
          <tr>
              <td width="27%" bgcolor="#F9F9F9" align="center" valign="top">
                  <table border="0" width="99%">
                      <tr><td><html:errors property="bbsTitle"/></td><tr>
            		  <tr><td><html:errors property="bbsContent"/></td></tr>
                  </table>
                  <table style="margin-top:10">
                      <tr>
                      	  <td valign="top" width="99%">
                      	          ������ɣ�<br><br>         	                  
           	                      <li>�벻Ҫ����Σ������ķǷ���Ϣ��</li>
           	                      <li>�벻Ҫ�����ַ�������������Ϣ��</li>
           	                      <li>�벻Ҫ�����������ݣ�</li>           	                  
           	              </td>
                      </tr>
                      <tr height="40"><td align="center">Υ�����Ϲ����������ĺ���Ը���</td></tr>
                  </table>
              </td>
              <td>
                  <table border="1" width="100%" cellspacing="0" cellpadding="0" bordercolor="#E3E3E3" bordercolorlight="#E3E3E3" bordercolordark="white" rules="rows">
                      <tr>
                      <center>
			          �ϴ���Ƶ:<input id="file1" type="file" name="file1"><br/>
			          </center>
			          </tr>
                      <tr height="30">
                          <td width="15%" align="center">�����⡿</td>
                          <td align="center"><html:text property="bbsTitle" size="77" maxlength="35" styleId="title"/></td>
                      </tr>
                      <tr bgcolor="#F9F9F9">
                          <td align="center">�����顿</td>
                          <td align="center"><%@ include file="face.jsp" %></td>
                      </tr>
                      <tr height="30">
                          <td align="center">�����ݡ�</td>
                          <td align="center"><%@ include file="font.jsp"%></td>
                      </tr>
                      <tr height="30" bgcolor="#F9F9F9">
                          <td colspan="2" align="right" valign="bottom"><%@ include file="count.jsp" %></td>
                      </tr>
                      <tr><td colspan="2" align="center"><html:textarea property="bbsContent" rows="15" cols="79" styleId="content" onkeydown="check(content,ContentUse,ContentRem,1000)" onkeyup="check(content,ContentUse,ContentRem,1000)" onchange="check(content,ContentUse,ContentRem,1000)"/></td></tr>
                      <tr height="30" align="center">
                          <td colspan="2">
                               <input type="submit"value="��������" onclick="upload()">
                              <input type="reset" value="������д">
                          </td>
                      </tr>
                  </table>
              </td>
          </tr>
      </html:form>
      </table>
    </center>
  <script src="js/jquery-1.7.2.js"></script>
  <script src="js/imgUp.js"></script>
  <script type="text/javascript">
  function upload()
  {
  	var form = new FormData(document.getElementById("1"));
  	$.ajax({			
				type: "POST",
				url: "MediaService",
				data:form,
				processData:false,
                contentType:false,
				success: function(data) 
				{					
					alert(data);
					if(data=="�ɹ�")
						{
						
						}				
				}
		    }); 		
  	
  
  }
  	
  
  </script>
  </body>  
</html>