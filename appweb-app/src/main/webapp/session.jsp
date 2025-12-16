<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>

<%
    // 세션 ID
    String sessionId = session.getId();

    // 세션에 카운터 저장
    Integer count = (Integer) session.getAttribute("count");
    if (count == null) {
        count = 1;
    } else {
        count++;
    }
    session.setAttribute("count", count);

    // 서버 정보
    String host = request.getServerName();
    String node = System.getenv("HOSTNAME"); // Kubernetes Pod 이름
%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Session Cluster Test</title>
</head>
<body>
    <h1>🧪 Tomcat Session Cluster Test</h1>

    <ul>
        <li><b>Session ID:</b> <%= sessionId %></li>
        <li><b>Session Count:</b> <%= count %></li>
        <li><b>Server Name:</b> <%= host %></li>
        <li><b>Pod Name:</b> <%= node %></li>
        <li><b>Time:</b> <%= new Date() %></li>
    </ul>

    <hr/>

    <p>
        <a href="session.jsp">🔄 새로고침</a> |
        <a href="session.jsp?reset=true">♻ 세션 초기화</a>
    </p>

    <%
        if ("true".equals(request.getParameter("reset"))) {
            session.invalidate();
    %>
        <p style="color:red;">세션이 초기화되었습니다. 다시 새로고침하세요.</p>
    <%
        }
    %>

</body>
</html>
