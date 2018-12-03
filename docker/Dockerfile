FROM centos:7

RUN yum install -y '@Development Tools' bzip2-devel openssl-devel readline-devel sqlite-devel libffi-devel
RUN curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
ADD bashrc /root/.bashrc
RUN source /root/.bashrc \
    && pyenv install 3.3.7 \
    && pyenv install 3.7.1 \
    && pyenv global 3.3.7
