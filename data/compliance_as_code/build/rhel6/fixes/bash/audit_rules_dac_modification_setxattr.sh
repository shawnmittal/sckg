# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv

# Include source function library.
. /usr/share/scap-security-guide/remediation_functions

# First perform the remediation of the syscall rule
# Retrieve hardware architecture of the underlying system
[ "$(getconf LONG_BIT)" = "32" ] && RULE_ARCHS=("b32") || RULE_ARCHS=("b32" "b64")

for ARCH in "${RULE_ARCHS[@]}"
do
	PATTERN="-a always,exit -F arch=$ARCH -S setxattr.*"
	GROUP="perm_mod"
	FULL_RULE="-a always,exit -F arch=$ARCH -S setxattr -F auid>=500 -F auid!=unset -F key=perm_mod"

	# Perform the remediation for both possible tools: 'auditctl' and 'augenrules'
	fix_audit_syscall_rule "augenrules" "$PATTERN" "$GROUP" "$ARCH" "$FULL_RULE"
	fix_audit_syscall_rule "auditctl" "$PATTERN" "$GROUP" "$ARCH" "$FULL_RULE"
done