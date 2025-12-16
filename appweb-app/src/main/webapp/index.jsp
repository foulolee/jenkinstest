<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <title>Jenkins Build Test</title>
</head>
<body>
  <h1>✅ Jenkins 빌드 성공!</h1>
  <p>서버 시간: <%= new java.util.Date() %></p>
  <p>호스트: <%= request.getServerName() %></p>
  <p>URI: <%= request.getRequestURI() %></p>
</body>
</html>
