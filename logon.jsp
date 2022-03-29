
	<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="com.properties.PropertyLoader" %>  
<%@page import="com.resource.ResourceBundleHandler"%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
	<%
	   String imageFolder = PropertyLoader.getFolderName(request.getLocale().toString());
	   ResourceBundleHandler resourceBundleHandler = new ResourceBundleHandler("logon",request.getLocale());
	   String languageCode=PropertyLoader.getFolderName(request.getLocale().toString());
	   response.setHeader("Cache-Control", "private");	
	   response.addHeader("X-Frame-Options", "SAMEORIGIN");
	   response.addHeader("X-Content-Type-Options", "nosniff");
	   response.setHeader("Cache-Control", "no-store"); /* IJTI-1211 */
	 %>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title><%=resourceBundleHandler.gettingValueFromBundleforTitle("INTEGRAL")%></title>	
		<LINK REL="StyleSheet" HREF="theme/style.css" TYPE="text/css">  
		<script language='javaScript' src='js/xmlReader.js'></script>	
		<Script language="javascript" type="text/javascript">
			String.prototype.trim= function()  
			{    
   				 return this.replace(/(^\s*)|(\s*$)/g, "");  
			}	
			
			function submitform(form){ 
			  var sorce = this.document.getElementById("loginId").src;
			  //alert(sorce);
			 // var sorceafter=sorce.replace(".gif","_after.gif");
             userid = document.getElementById("userid");
				password = document.getElementById("password");
				if(userid.value.trim().length == 0){
					//alert("Please input your user name!");
					document.getElementById('usernameErr').innerHTML="Username cann't be null!";
					return false;
				}else{
					document.getElementById('usernameErr').innerHTML="";
				}
				if(password.value.trim().length == 0 ){
					//alert("Please input your password !");
					document.getElementById('passwordErr').innerHTML="Password cann't be null!";
					return false;
				}else{
					document.getElementById('passwordErr').innerHTML="";
				}
				form.action="LoginServlet";
           
			}
					

function changeMouseover(thi){
   var sorce=thi.src;
   if(sorce.indexOf("_after")==-1){
   var img1 = new Image();
   img1.src=sorce.replace(".png","_hover.png");
   thi.src=img1.src; 
   }
}

function changeMouseout(thi){
   var sorce=thi.src;
   if(sorce.indexOf("_after")==-1){
   var img1 = new Image();
   img1.src=sorce.replace("_hover.png",".png");
   thi.src=img1.src; 
   }
}
		</Script>
	</head>
<body style="overflow:hidden;">

<table align="center"  width="690">
	<tr>
				<td height="100"></td>
			
			</tr>
		<tr>
			<td height="400" background="screenFiles/<%=imageFolder%>/logon_NEW.jpg">
			<img style="height:50px; width:85px; position:relative; top:5px; left:10px;" src="screenFiles/<%=imageFolder%>/dxc_symbol.jpg">
			
			<form id="signin" name="signin" method="post"
			onsubmit="return submitform(this);" autocomplete="off">
			<table align="left"  width="41%">
	
		<tr>
				
				<td height="190" width="15"></td>
			</tr>
				<tr>
				<td width="15"></td>
				<td align="left" width="65" >&nbsp;</td>
				<td width="114" style="font-family: Arial, Helvetica, sans-serif;	font-size: 12px;"><b><%=resourceBundleHandler.gettingValueFromBundle("UserID")%></b></td>
				</tr>
				<tr>
				<td width="15"></td>
				<td align="left" width="65" style="font-family: Arial, Helvetica, sans-serif;	font-size: 12px;">&nbsp;</td>
				<td width="114"><input class="input_cell" style="width:109px; height:18px; " id="userid"  name="userid" type="text" value="" ></td>
				</tr>
				<tr>
				<td width="15"></td>
				<td height="10" width="65"></td>
				<td width="114"><span id="usernameErr" style="color:red; font-size:11px;"></span></td>
				</tr>
				<tr>
				<td width="15"></td>
				<td align="left" width="65" >&nbsp;</td>
				<td width="114" style="font-family: Arial, Helvetica, sans-serif;	font-size: 12px;"><b><%=resourceBundleHandler.gettingValueFromBundle("Password")%></b>
				</td>
				</tr>
				<tr>
				<td width="15"></td>
				<td align="left" width="65" style="font-family: Arial, Helvetica, sans-serif;	font-size: 12px;">&nbsp;</td>
				<td width="114"><input class="input_cell" style="width:109px; height:18px; "  id="password" name="password" type="password" value="" autocomplete="off">
				</td>
				</tr>
				<tr>
				<td width="15"></td>
				<td height="10" width="65"></td>
				<td width="114"><span id="passwordErr" style="color:red; font-size:11px;"></span></td>
				<tr>
				<td width="15"></td>
				<td align="left" width="65" >&nbsp;</td>
				<td width="114" style="font-family: Arial, Helvetica, sans-serif;	font-size: 12px;"><b><%=resourceBundleHandler.gettingValueFromBundle("Tenant ID")%></b></td>
				</tr>
				<tr>
				<td width="15"></td>
				<td align="left" width="65" style="font-family: Arial, Helvetica, sans-serif;	font-size: 12px;">&nbsp;</td>
				<td width="114"><input class="input_cell" style="width:109px; height:18px; " id="tenantid"  name="tenantid" type="text" value="" ></td>
				</tr>
				<tr>
				<td width="15"></td>
				<td height="10" width="65"></td>
				<td width="114"><span id="tenantidErr" style="color:red; font-size:11px;"></span></td>
				</tr>
			</tr>
			
			<tr>
				<td width="15"></td>
				<td height="10" width="65">
				
				</td>
				<td width="114"><input id="loginId" type="image" src="screenFiles/<%=imageFolder%>/btn_login.png" border="0"  onMouseOver="changeMouseover(this)" onMouseOut="changeMouseout(this)"></td>
			</tr>
		</table>
		</form>
		</td>
	</tr>
	<tr>
		<td align="center" width="690" height="4">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<%
		String blockUserMsg=(String)request.getSession().getAttribute("msg1"); // IPB-254
		if (request.getAttribute("isWrong") != null && (blockUserMsg == null ||  blockUserMsg != "2" ) ) {
			String isWrong = (String) request.getAttribute("isWrong");
			String message = (String) request.getAttribute("message");
			if (isWrong.equals("1")) {%>
				<span style="color:red">
					<%=resourceBundleHandler.gettingValueFromBundle("Sorry")%>
				</span>
			<%}
										}
									%>
		</td>
	</tr>
</table>
<script type="text/javascript">
	// IPB-254
    function blockUser() {
    	var msg= <%= (String)request.getSession().getAttribute("msg1") %>
   		if(msg!=null &&  msg == "2" ){	
   	         alert("Syetem is on hold for batch submission. Please visit next time");
  		         return false;
   	   }else{
   		  return true;
   	   } 
	}
</script>
<script type="text/javascript"> window.onload = blockUser ; </script>
 <!-- IPB-254 -->
  <% request.getSession().removeAttribute("msg1"); %>
</body>
</html>


