FROM registry.access.redhat.com/ubi8/ubi

RUN mkdir -p /app \
 && echo "Hello from OpenShift CI/CD 🚀" > /app/index.html

WORKDIR /app

CMD ["python3", "-m", "http.server", "8080"]
