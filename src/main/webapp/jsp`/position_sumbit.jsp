<%@ page contentType="text/html;charset=gbk"
	import="java.io.*,javax.servlet.*,com.util.MyConverter,com.model.DB"
	import="com.model.DB"%>

<%
	String param1 = request.getParameter("params1").trim();//����
	String param2 = request.getParameter("params2").trim();//γ��
	String param3 = request.getParameter("params3").trim();//�˺�
	//   String param4=request.getParameter("params3").trim();//

	String longtitude = MyConverter.unescape(param1);
	String latitude = MyConverter.unescape(param2);
	String uid = MyConverter.unescape(param3);
	//  String mess01=MyConverter.unescape(param4);

	double longtitude02 = Double.parseDouble(longtitude);
	double latitude02 = Double.parseDouble(latitude);

	String sql = "update user set longtitude='" + longtitude02
			+ "',latitude ='" + latitude02 + "'  where uid='" + uid
			+ "'";

	DB.update(sql);

	System.out.print("�ϴ�����λ����Ϣ�ɹ�");
	//System.out.print(param1);
	//System.out.print(param3);
%>