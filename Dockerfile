FROM ubuntu
COPY --from=hashicorp/terraform:0.12.0 /bin/terraform /bin/
#COPY . .
#CMD ["/bin/terraform --version"]
