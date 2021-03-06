# This script was automatically generated from 
#  http://www.gentoo.org/security/en/glsa/glsa-200411-17.xml
# It is released under the Nessus Script Licence.
# The messages are release under the Creative Commons - Attribution /
# Share Alike license. See http://creativecommons.org/licenses/by-sa/2.0/
#
# Avisory is copyright 2001-2005 Gentoo Foundation, Inc.
# GLSA2nasl Convertor is copyright 2004 Michel Arboi <mikhail@nessus.org>

if (! defined_func('bn_random')) exit(0);

if (description)
{
 script_id(15692);
 script_version("$Revision: 1.2 $");
 script_xref(name: "GLSA", value: "200411-17");

 desc = 'The remote host is affected by the vulnerability described in GLSA-200411-17
(mtink: Insecure tempfile handling)


    Tavis Ormandy from Gentoo Linux discovered that mtink uses insecure permissions on temporary files.
  
Impact

    A local attacker could create symbolic links in the temporary files directory, pointing to a valid file somewhere on the filesystem. When mtink is executed, this would result in the file being overwritten with the rights of the user running the utility, which could be the root user.
  
Workaround

    There is no known workaround at this time.
  

Solution: 
    All mtink users should upgrade to the latest version:
    # emerge --sync
    # emerge --ask --oneshot --verbose ">=net-print/mtink-1.0.5"
  

Risk factor : Medium
';
 script_description(english: desc);
 script_copyright(english: "(C) 2005 Michel Arboi <mikhail@nessus.org>");
 script_name(english: "[GLSA-200411-17] mtink: Insecure tempfile handling");
 script_category(ACT_GATHER_INFO);
 script_family(english: "Gentoo Local Security Checks");
 script_dependencies("ssh_get_info.nasl");
 script_require_keys('Host/Gentoo/qpkg-list');
 script_summary(english: 'mtink: Insecure tempfile handling');
 exit(0);
}

include('qpkg.inc');
if (qpkg_check(package: "net-print/mtink", unaffected: make_list("ge 1.0.5"), vulnerable: make_list("lt 1.0.5")
)) { security_warning(0); exit(0); }
