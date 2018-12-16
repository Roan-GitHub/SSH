<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
 <table align="center" border=1>
 <tr>
 <th width=120px><a href="user_login_show.action">本站首页</a></th>
 <th width=120px><a href="user_dynamic_info_dongtai.action">物流动态</a></th>
 <th width=120px><a href="user_logistics_knowledge_zhishi.action">物流知识</a></th>
 <th width=120px><a href="user_goods_goods.action">货物信息</a></th>
 <th width=120px><a href="user_car_car.action">车辆信息</a></th>
 <th width=120px><a href="user_company_company.action">企业信息</a></th>
 <th width=120px><a href="user_rukou.action">退出登录</a></th>
 </tr>
 </table>
  <div style="color: red;">
			<s:fielderror />
	</div>
 <s:form action="user_shouye_admin" method="post">
 <table align="left" border=1>
 <tr>
 <td></td>
 <td>管理员登录：</td></tr>
 <tr>
 <td>用户名：</td>
 <td>
 <input type="text" name="admin.username" size=19></td></tr>
 <tr>
 <td>密码：</td>
 <td><input type="password" name="admin.password"></td></tr>
 <tr>
 <td></td>
 <td><input type="submit" value="登录"></td><tr>
 <tr><td><br></td></tr>
 <tr>
 <td><a href="user_Insert">会员注册</a></td>
 <td><a href="user_select">找回密码</a></td>
 </tr>
 </table>
 </s:form>
 
  <table align="right" border=1>
 <tr>
 <th width=180px height=120px >公告</th>
 </tr>
  <% 
    String noticetitle = (String)session.getAttribute("notice");
    String [] noti = noticetitle.split(",");
    for(int i=0; i<noti.length; i++)
    {
      out.print("<tr><td><a href='user_notice_show?noticetitle="+noti[i]+"'>"+noti[i]+"</a></td></tr>");
    }
 %> 
 </table>

  <table align="center" border=1 width=700px height=300px>
  <tr><td><br></td></tr>
 <tr>
 <th align="left">货物信息</th>
 </tr>
 <%
    String  goodsname = (String)session.getAttribute("goods");
    String [] gs = goodsname.split(",");
    for(int y=0; y<gs.length; y++)
    {
      out.print("<tr><td><a href='user_goods_show.action?goodsname="+gs[y]+"'>"+gs[y]+"</a></td></tr>");
    }
 %> 
 <tr><td><br></td></tr>
 <tr>
 <th align="left">企业信息</th>
 </tr>
  <%
    String  companyname = (String)session.getAttribute("company");
    String [] comp = companyname.split(",");
    for(int m=0; m<comp.length; m++)
    { 
      out.print("<tr><td><a href='user_company_show?companyname="+comp[m]+"'>"+comp[m]+"</a></td></tr>");
    }
 %> 
 <tr><td><br></td></tr>
 <tr>
 <th align="left">车辆信息</th>
 </tr>
  <%
    String  carinfo = (String)session.getAttribute("car");
    String [] cafo = carinfo.split(",");
    for(int n=0; n<cafo.length; n++)
    {
       out.print("<tr><td><a href='user_car_show?carinfo="+cafo[n]+"'>"+cafo[n]+"</a></td></tr>");
    }
 %> 
 </table>
</body>
</html>