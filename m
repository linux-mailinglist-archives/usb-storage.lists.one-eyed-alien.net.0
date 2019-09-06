Return-Path: <usb-storage+bncBDMYPB44VAFRBYPLZDVQKGQEB6DUBHI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x747.google.com (mail-qk1-x747.google.com [IPv6:2607:f8b0:4864:20::747])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F35AB5DF
	for <lists+usb-storage@lfdr.de>; Fri,  6 Sep 2019 12:33:06 +0200 (CEST)
Received: by mail-qk1-x747.google.com with SMTP id t26sf5928488qkt.0
        for <lists+usb-storage@lfdr.de>; Fri, 06 Sep 2019 03:33:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567765986; cv=pass;
        d=google.com; s=arc-20160816;
        b=d0y3kJxNn9eYhM76ts9fac8Tj2X9EnkUOqv0F9DTyFR+RHedVJc7ZmgpM9l2rRnKP/
         q5qbRhLjQuTqEL5dhGBiub0u8Gy3CCyVeuM4AZ85FiFpeLt40dgmyb7q2sVyF6XViWC+
         zGuWPD1rutgrgc80O/Qcok1OHJqdPFyExtMKeA37rqxhUI72AryAOQX1icTkIStw/d2g
         zXHys5f96qiG8dIINp1Nn23Kt7nowIoG3GOvvViJS61iqTzcnpnW9xRVcL5v9It3tc08
         2FHTvvbyU24IP/bG3skHNAaZb625rEZWibQ6Zs9V57oskpc8E6AMPFRSSqYk2/UCMdQL
         XwlQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=ElB1eveMmfn3IaZWviEwxalE/SvzlhNNOUCn7V5+LfQ=;
        b=RUuYsNF4HVSuqzv0wWvzR7tQqNXkXQAchUPgoFkjSsuuPSKsAWP6lwnC5RPbLrqG9C
         I3TyEpFpVTO50uGjg3UWx/00WnPf9BL2oZxq+/uOotY+RT72OJRPdISvcy+O3/Za9bdU
         mQdvq3wQoYkCQDX2usnSlKxPNcpMfs+EcOGVTEVAHOp/tFHqNSClhMgOOzmyrLgleCLw
         LOLX6Q1TYbxtxinLXj6y2/FSH3baWvlGfcoQsNIxtV1fGPe730BdIOnCqeuWbBErSLil
         HnYbo2x+BY9KQXK3DKLijT9ocJDhWumHPXlEVHG/k0qUS2cTX2DSAFrp6Zwj0GOpYN5A
         r6rQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZKx0qdxN;
       spf=pass (google.com: domain of 34tvyxqgkaaguimvvqkpowwotm.kwu@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=34TVyXQgKAAguimvvqkpowwotm.kwu@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ElB1eveMmfn3IaZWviEwxalE/SvzlhNNOUCn7V5+LfQ=;
        b=bvXjQPDzpF2SEGuyuAu+hszIaITdxagkdZA7Lkaj1xzyEubshr1zOEoHJaEdcm6drQ
         8SKneUtAY78WrL/DnO+NRkNQ3pRCqPpKfvRF69Jt2GLcxELkkxoRnJRsDgaqDKz2EVOx
         sr7ucCV5inK/GYlFuIpYKhVbzoMs0QqhPBS+A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ElB1eveMmfn3IaZWviEwxalE/SvzlhNNOUCn7V5+LfQ=;
        b=cbo/nwGhz5XaF+2J68FB1BnieJR+lQp76Zu+a7Nvox98RdfQ+z7Cr32Dynamq8XRPf
         dqpWylRile5g2NFJ9YnwvVknEH4NMf9kGfPcMSkFfq0CVilslTT/2q1Tc//3i0NF/QM6
         3ST7CbzyU9cIFkkdI8sVXlS3ICVtYbPBaX/4X2jIWPWmZQkkSz/jb8k2SWlGnSIkVJF2
         N9Y22SINFBJYdXLBudWaXsWKz8IP5PPV/grSlVmDSYy+r9AQzIUasJ2kiIcuXPlM55pa
         DdGyulXVkoKy7F4NvmenUii/ckAR5wKSUdZYreEkB6Gws2Vqw3BUTeQYyFsZ80NMyUUj
         Dxkw==
X-Gm-Message-State: APjAAAXxVgXGA7DVlL+JrREi8iixdCl+x33Qj22bMiD/9QzVY1HfAuC/
	UftBb3UtoUUX8dg/BRVp7mHHqQ==
X-Google-Smtp-Source: APXvYqx4L6QKlCiXV+lD2PKVYM1YLzxcKZwdlsW7hf3KbXemgILTCTC0bxaspVC4DUGwwLmqKZhaDg==
X-Received: by 2002:a37:6681:: with SMTP id a123mr7041725qkc.499.1567765985872;
        Fri, 06 Sep 2019 03:33:05 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a0c:ade5:: with SMTP id x34ls661420qvc.10.gmail; Fri, 06 Sep
 2019 03:33:05 -0700 (PDT)
X-Received: by 2002:a0c:8c0b:: with SMTP id n11mr4797396qvb.66.1567765985545;
        Fri, 06 Sep 2019 03:33:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567765985; cv=none;
        d=google.com; s=arc-20160816;
        b=jL413q2Gnd3huEbYsLFFPgaRXIwVaxEH/4YF18thZ5Zq82HuqYzlN9WZZBEz73NEd9
         DdQKSvaGMrgw+ErZdTEEh8+Vs4EMiYiRU3LR7fPJN7YvWhfNLnMrDpiO+2nmto/++bFL
         34fE5qLw1033+NR4yFFqyYU7hEkF0/IRhy/nQg/NN5/k6Hj2/XO+8RmI6ioU11GmZw9j
         WGsAt0Aiv/HHe/MPScbjTHh7cq0EsHnbUKlsIew2lIzyr8VdKKuhaDX7JG7/rpoUws84
         +pgg+nRlQmx5vxZY+fpXtvcpL598hRt//8NjZTGYxSLxpP7+CGfXHcFdQq6Sl3D1a639
         5y+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=jYdCAZcv6rUUG7KW+wn6gKBF+UzymWMvqv0zOHj9hbE=;
        b=XTknQ2VY7VdLknyklWQHX4e9Wxa6tdD0UIsZcM4FQqIBfMg5kIxUiALsfC9S9vJhPy
         wTvdhkL5MzG6actGH1Pi/T0ddizpbFPQL0rKw/kWRCdDmrvdoXWC0/ZrPZwMjJYVD5Lu
         6YNIvNmw/CdqeRjtYxmf7iKFwn2JqPjHaCCWrgpqKW4Hx33ke1LglEdSBux6u0GQabee
         nK3lEvddWQ6uEl+S9NdvI2j3j4l/1+41jlDA1Z7zRxWrZRJkU+98w7BzKsDb4LoPa4vV
         QWAoOZQXvz/cb+M4EEmJWh0jrZQjSUuMEt+2FlB86gRp6Hx+PhwZXdSt7vSX13BNyTHb
         8b4A==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZKx0qdxN;
       spf=pass (google.com: domain of 34tvyxqgkaaguimvvqkpowwotm.kwu@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=34TVyXQgKAAguimvvqkpowwotm.kwu@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id o16sor3334478qkg.152.2019.09.06.03.33.05
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 06 Sep 2019 03:33:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of 34tvyxqgkaaguimvvqkpowwotm.kwu@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:ae9:e212:: with SMTP id c18mr8084551qkc.254.1567765985166;
 Fri, 06 Sep 2019 03:33:05 -0700 (PDT)
Date: Fri,  6 Sep 2019 11:32:32 +0100
In-Reply-To: <20190906103235.197072-1-maennich@google.com>
Message-Id: <20190906103235.197072-9-maennich@google.com>
Mime-Version: 1.0
References: <20180716122125.175792-1-maco@android.com> <20190906103235.197072-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [usb-storage] [PATCH v5 08/11] scripts: Coccinelle script for
 namespace dependencies.
From: "'Matthias Maennich' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: linux-kernel@vger.kernel.org
Cc: kernel-team@android.com, maennich@google.com, arnd@arndb.de, 
	gregkh@linuxfoundation.org, jeyu@kernel.org, joel@joelfernandes.org, 
	lucas.de.marchi@gmail.com, maco@android.com, sspatil@google.com, 
	will@kernel.org, yamada.masahiro@socionext.com, linux-kbuild@vger.kernel.org, 
	linux-modules@vger.kernel.org, linux-usb@vger.kernel.org, 
	usb-storage@lists.one-eyed-alien.net, Julia Lawall <julia.lawall@lip6.fr>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZKx0qdxN;       spf=pass
 (google.com: domain of 34tvyxqgkaaguimvvqkpowwotm.kwu@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=34TVyXQgKAAguimvvqkpowwotm.kwu@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Matthias Maennich <maennich@google.com>
Reply-To: Matthias Maennich <maennich@google.com>
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Spam-Checked-In-Group: usb-storage@lists.one-eyed-alien.net
X-Google-Group-Id: 960895140360
List-Post: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/post>,
 <mailto:usb-storage@lists.one-eyed-alien.net>
List-Help: <https://support.google.com/a/lists.one-eyed-alien.net/bin/topic.py?topic=25838>,
 <mailto:usb-storage+help@lists.one-eyed-alien.net>
List-Archive: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/>
List-Subscribe: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>,
 <mailto:usb-storage+subscribe@lists.one-eyed-alien.net>
List-Unsubscribe: <mailto:googlegroups-manage+960895140360+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>

A script that uses the '<module>.ns_deps' files generated by modpost to
automatically add the required symbol namespace dependencies to each
module.

Usage:
1) Move some symbols to a namespace with EXPORT_SYMBOL_NS() or define
   DEFAULT_SYMBOL_NAMESPACE
2) Run 'make' (or 'make modules') and get warnings about modules not
   importing that namespace.
3) Run 'make nsdeps' to automatically add required import statements
   to said modules.

This makes it easer for subsystem maintainers to introduce and maintain
symbol namespaces into their codebase.

Co-developed-by: Martijn Coenen <maco@android.com>
Signed-off-by: Martijn Coenen <maco@android.com>
Acked-by: Julia Lawall <julia.lawall@lip6.fr>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Matthias Maennich <maennich@google.com>
---
 MAINTAINERS                                 |  5 ++
 Makefile                                    | 12 +++++
 scripts/Makefile.modpost                    |  4 +-
 scripts/coccinelle/misc/add_namespace.cocci | 23 ++++++++
 scripts/nsdeps                              | 58 +++++++++++++++++++++
 5 files changed, 101 insertions(+), 1 deletion(-)
 create mode 100644 scripts/coccinelle/misc/add_namespace.cocci
 create mode 100644 scripts/nsdeps

diff --git a/MAINTAINERS b/MAINTAINERS
index e7a47b5210fd..3b170c11a0e6 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11436,6 +11436,11 @@ S:	Maintained
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/wtarreau/nolibc.git
 F:	tools/include/nolibc/
 
+NSDEPS
+M:	Matthias Maennich <maennich@google.com>
+S:	Maintained
+F:	scripts/nsdeps
+
 NTB AMD DRIVER
 M:	Shyam Sundar S K <Shyam-sundar.S-k@amd.com>
 L:	linux-ntb@googlegroups.com
diff --git a/Makefile b/Makefile
index 0cdb957ae2c3..014d55b400ca 100644
--- a/Makefile
+++ b/Makefile
@@ -1500,6 +1500,9 @@ help:
 	@echo  '  headerdep       - Detect inclusion cycles in headers'
 	@echo  '  coccicheck      - Check with Coccinelle'
 	@echo  ''
+	@echo  'Tools:'
+	@echo  '  nsdeps          - Generate missing symbol namespace dependencies'
+	@echo  ''
 	@echo  'Kernel selftest:'
 	@echo  '  kselftest       - Build and run kernel selftest (run as root)'
 	@echo  '                    Build, install, and boot kernel before'
@@ -1687,6 +1690,15 @@ quiet_cmd_tags = GEN     $@
 tags TAGS cscope gtags: FORCE
 	$(call cmd,tags)
 
+# Script to generate missing namespace dependencies
+# ---------------------------------------------------------------------------
+
+PHONY += nsdeps
+
+nsdeps: modules
+	$(Q)$(MAKE) -f $(srctree)/scripts/Makefile.modpost nsdeps
+	$(Q)$(CONFIG_SHELL) $(srctree)/scripts/$@
+
 # Scripts to check various things for consistency
 # ---------------------------------------------------------------------------
 
diff --git a/scripts/Makefile.modpost b/scripts/Makefile.modpost
index 26e6574ecd08..743fe3a2e885 100644
--- a/scripts/Makefile.modpost
+++ b/scripts/Makefile.modpost
@@ -56,7 +56,8 @@ MODPOST = scripts/mod/modpost						\
 	$(if $(KBUILD_EXTMOD),$(addprefix -e ,$(KBUILD_EXTRA_SYMBOLS)))	\
 	$(if $(KBUILD_EXTMOD),-o $(modulesymfile))			\
 	$(if $(CONFIG_SECTION_MISMATCH_WARN_ONLY),,-E)			\
-	$(if $(KBUILD_MODPOST_WARN),-w)
+	$(if $(KBUILD_MODPOST_WARN),-w)					\
+	$(if $(filter nsdeps,$(MAKECMDGOALS)),-d)
 
 ifdef MODPOST_VMLINUX
 
@@ -134,6 +135,7 @@ $(modules): %.ko :%.o %.mod.o FORCE
 
 targets += $(modules)
 
+nsdeps: __modpost
 
 # Add FORCE to the prequisites of a target to force it to be always rebuilt.
 # ---------------------------------------------------------------------------
diff --git a/scripts/coccinelle/misc/add_namespace.cocci b/scripts/coccinelle/misc/add_namespace.cocci
new file mode 100644
index 000000000000..c832bb6445a8
--- /dev/null
+++ b/scripts/coccinelle/misc/add_namespace.cocci
@@ -0,0 +1,23 @@
+// SPDX-License-Identifier: GPL-2.0-only
+//
+/// Adds missing MODULE_IMPORT_NS statements to source files
+///
+/// This script is usually called from scripts/nsdeps with -D ns=<namespace> to
+/// add a missing namespace tag to a module source file.
+///
+
+@has_ns_import@
+declarer name MODULE_IMPORT_NS;
+identifier virtual.ns;
+@@
+MODULE_IMPORT_NS(ns);
+
+// Add missing imports, but only adjacent to a MODULE_LICENSE statement.
+// That ensures we are adding it only to the main module source file.
+@do_import depends on !has_ns_import@
+declarer name MODULE_LICENSE;
+expression license;
+identifier virtual.ns;
+@@
+MODULE_LICENSE(license);
++ MODULE_IMPORT_NS(ns);
diff --git a/scripts/nsdeps b/scripts/nsdeps
new file mode 100644
index 000000000000..ac2b6031dd13
--- /dev/null
+++ b/scripts/nsdeps
@@ -0,0 +1,58 @@
+#!/bin/bash
+# SPDX-License-Identifier: GPL-2.0
+# Linux kernel symbol namespace import generator
+#
+# This script requires a minimum spatch version.
+SPATCH_REQ_VERSION="1.0.4"
+
+DIR="$(dirname $(readlink -f $0))/.."
+SPATCH="`which ${SPATCH:=spatch}`"
+if [ ! -x "$SPATCH" ]; then
+	echo 'spatch is part of the Coccinelle project and is available at http://coccinelle.lip6.fr/'
+	exit 1
+fi
+
+SPATCH_REQ_VERSION_NUM=$(echo $SPATCH_REQ_VERSION | ${DIR}/scripts/ld-version.sh)
+SPATCH_VERSION=$($SPATCH --version | head -1 | awk '{print $3}')
+SPATCH_VERSION_NUM=$(echo $SPATCH_VERSION | ${DIR}/scripts/ld-version.sh)
+
+if [ "$SPATCH_VERSION_NUM" -lt "$SPATCH_REQ_VERSION_NUM" ] ; then
+	echo "spatch needs to be version $SPATCH_REQ_VERSION or higher"
+	exit 1
+fi
+
+generate_deps_for_ns() {
+	$SPATCH --very-quiet --in-place --sp-file \
+		$srctree/scripts/coccinelle/misc/add_namespace.cocci -D ns=$1 $2
+}
+
+generate_deps() {
+	local mod_name=`basename $@ .ko`
+	local mod_file=`echo $@ | sed -e 's/\.ko/\.mod/'`
+	local ns_deps_file=`echo $@ | sed -e 's/\.ko/\.ns_deps/'`
+	if [ ! -f "$ns_deps_file" ]; then return; fi
+	local mod_source_files=`cat $mod_file | sed -n 1p                      \
+					      | sed -e 's/\.o/\.c/g'           \
+					      | sed "s/[^ ]* */${srctree}\/&/g"`
+	for ns in `cat $ns_deps_file`; do
+		echo "Adding namespace $ns to module $mod_name (if needed)."
+		generate_deps_for_ns $ns $mod_source_files
+		# sort the imports
+		for source_file in $mod_source_files; do
+			sed '/MODULE_IMPORT_NS/Q' $source_file > ${source_file}.tmp
+			offset=$(wc -l ${source_file}.tmp | awk '{print $1;}')
+			cat $source_file | grep MODULE_IMPORT_NS | sort -u >> ${source_file}.tmp
+			tail -n +$((offset +1)) ${source_file} | grep -v MODULE_IMPORT_NS >> ${source_file}.tmp
+			if ! diff -q ${source_file} ${source_file}.tmp; then
+				mv ${source_file}.tmp ${source_file}
+			else
+				rm ${source_file}.tmp
+			fi
+		done
+	done
+}
+
+for f in `cat $objtree/modules.order`; do
+	generate_deps $f
+done
+
-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190906103235.197072-9-maennich%40google.com.
