# perl-tools
misc perl tool

---

## maillog_dateformat_conv.pl
Mail date format(eg postfix) is 'Jan 01 00:00:00'.  
ISO8601 date format is 1970-01-01T00:00:00+09:00'.  

When Using syslog-ng and ts_format is iso, log output is the latter.  
But pflogsumm(maillog analyze tools) use the former format.  
so convert script is needed.  

### example
perl maillog_dateformat_conv.pl /var/log/maillog | pflogsumm

---
