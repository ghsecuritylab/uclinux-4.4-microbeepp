IPTABLES_VERSION = 1.4.21
URL = http://www.netfilter.org/projects/iptables/files/iptables-$(IPTABLES_VERSION).tar.bz2
IPTABLES_INSTALL_DIR = build/iptables-$(IPTABLES_VERSION)-install
AUTORECONF = autoreconf -i
MAKEVARS =
UCFRONT_ENV = 

CONFOPTS := --prefix= --disable-xml

ifdef CONFIG_USER_IPTABLES_SHARED
CONFOPTS += --enable-shared --disable-static
else
CONFOPTS += --disable-shared --enable-static
endif
ifndef CONFIG_USER_IPTABLES_IPTABLES
CONFOPTS += --disable-ipv4
endif
ifndef CONFIG_USER_IPTABLES_IP6TABLES
CONFOPTS += --disable-ipv6
endif
ifdef CONFIG_IP_NF_QUEUE
CONFOPTS += --enable-libipq
endif

include $(ROOTDIR)/tools/automake.inc
