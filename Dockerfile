FROM ubuntu
COPY --from=hashicorp/terraform:0.12.0 /bin/terraform /bin/
RUN apt-get update
#COPY . .
#CMD ["/bin/terraform --version"]
