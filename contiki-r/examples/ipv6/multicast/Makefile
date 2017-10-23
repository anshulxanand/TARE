DEFINES+=PROJECT_CONF_H=\"project-conf.h\"
APPS+=powertrace
CONTIKI_PROJECT = root intermediate sink
all: $(CONTIKI_PROJECT)

CONTIKI = ../../..

MODULES += core/net/ipv6/multicast

CONTIKI_WITH_IPV6 = 1
include $(CONTIKI)/Makefile.include
