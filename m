Return-Path: <usb-storage+bncBDMYPB44VAFRBQ4DXLVQKGQE53E5VFA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb48.google.com (mail-yb1-xb48.google.com [IPv6:2607:f8b0:4864:20::b48])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B9FA6C47
	for <lists+usb-storage@lfdr.de>; Tue,  3 Sep 2019 17:07:48 +0200 (CEST)
Received: by mail-yb1-xb48.google.com with SMTP id a18sf14228560ybm.15
        for <lists+usb-storage@lfdr.de>; Tue, 03 Sep 2019 08:07:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567523268; cv=pass;
        d=google.com; s=arc-20160816;
        b=n9QaSzCA5s2kgQPyfIPUUWpRa+MBituzeCr1rarmvUPZUljAIDRPvVKf6fEDI7e1cm
         MYInAGIuoQk22YaPdussFXNN9rOet7pWYWfRC63Arqe8RwyJaMWxx5MyQGqCmztw092g
         5d/wCL5MhB3bpqOmGc9iC9/7VdKNMh+p+w9dZCjq6Sz7wWEoDjFd9PsMJj8krn89Ujdv
         FodmZp+T91PMyF3GzH//8WvS7hAg+F7VMAQ4RDL81EeJcMTX9wup2cqEdBA+fFUCvm4d
         GT4Q3Z7+9GOwqg54JC59xmCTvsYvmFD1rr9PQyN3DGga5dHjhm8ePP6IkQc4PofFdgXW
         knLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=QR6AXh35z5taISceT2wWfkTqzkSGxHQ+S1a5Ag3IljY=;
        b=O2loXOeCi6MB9vRvbsYG1o5Z06zKoXJlecKf3SyggTXlD31TJVtrG+jIXRSzUHr9wm
         SF6/Pw3JqmP/a6lYli9ekFxoC3j3cztfgNyjoHPmZ8JIJDGwOf2H9zK5VFiGTxobEhk4
         Yq4+NQJ0m/NGJvTFfWAh5Dg9eIVXBr7frKjzmjjQxjW/n5w9yv63SFVmDyyknrPRpfNu
         EyxWMRUuNpzBOjeGCBn8Gebtrz28QByIH7IxTpx88C7YAV2uKznWVenOKuyeKs4JDrhI
         6C0lMxzKh5TQMRdtHYcVSxeCvlpmNLHWakP+53hMgX+yt7i0o1AjTYTooO70hBQDLz81
         4HoA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pghRn16I;
       spf=pass (google.com: domain of 3w4fuxqgkahicquddysxweewbu.sec@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3w4FuXQgKAHIcQUddYSXWeeWbU.Sec@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QR6AXh35z5taISceT2wWfkTqzkSGxHQ+S1a5Ag3IljY=;
        b=EdTNFpfpW26a8aEGIG/qUBTH3rKjDxD1FwtQ/5uqMDmKj0Zz+ZS5BpwWIV4Eh7cQtW
         SdOm1aMdGESORKVY0hAElDgjfwVZP7XQckFGg/mQO8O+TSAZOk1BbB39VnjRM2Dv7iDu
         3ROceDqP97uatAucstbQK34LbUzfBoiUkTInM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QR6AXh35z5taISceT2wWfkTqzkSGxHQ+S1a5Ag3IljY=;
        b=Ycn2Sg5tKHV/dxq+omZ3MuJTNMRt9YE/dYrgWQXL2uLyoN01EGQloU/vunjp1zgVNe
         E4BIzo4G++VfhS5eSpc8QpJr8xBENIqvZcWAN4vRaS0wAkFBr+yz6xYEl69BRcS84URj
         56C9e5ER7T6CShHoB/Ijgujg2aBaCVksa9hZVCsSxiWPr5M8IKO0FWbomBZd/OBUldK4
         xR1nzZbUWVR7tB3jQFr6tjwDiuuUF9lBQd9mbkcfw+hPy3UAEyGJizQNBxgDUIR/p3Mi
         hTejjOO3RJCScqQpB8Hgql1OZZdvq0WHXYJIw89OkxPRi28qz7RKao/xVsSX+rAJThEy
         7vAQ==
X-Gm-Message-State: APjAAAVK1n73JTNZ3vqE8KXd72iDelaF+4Js2uAx1mbfu9aVLjqctWjH
	JsOiar7lbLsXZsAxf+mCfJ4MQg==
X-Google-Smtp-Source: APXvYqz4Ze1AhZUGQvoT8cYN4IwoD3zlolRox0eXkQPuk0uiqeuO8k37SHOCldV9N//OzuthZfua9g==
X-Received: by 2002:a25:e08d:: with SMTP id x135mr24809049ybg.239.1567523267781;
        Tue, 03 Sep 2019 08:07:47 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a81:77c4:: with SMTP id s187ls1233940ywc.7.gmail; Tue, 03
 Sep 2019 08:07:47 -0700 (PDT)
X-Received: by 2002:a81:3290:: with SMTP id y138mr11342831ywy.459.1567523267525;
        Tue, 03 Sep 2019 08:07:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567523267; cv=none;
        d=google.com; s=arc-20160816;
        b=xKwGhRfmQ9nb9tU+nbqYdcQzFmeiuA0FwvGvam5xNukNrCe1RO/6mLjpdJ/kOkDdq3
         iB/Il2KF9RRGJ1niNTPsfdMEExL3uR9bWtI+r97RU4tT9lZ1N2YTtmazF0rn9NpSbOZQ
         /1VYSWNz91c6st7cFSzhMo0in+NeDqJHg7NQNxiJJvpusYR8Z4S2aD4sNsJVS/hv+CoC
         YjwcaDQLat5xGPqhmCi8xn56v6LxSB4CK2yGfo+VdolxIeykKx8RaVeTs3t8K+2/ZAJ6
         7B4fEvdguIsxR7Ps4E0gjuXwQ97u6ZItBUW0QQdC2dZ1MU8aH6eKxoWXy9f01JSettVl
         uzUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=b+cqXt6YX0mnoCtMoAi03cOiwWu215/p06/ubbgFzR4=;
        b=OaNFvEcZKv7SUP+fkQailIyaFrsjuhhlauNnDQwU9CfFL2DC8nUI7MyxHIKr0L+4vg
         8xYLKvjflS1wG7mI7VPbMIqt0sfj137sfG/hrs1cLfjS+h/I50RxlDss31CYb93nHoeD
         Bn8ccsotYSXjQ6hXyYqAMHVrZKxJ+9/NHwNrnvxe0SelEZv902Eouy8rnOAxZrrmK3wK
         EMozFZFjARgAoMrzX1rzokTx6Tg3Asqc+Wgi8U/zH4IArw6nXKLPHjir14cNYJqTOz8p
         CuXp2zbSojauefpwXHomEh3NxQ4D83YODoCjnSCnbbQslCNz+7UTjhNWbxv4W0sSZrNA
         2aUQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pghRn16I;
       spf=pass (google.com: domain of 3w4fuxqgkahicquddysxweewbu.sec@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3w4FuXQgKAHIcQUddYSXWeeWbU.Sec@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id i62sor2382045ywa.90.2019.09.03.08.07.47
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 03 Sep 2019 08:07:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3w4fuxqgkahicquddysxweewbu.sec@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:a81:84d0:: with SMTP id u199mr17120277ywf.284.1567523267075;
 Tue, 03 Sep 2019 08:07:47 -0700 (PDT)
Date: Tue,  3 Sep 2019 16:06:34 +0100
In-Reply-To: <20190903150638.242049-1-maennich@google.com>
Message-Id: <20190903150638.242049-9-maennich@google.com>
Mime-Version: 1.0
References: <20180716122125.175792-1-maco@android.com> <20190903150638.242049-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [usb-storage] [PATCH v4 08/12] scripts: Coccinelle script for
 namespace dependencies.
From: "'Matthias Maennich' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: linux-kernel@vger.kernel.org
Cc: kernel-team@android.com, maennich@google.com, arnd@arndb.de, 
	gregkh@linuxfoundation.org, jeyu@kernel.org, joel@joelfernandes.org, 
	lucas.de.marchi@gmail.com, maco@android.com, sspatil@google.com, 
	will@kernel.org, yamada.masahiro@socionext.com, linux-kbuild@vger.kernel.org, 
	linux-modules@vger.kernel.org, linux-usb@vger.kernel.org, 
	usb-storage@lists.one-eyed-alien.net, linux-watchdog@vger.kernel.org, 
	Julia Lawall <julia.lawall@lip6.fr>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=pghRn16I;       spf=pass
 (google.com: domain of 3w4fuxqgkahicquddysxweewbu.sec@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=3w4FuXQgKAHIcQUddYSXWeeWbU.Sec@flex--maennich.bounces.google.com;
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
 scripts/nsdeps                              | 60 +++++++++++++++++++++
 5 files changed, 103 insertions(+), 1 deletion(-)
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
index 0cdb957ae2c3..573e90e738ad 100644
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
index 000000000000..75dcf79a11ed
--- /dev/null
+++ b/scripts/nsdeps
@@ -0,0 +1,60 @@
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
+set -e
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190903150638.242049-9-maennich%40google.com.
