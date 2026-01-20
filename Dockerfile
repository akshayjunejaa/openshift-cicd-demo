FROM registry.access.redhat.com/ubi8/ubi
RUN echo "Hello from OpenShift CI/CD 🚀" > /var/www/html/index.html
CMD ["python3", "-m", "http.server", "8080"]
