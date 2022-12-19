<!--
-----------------------------------------------------------------------------------------------
Date       Edit History   Name        Description
-----------------------------------------------------------------------------------------------
27/08/13      100        rponraj2  created
-----------------------------------------------------------------------------------------------
-->

<%@ page import= "webbeans.eCommon.*,java.util.*,java.sql.*,java.text.*, eBL.* ,eBL.Common.*,eCommon.Common.*" %>


<HTML>   
 
<HEAD>  
</HEAD>    

<!--
	<link rel='stylesheet' type ='text/css'  href='../../eCommon/html/IeStyle.css'</link> 
-->
<%
		String sStyle =		(session.getAttribute("PREFERRED_STYLE")!=null)||(session.getAttribute("PREFERRED_STYLE")!="")?(String)session.getAttribute("PREFERRED_STYLE"):"IeStyle.css";
%>
		<link rel='StyleSheet' href='../../eCommon/html/<%=sStyle%>' type='text/css'/>		 
		<script language="javascript" src='../js/AdditionalServiceDetailsScript.js'></script> 
		
<%
			String params = request.getQueryString() ;
			if(params==null || params.equals("")) params="";
			String function_id=request.getParameter("function_id");
			if(function_id==null || function_id.equals("")) function_id="";
			String url = "../../eCommon/jsp/commonToolbar.jsp?" ;
			String source = url + params ;

%>

	<frameset rows='42,*,50'>
			<FRAME name='commontoolbarFrame' src='<%=source%>' frameborder=0 scrolling='no' noresize >
			 <FRAME name='additionalServiceDetails' 	src='AdditionalServiceDetailsMainFrames.jsp' frameborder=0 scrolling='auto' noresize> 
			<FRAME name='messageFrame'		src='../../eCommon/jsp/error.jsp' frameborder=0 noresize scrolling='auto' noresize> 

	</FRAMESET>


</HTML>  