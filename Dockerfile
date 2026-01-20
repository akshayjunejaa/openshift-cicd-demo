FROM registry.access.redhat.com/ubi8/ubi

RUN yum install -y python3 \
    && mkdir -p /app \
    && echo "Hello from OpenShift CI/CD 🚀" > /app/index.html \
    && yum clean all

WORKDIR /app

EXPOSE 8080

CMD ["python3", "-m", "http.server", "8080"]
