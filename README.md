#While Running Dockerfile I have pull Centos6 image from existing 

#Example of Dockerfile (Assignment 1) to pull CentOS 6 image
FROM scratch
MAINTAINER https://github.com/CentOS/sig-cloud-instance-images
ADD centos-6-docker.tar.xz /

LABEL name="CentOS Base Image" \
    vendor="CentOS" \
    license="GPLv2" \
    build-date="20170315"

CMD ["/bin/bash"]
