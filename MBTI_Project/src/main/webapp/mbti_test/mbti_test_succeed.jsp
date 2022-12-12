<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%	
	request.setCharacterEncoding("utf-8");
	String answer = "";
	
	int ei1 = Integer.parseInt(request.getParameter("1"));
	int ei2 = -1 * Integer.parseInt(request.getParameter("5"));
	int ei3 = -1 * Integer.parseInt(request.getParameter("9"));
	int ei4 = Integer.parseInt(request.getParameter("13"));
	int ei5 = Integer.parseInt(request.getParameter("17"));
	int eiAnswer = ei1 + ei2 + ei3 + ei4 + ei5;
	
	int sn1 = -1 * Integer.parseInt(request.getParameter("2"));
	int sn2 = Integer.parseInt(request.getParameter("6"));
	int sn3 = Integer.parseInt(request.getParameter("10"));
	int sn4 = -1 * Integer.parseInt(request.getParameter("14"));
	int sn5 = Integer.parseInt(request.getParameter("18"));
	int snAnswer = sn1 + sn2 + sn3 + sn4 + sn5;
	
	int ft1 = Integer.parseInt(request.getParameter("3"));
	int ft2 = -1 * Integer.parseInt(request.getParameter("7"));
	int ft3 = -1 * Integer.parseInt(request.getParameter("11"));
	int ft4 = Integer.parseInt(request.getParameter("15"));
	int ft5 = Integer.parseInt(request.getParameter("19"));
	int ftAnswer = ft1 + ft2 + ft3 + ft4 + ft5;
	
	int jp1 = Integer.parseInt(request.getParameter("4"));
	int jp2 = -1 * Integer.parseInt(request.getParameter("8"));
	int jp3 = Integer.parseInt(request.getParameter("12"));
	int jp4 = Integer.parseInt(request.getParameter("16"));
	int jp5 = -1 * Integer.parseInt(request.getParameter("20"));
	int jpAnswer = jp1 + jp2 + jp3 + jp4 + jp5;
	
	if(eiAnswer > 0){
		answer += "e";
	} else {
		answer += "i";
	}
	
	if(snAnswer >= 0){
		answer += "s";
	} else {
		answer += "n";
	}
	
	if(ftAnswer >= 0){
		answer += "f";
	} else {
		answer += "t";
	}
	
	if(jpAnswer > 0){
		answer += "j";
	} else {
		answer += "p";
	}
	
	request.setAttribute("answer", answer); //검사 결과 히스토리 만들기 위함
	request.getRequestDispatcher("/mbti_test/mbti_test_result.mbti").forward(request, response);
	
	
%>
