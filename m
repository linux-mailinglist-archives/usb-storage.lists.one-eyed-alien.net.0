Return-Path: <usb-storage+bncBDMYPB44VAFRBD7C6TVAKGQEUP7NFEA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x445.google.com (mail-pf1-x445.google.com [IPv6:2607:f8b0:4864:20::445])
	by mail.lfdr.de (Postfix) with ESMTPS id EA2D397866
	for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 13:54:57 +0200 (CEST)
Received: by mail-pf1-x445.google.com with SMTP id w30sf1434699pfj.4
        for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 04:54:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566388496; cv=pass;
        d=google.com; s=arc-20160816;
        b=lUEw4LpeVHALqJTQvyflXf3Jp4eq6Lm4AD6fnYOrrzZipvOMBTOYx4IBdEONnZUb0J
         nCn2t0FMj/LVSUBmfS1NQB9Hek8/xpdpznRlGT76SaajTCdcDTiEP1gqo6Y1Fbr96nNt
         YM78mVG/utiPPhz0I7S2dY7S0tSu/c3Bd+/J/7G3L3RSYARpE3pAaM0x//PlhcUgH6CB
         2e9GVXh1pqiIIzUOkzGesViQpiF3bgG270Xa5tkh43eHpQ6DEJt06eHtOtueZRMkrTLa
         a+jfskkSQWg8CrrjMpFyi/W6iviiGXmX2NY7mVoaTt99L79Ybtd7Q4OiV1mlSJj99FpQ
         SsEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=vmb92tu1hkeQX4BXhDPcUupLvXr1RmENppZasLPP9JA=;
        b=fX2+zBcwuT368Zo2V2NieMe1gr9XJLApU+nUZ4nQRyCohg76oM1WVmGMKldFPqCjwN
         PWIYJpVcAuhiksTW6Qb/XA6Bt/ijExw2S9CRp0HjreSquZtscBYhoyn840nYtaPB4j5L
         57I7rj6Bp8lvYw/Y7AYWNb0C1Mf4q6Oj7Dj0Q2V7mp7sHvtDDMMqNtmplWPRGQKrMHAa
         92QZe9PhImBOLyxPUUJiqz06YUIqOGtbKWnl1wv0yLUiuN+FVMrORXOEFTIydEkOZTwv
         UAnQvdCVC39j7EyUoxFgixiCTPq8nu7O5tHaK61KkxgjQN9J9YFndO/m3exTirvSBCFI
         /6bw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mutT78ZX;
       spf=pass (google.com: domain of 3djfdxqgkanud15ee9387ff7c5.3fd@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3DjFdXQgKANUD15EE9387FF7C5.3FD@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vmb92tu1hkeQX4BXhDPcUupLvXr1RmENppZasLPP9JA=;
        b=fLMVFzGQRLRgqApe5za7haD+LKsn50PfrDWyIq63SGMwWrEldO8ngHUrEtOzv6slHc
         sdRFtcYh2DskFYkGZTkuqX+2iHjZYtsRVLMMBP8r1v/uLxP1YMr688C9GL9YRl+eMl1C
         WsggywEZpr3BM5CyReICh98VuvAWGg114Iyss=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vmb92tu1hkeQX4BXhDPcUupLvXr1RmENppZasLPP9JA=;
        b=mwwrd7fkPrv1LZwsSdHqqM46bMaWuOVfYv9k4uf5FM+0DkF1FjKdINU7Rc/nnwLFyc
         pzN0YY1yQn+LdoqzsKtTIrxu8Xj4JG2jVYNx+zuJPG+vP7YzI1hhWo2GbqnFMFs/3ioT
         Hzhz5P6uR3nk5VNgFbiGeE/Ll3VXRV2mu4H0Nr/vfLAeshhEmDMtTsrthXI3fEfPdaSD
         PP6G41/hE8R2zumSMbrOpCtGqkDiXCs94dnXVnENhErAyuhzDckQXWgq2uFkos5G4GBN
         zNvzzQkIdmvqWP6IU/g+qE4MwwvFiQ7YWDTvSv4Xc6nZ/ASe3adrEOqEkOMLbn/Xgdm6
         t7pA==
X-Gm-Message-State: APjAAAXBC5y+KaFltpeh/4VCcJfKu29GpA8cWe5wFWeRBxcRu02N8lNP
	vd2xSFaBmtxqnVSb+/GJrpdhvg==
X-Google-Smtp-Source: APXvYqwWLIky3treIqlGWzeEudFojOqH1j88zmNS2282juR8An845Ed5xKNnV3vyLdMyfoKR0vVTpw==
X-Received: by 2002:a63:2bd2:: with SMTP id r201mr28368816pgr.193.1566388496005;
        Wed, 21 Aug 2019 04:54:56 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:17eb:: with SMTP id q98ls661214pja.1.gmail; Wed, 21
 Aug 2019 04:54:55 -0700 (PDT)
X-Received: by 2002:a17:902:6f10:: with SMTP id w16mr10345683plk.143.1566388495595;
        Wed, 21 Aug 2019 04:54:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566388495; cv=none;
        d=google.com; s=arc-20160816;
        b=Yy7ZeFRaGV07FEWzJnLMvZ89O1bObw2FVLG/YQYPJPqUvEMuWWpgRv756WeCTjO+S+
         W5HM0ibNZeZ3B/wV36N3W2ZA3RaUJCKgaM2yN4MxwxyrC1n6f1wBAx3rANwTasKQ67Du
         2L5iW91jCwA9Bn2ZUkiXiV7BYIN4E1uG07lDkAj7gcVqgpWI8HvSRMSEb4FCuMXNAjLj
         6Vu18yrErDsoKS2+/139x5zJtu3xsWJQUaJdj8RDDcsaPP9WSosW6fNqAy/5xqWyL29k
         hZgf/51G7LJAbyMXv0R6TOQKsxclkxGHfby6yCqVQZUgfcutlPrbTGFGhXuedsuU0duI
         1CJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=KsiMtetsi+HhY2srbiOwM0cOvpdAc3wAuabal/+OVi0=;
        b=iZ0fpEHdVpr2Vqu8xqaYYUe5LFI1++M85enHRvcVOZc66dpCnx5N1EGuDCUNmYafex
         ABerpWrRqkjW+8RSZX8IHF4lxoR3jADSc0+Izi41ySU9X4bTvpppBYlu5uHCGed1YvJK
         AKJfXm2e/5I7hPP9qx7nXpjazFNX8WkrGyXzYJ9zDZcYCXBnPilhOcZT6t+AUPQxEQaQ
         Y9crSfDujtiMBjWVN4Z1ab+dla3Qr+Mkuljo+F+vuRC6ZMQQO2UlzPCm2dkWxsS1JN+p
         ULSWtcPJc+lJ+5OZboSfMNc/g1+O7xWHzdDOjCu4O5Z9OXGWQPAaKYHiyeGKmJTaC8Y1
         IWDQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mutT78ZX;
       spf=pass (google.com: domain of 3djfdxqgkanud15ee9387ff7c5.3fd@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3DjFdXQgKANUD15EE9387FF7C5.3FD@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id z68sor5741158pgz.39.2019.08.21.04.54.55
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 21 Aug 2019 04:54:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3djfdxqgkanud15ee9387ff7c5.3fd@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:a63:9e56:: with SMTP id r22mr28815115pgo.221.1566388494681;
 Wed, 21 Aug 2019 04:54:54 -0700 (PDT)
Date: Wed, 21 Aug 2019 12:49:23 +0100
In-Reply-To: <20190821114955.12788-1-maennich@google.com>
Message-Id: <20190821114955.12788-9-maennich@google.com>
Mime-Version: 1.0
References: <20190813121733.52480-1-maennich@google.com> <20190821114955.12788-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [usb-storage] [PATCH v3 08/11] scripts: Coccinelle script for
 namespace dependencies.
From: "'Matthias Maennich' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: linux-kernel@vger.kernel.org
Cc: kernel-team@android.com, maennich@google.com, arnd@arndb.de, 
	geert@linux-m68k.org, gregkh@linuxfoundation.org, hpa@zytor.com, 
	jeyu@kernel.org, joel@joelfernandes.org, kstewart@linuxfoundation.org, 
	linux-arch@vger.kernel.org, linux-kbuild@vger.kernel.org, 
	linux-m68k@lists.linux-m68k.org, linux-modules@vger.kernel.org, 
	linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org, 
	lucas.de.marchi@gmail.com, maco@android.com, maco@google.com, 
	michal.lkml@markovi.net, mingo@redhat.com, oneukum@suse.com, 
	pombredanne@nexb.com, sam@ravnborg.org, sspatil@google.com, 
	stern@rowland.harvard.edu, tglx@linutronix.de, 
	usb-storage@lists.one-eyed-alien.net, x86@kernel.org, 
	yamada.masahiro@socionext.com, Julia Lawall <julia.lawall@lip6.fr>, 
	Julia Lawall <Julia.Lawall@lip6.fr>, Gilles Muller <Gilles.Muller@lip6.fr>, 
	Nicolas Palix <nicolas.palix@imag.fr>, Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, 
	"David S. Miller" <davem@davemloft.net>, Nicolas Ferre <nicolas.ferre@microchip.com>, cocci@systeme.lip6.fr
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=mutT78ZX;       spf=pass
 (google.com: domain of 3djfdxqgkanud15ee9387ff7c5.3fd@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=3DjFdXQgKANUD15EE9387FF7C5.3FD@flex--maennich.bounces.google.com;
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
 scripts/coccinelle/misc/add_namespace.cocci | 23 +++++++++
 scripts/nsdeps                              | 56 +++++++++++++++++++++
 5 files changed, 99 insertions(+), 1 deletion(-)
 create mode 100644 scripts/coccinelle/misc/add_namespace.cocci
 create mode 100644 scripts/nsdeps

diff --git a/MAINTAINERS b/MAINTAINERS
index 08176d64eed5..dd5b37b49a07 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11428,6 +11428,11 @@ S:	Maintained
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
index a89870188c09..40311f583ee1 100644
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
+nsdeps:
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
index 000000000000..3b5995a61e65
--- /dev/null
+++ b/scripts/nsdeps
@@ -0,0 +1,56 @@
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
+	local mod_source_files=`cat $mod_file | sed -n 1p | sed -e 's/\.o/\.c/g'`
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
+for f in `cat $srctree/modules.order`; do
+	generate_deps $f
+done
+
-- 
2.23.0.rc1.153.gdeed80330f-goog

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190821114955.12788-9-maennich%40google.com.
