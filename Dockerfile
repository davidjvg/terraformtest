FROM ubuntu
COPY --from=hashicorp/terraform:0.12.0 /bin/terraform /bin/
RUN apt-get update
RUN terraform init
#COPY . .
#CMD ["/bin/terraform --version"]
