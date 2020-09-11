#
# ################# #
# #  Dockerfile ## #
# ############### #
#
# Author: David J. Meier
# Email: dmeier@vmware.com
#
##################################################
# CONTAINER BASE
FROM vmware/powerclicore:latest

LABEL authors="dmeier@vmware.com"

RUN \
echo "### Installing additional binaries..." && \
yum upgrade -y && \
yum install -y ncurses iputils bindutils

CMD ["/bin/pwsh"]
