<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	int count = 1;
	String[] eiQuestion = {"단체 활동에 참여하는 일을 즐긴다.", // e
						   "단체에서 지도자 역할을 맡는 일은 가능한 피하고 싶다.", // i
						   "다른 사람의 주의를 끌지 않으려고 하는 편이다.", // i
						   "혼자보다는 다른 사람과 시간을 보내고 싶어한다.", // e
						   "친구에게 먼저 만나자고 연락하는 편이다."}; // e
	
	String[] nsQuestion = {"자유 시간 중 상당 부분을 다양한 관심사를 탐구하는 데 할애한다.", // n
						   "자신에게 예술적 성향이 거의 없다고 생각한다.", // s
						   "예술 작품의 다양한 해석에 대해 토론하는 일에는 크게 관심이 없다.", // s
						   "사후세계에 대한 질문이 흥미롭다고 생각한다.", // n
						   "이론 중심의 토론에는 관심이 없으며 원론적인 이야기는 지루하다고 생각한다."}; // s
	
	String[] tfQuestion = {"다른 사람이 울고 있는 모습을 보면 자신도 울고 싶어질 때가 많다.", // f
						   "자신과 배경이 완전히 다른 사람에게는 공감하기 어렵다", // t
						   "다른 사람의 감정을 이해하기 힘들 때가 많다.", // t
						   "상대방의 잘못이라는 것이 명백할 때도 상대방의 체면을 살려주기 위해 노력한다.", // f
						   "자신보다는 남의 성공을 돕는 일에서 더 큰 만족감을 느낀다."}; // f
	
	String[] pjQuestion = {"일정이나 목록으로 계획을 세우는 일을 좋아한다.", // j
						   "하루 일정을 계획하기보다는 즉흥적으로 하고 싶은 일을 하는 것을 좋아한다.", // p
						   "휴식을 취하기 전에 집안일을 먼저 끝내기를 원한다.", // j
						   "자신만큼 효율적이지 못한 사람을 보면 짜증이 난다.", // j
						   "해야 할 일을 마지막까지 미룰 때가 많다."}; // p
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="mbti_test_succeed.mbti" method="post">
		<h1>MBTI TEST</h1>
	 	문항에 동의하지 않을수록 왼쪽, 동의할수록 오른쪽을 선택해주세요.<br>
	 	가능하면 답변 시 중립을 선택하지 말아주세요.
	 	
		<% for(int i = 0; i < 5; i++){ %>
			<h3><%= count + "번 : "+ eiQuestion[i] %></h3>
			아니다
			<input type = radio name="<%=count %>" value="-3">
			<input type = radio name="<%=count %>" value="-2">
			<input type = radio name="<%=count %>" value="-1">
			<input type = radio name="<%=count %>" value="0" checked>
			<input type = radio name="<%=count %>" value="1">
			<input type = radio name="<%=count %>" value="2">
			<input type = radio name="<%=count %>" value="3">
			그렇다<br>
			<h3><%= count+1 + "번 : "+ nsQuestion[i] %></h3>
			아니다
			<input type = radio name="<%=count+1 %>" value="-3">
			<input type = radio name="<%=count+1 %>" value="-2">
			<input type = radio name="<%=count+1 %>" value="-1">
			<input type = radio name="<%=count+1 %>" value="0" checked>
			<input type = radio name="<%=count+1 %>" value="1">
			<input type = radio name="<%=count+1 %>" value="2">
			<input type = radio name="<%=count+1 %>" value="3">
			그렇다<br>
			<h3><%= count+2 + "번 : "+ tfQuestion[i] %></h3>
			아니다
			<input type = radio name="<%=count+2 %>" value="-3">
			<input type = radio name="<%=count+2 %>" value="-2">
			<input type = radio name="<%=count+2 %>" value="-1">
			<input type = radio name="<%=count+2 %>" value="0" checked>
			<input type = radio name="<%=count+2 %>" value="1">
			<input type = radio name="<%=count+2 %>" value="2">
			<input type = radio name="<%=count+2 %>" value="3">
			그렇다<br>
			<h3><%= count+3 + "번 : "+ pjQuestion[i] %></h3>
			아니다
			<input type = radio name="<%=count+3 %>" value="-3">
			<input type = radio name="<%=count+3 %>" value="-2">
			<input type = radio name="<%=count+3 %>" value="-1">
			<input type = radio name="<%=count+3 %>" value="0" checked>
			<input type = radio name="<%=count+3 %>" value="1">
			<input type = radio name="<%=count+3 %>" value="2">
			<input type = radio name="<%=count+3 %>" value="3">
			그렇다<br>
		
		<% count+=4;} %>
		<br>
		<input type="submit" value="결과 보기">
		
	</form>
</body>
</html>