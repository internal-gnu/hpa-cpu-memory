# HPA 테스트를 위한 웹서버

# 아래의 환경에서 테스트 하였습니다.
- Ubuntu 22.04
- Kubernetes 1.27
- HPA V2

# URL
- **/** : 서버 및 nginx 의 정보 등을 표시합니다
- **/hpa/cpu** : 반복하여 요청을 보내면 text를 응답하여 CPU 부하를 측정합니다.
- **/hpa/memory** : nginx 와 연동된 CGI를 통해 10MB의 크기를 가지는 배열을 생성합니다. 메모리 부하를 증가시키기 위해 사용합니다.
