# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low

/sbin/service 'pcscd' start
/sbin/chkconfig --level 0123456 'pcscd' on