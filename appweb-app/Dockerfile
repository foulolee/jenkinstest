FROM 211.34.229.48:5000/basic11:latest

# 기본 이미지에 기존 앱이 있으면 제거(있을 수도 있어서 안전하게)
RUN rm -rf /usr/local/tomcat/webapps/*

# ✅ Maven이 만든 WAR 넣기
COPY target/ROOT.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
