Return-Path: <usb-storage+bncBDMYPB44VAFRBINHZPVAKGQE5OFI4CI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yw1-xc46.google.com (mail-yw1-xc46.google.com [IPv6:2607:f8b0:4864:20::c46])
	by mail.lfdr.de (Postfix) with ESMTPS id A75778BCC1
	for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 17:13:38 +0200 (CEST)
Received: by mail-yw1-xc46.google.com with SMTP id d135sf80416409ywd.0
        for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 08:13:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565709217; cv=pass;
        d=google.com; s=arc-20160816;
        b=QeVYvmZaIFwYfwlRr/VPgEegigw/mbPaQTR3ny3IFACMn+HCj5naLPM6G38BKj9XlH
         oA1QDGrsCcGARDTkfTv87MnM+S7vc0M6Wa+3udocbZznJtxC4TVs7BPjwTI0bxJOq0I7
         HhOuG7aSdjvPNOjAqtdzle5dxe2qxVUjN0hqwVcsXGI88JE/uhWvXHRZyiYMotueUv/r
         WOGcKplR3QFgFbsWwuhzHnVjeX8YbJzf2PHbC/QnSB3OtfJPbiVKoNhzQRmKltFSICV3
         kiL1Twsya9fz72PyQUiLrzyZYTECeYJsw/VzWz+FEHPV9/bw9wtbtkyFbIALcAV/vXBR
         munw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=2yWKpYaKDr+TW9dSR0B70C41pvwtztI609TLj9zEvZA=;
        b=x9XGF9n/vArBF5yiIIDznDOIVlRpCvSEaaXH7kyrCzqLmyFRCeHNC1s7PTCH2CPX1z
         BZ+oGTm7bNUMrAZyZTsTm5WRnGXQl38QaHWQ/MNFBbKh1lbqwladU/FSaRX9ip5GVomk
         a/xfJTWnTCybZCvfyvfkCyAjgWDINreQPXZ6XcBZOovDtSwK46V1q9ZaZKw/JONv8RLC
         d4JGIR5BsIDARGwPtvHoy0fdYjddcD0rpou1xG9auV1jMFR17kcA5ZwCAhGc/hAp2gSV
         utwxuR8b3qrq8+o3OzrAy13oJJ6V5Pj4KEPFHQaZWw0nsBIdH3rs5BtYBB8dT5LCwo+p
         zyJw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="J1JvF9/Z";
       spf=pass (google.com: domain of 36apsxqgkahokycllgafemmejc.amk@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=36apSXQgKAHokYcllgafemmejc.amk@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2yWKpYaKDr+TW9dSR0B70C41pvwtztI609TLj9zEvZA=;
        b=TToQjHmE30YMgy9Cohul8wnf2x/xiqWBKQ2CDcXZ1qflbu5D5cOZOzSSopU39lQ2iY
         05eGiTKLIM719nbeOfP1p9N3b7b+hNEgLymi13iX5ypBNA1C8A2k6v5ysG8Z7/advjip
         uYx6RoE/V8J5w7NEEglIWKRlJDkc7i9IdNgDo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=2yWKpYaKDr+TW9dSR0B70C41pvwtztI609TLj9zEvZA=;
        b=XOnxr4Cpoi3nVnTIeGtOJcn2cRzA+mS6kLBWH9IdDybXOIMVjuF7qL+NRKwgLNt8Cd
         CSdcToR2tB1shLkNFOEmm9bl8HUl3FuaKSvavuFzNfBMVZFpfVgOFzylWtyaHqzV4r6B
         Pi7PinoWIaJzy2wNWOhQVADWLON9L80pRlIx2qwQmYHERQwdp9SdiqMf1yS4fhsB7fsr
         z3Pk7ILtFD/7cN1388/1OiA3TwGgTJX6vSeE2shxXBXgWo1WUAtg0Qx6nAPXqkD5MFaw
         c3qnWTw5GTLtPcfpgYO5wxzeQFHF9Tf5a4c2YLkVy/ek+piJ7Uz9of1Gw6JGeZrjol+i
         TuOg==
X-Gm-Message-State: APjAAAXfaZcQEqD27iScLNE7ToKBLZtt53yQlw0z93rYtshFeWDg5qo7
	kTfPH/tXSa/CMg9JUIVg9S204A==
X-Google-Smtp-Source: APXvYqz2wE1/HNkQdJwY8mx/gvDZGRei9ytKr25JuAeav+ynQ6GxysjkHRrf2SB8LioYjSLsfvI0Jw==
X-Received: by 2002:a81:5ec2:: with SMTP id s185mr27827986ywb.35.1565709217722;
        Tue, 13 Aug 2019 08:13:37 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:4a8a:: with SMTP id x132ls3436041yba.1.gmail; Tue, 13
 Aug 2019 08:13:37 -0700 (PDT)
X-Received: by 2002:a25:bf88:: with SMTP id l8mr7849825ybk.511.1565709217438;
        Tue, 13 Aug 2019 08:13:37 -0700 (PDT)
Received: by 2002:a0d:c544:0:0:0:0:0 with SMTP id h65msywd;
        Tue, 13 Aug 2019 05:19:54 -0700 (PDT)
X-Received: by 2002:a0d:e446:: with SMTP id n67mr5407984ywe.121.1565698794395;
        Tue, 13 Aug 2019 05:19:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565698794; cv=none;
        d=google.com; s=arc-20160816;
        b=LFuwTXWBfSEL9Dy0+/8PQwl9jaijXKaiWI+x9TQ6dz6KGd2h2mXveVqoAfl3JJQSAv
         f8RmzsAsNxAWZFmR3bRkfTxotGqZjU2X47dTeGmjLE9j9i1SBsrdG6nC4WURb64M1OR5
         7QkrEhDeH7lUpLVLu1MNTXLlzPyrQjeiD4j/0hLFELfaqdez5z29MgjKpYR/Yq5DhJUP
         rKV/z21G/oOEWE2k3vxV6RJ8U+84/d29p4hRdeyZlcj83T0y5IYCvh2rHcWBMz8voovi
         wjq56a7kwnD7/tENGV03zb5OsE4sxEsDpLrjCt/PJYZzZKb4TNVaXUs3n9hnZ1XaHatP
         ulng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=V8gq4FEcRvbLdxBlRa7vcpMivgfsfciaemI15mBExE8=;
        b=DzE0mCjwl5wS3hxy+7ZplbvSkvrCT4MqlgBOsidVLPGuJra4GFY8yLZXPa3UafeMeO
         y/T0oj71VzEwkn9AmQTMEn/4ps3PbnsIk3T3bGlUoAp7YJb8nr4Jls3P7tauNT0XBEFD
         1v5M3TAT5JjBZUa5ImkQ/8r5bSpXlZJ+na0PdunwjkHzLvWFggR7vehfOv7xn5L4Xxlx
         YwXRz+ASYlu+5QdmxMt8/8Fp0L+iBIVPN1jaZHI7ROz+ZB3OQGwLE01yq5xgrySXQymC
         P0pMgrTx4ysBThOnSmT/77ylOTEe6fXwQjodL8AO+LNVMYb0GGeIPai/Y6ebRaE1+hM7
         KLOw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="J1JvF9/Z";
       spf=pass (google.com: domain of 36apsxqgkahokycllgafemmejc.amk@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=36apSXQgKAHokYcllgafemmejc.amk@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id v62sor19382315ybg.160.2019.08.13.05.19.54
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 13 Aug 2019 05:19:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of 36apsxqgkahokycllgafemmejc.amk@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:a25:dc49:: with SMTP id y70mr24281522ybe.334.1565698793774;
 Tue, 13 Aug 2019 05:19:53 -0700 (PDT)
Date: Tue, 13 Aug 2019 13:17:05 +0100
In-Reply-To: <20190813121733.52480-1-maennich@google.com>
Message-Id: <20190813121733.52480-9-maennich@google.com>
Mime-Version: 1.0
References: <20180716122125.175792-1-maco@android.com> <20190813121733.52480-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [usb-storage] [PATCH v2 08/10] scripts: Coccinelle script for
 namespace dependencies.
From: "'Matthias Maennich' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: linux-kernel@vger.kernel.org, maco@android.com
Cc: kernel-team@android.com, maennich@google.com, arnd@arndb.de, 
	geert@linux-m68k.org, gregkh@linuxfoundation.org, hpa@zytor.com, 
	jeyu@kernel.org, joel@joelfernandes.org, kstewart@linuxfoundation.org, 
	linux-arch@vger.kernel.org, linux-kbuild@vger.kernel.org, 
	linux-m68k@lists.linux-m68k.org, linux-modules@vger.kernel.org, 
	linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org, 
	lucas.de.marchi@gmail.com, maco@google.com, michal.lkml@markovi.net, 
	mingo@redhat.com, oneukum@suse.com, pombredanne@nexb.com, sam@ravnborg.org, 
	sboyd@codeaurora.org, sspatil@google.com, stern@rowland.harvard.edu, 
	tglx@linutronix.de, usb-storage@lists.one-eyed-alien.net, x86@kernel.org, 
	yamada.masahiro@socionext.com, Julia Lawall <Julia.Lawall@lip6.fr>, 
	Gilles Muller <Gilles.Muller@lip6.fr>, Nicolas Palix <nicolas.palix@imag.fr>, 
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, "David S. Miller" <davem@davemloft.net>, 
	Jonathan Cameron <Jonathan.Cameron@huawei.com>, Nicolas Ferre <nicolas.ferre@microchip.com>, 
	cocci@systeme.lip6.fr
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="J1JvF9/Z";       spf=pass
 (google.com: domain of 36apsxqgkahokycllgafemmejc.amk@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=36apSXQgKAHokYcllgafemmejc.amk@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Matthias Maennich <maennich@google.com>
Reply-To: Matthias Maennich <maennich@google.com>
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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

A script that uses the '<module>.ns_deps' file generated by modpost to
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
Signed-off-by: Matthias Maennich <maennich@google.com>
---
 MAINTAINERS                                 |  5 ++
 Makefile                                    | 12 +++++
 scripts/Makefile.modpost                    |  4 +-
 scripts/coccinelle/misc/add_namespace.cocci | 23 +++++++++
 scripts/nsdeps                              | 54 +++++++++++++++++++++
 5 files changed, 97 insertions(+), 1 deletion(-)
 create mode 100644 scripts/coccinelle/misc/add_namespace.cocci
 create mode 100644 scripts/nsdeps

diff --git a/MAINTAINERS b/MAINTAINERS
index e81e60bd7c26..aa169070a052 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11414,6 +11414,11 @@ S:	Maintained
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
index 1b23f95db176..c5c3356e133c 100644
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
index 000000000000..148db65a830f
--- /dev/null
+++ b/scripts/nsdeps
@@ -0,0 +1,54 @@
+#!/bin/bash
+# SPDX-License-Identifier: GPL-2.0
+# Linux kernel symbol namespace import generator
+#
+# This script requires at least spatch
+# version 1.0.4.
+SPATCH_REQ_VERSION="1.0.4"
+
+DIR="$(dirname $(readlink -f $0))/.."
+SPATCH="`which ${SPATCH:=spatch}`"
+if [ ! -x "$SPATCH" ]; then
+    echo 'spatch is part of the Coccinelle project and is available at http://coccinelle.lip6.fr/'
+    exit 1
+fi
+
+SPATCH_REQ_VERSION_NUM=$(echo $SPATCH_REQ_VERSION | ${DIR}/scripts/ld-version.sh)
+SPATCH_VERSION=$($SPATCH --version | head -1 | awk '{print $3}')
+SPATCH_VERSION_NUM=$(echo $SPATCH_VERSION | ${DIR}/scripts/ld-version.sh)
+
+if [ "$SPATCH_VERSION_NUM" -lt "$SPATCH_REQ_VERSION_NUM" ] ; then
+    echo 'spatch needs to be version 1.06 or higher'
+    exit 1
+fi
+
+generate_deps_for_ns() {
+    $SPATCH --very-quiet --in-place --sp-file \
+	    $srctree/scripts/coccinelle/misc/add_namespace.cocci -D ns=$1 $2
+}
+
+generate_deps() {
+    local mod_file=`echo $@ | sed -e 's/\.ns_deps/\.mod/'`
+    local mod_name=`cat $mod_file | sed -n 1p | sed -e 's/\/[^.]*$//'`
+    local mod_source_files=`cat $mod_file | sed -n 2p | sed -e 's/\.o/\.c/g'`
+    for ns in `cat $@`; do
+	echo "Adding namespace $ns to module $mod_name (if needed)."
+        generate_deps_for_ns $ns $mod_source_files
+	# sort the imports
+        for source_file in $mod_source_files; do
+            sed '/MODULE_IMPORT_NS/Q' $source_file > ${source_file}.tmp
+            offset=$(wc -l ${source_file}.tmp | awk '{print $1;}')
+            cat $source_file | grep MODULE_IMPORT_NS | sort -u >> ${source_file}.tmp
+            tail -n +$((offset +1)) ${source_file} | grep -v MODULE_IMPORT_NS >> ${source_file}.tmp
+            if ! diff -q ${source_file} ${source_file}.tmp; then
+                mv ${source_file}.tmp ${source_file}
+            else
+                rm ${source_file}.tmp
+            fi
+        done
+    done
+}
+
+for f in `find $srctree/.tmp_versions/ -name *.ns_deps`; do
+    generate_deps $f
+done
-- 
2.23.0.rc1.153.gdeed80330f-goog

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190813121733.52480-9-maennich%40google.com.
