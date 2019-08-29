Return-Path: <usb-storage+bncBD45FSE2XIORBZ4CT7VQKGQE6TREHGI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x546.google.com (mail-pg1-x546.google.com [IPv6:2607:f8b0:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B9CA19A6
	for <lists+usb-storage@lfdr.de>; Thu, 29 Aug 2019 14:13:29 +0200 (CEST)
Received: by mail-pg1-x546.google.com with SMTP id h5sf1836470pgq.23
        for <lists+usb-storage@lfdr.de>; Thu, 29 Aug 2019 05:13:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567080807; cv=pass;
        d=google.com; s=arc-20160816;
        b=a0TO8ct/mOhmJb5cnGFXpVEdJHQwnlWdj1HGZVg3dZTgFEel7OpERBICAmu4wx+Amd
         miGyiH5hZNRNbhgkBXijA1YwCxfn+n4rooeHoc7HxJ3B+QQXbqspaJGdzuoNvK3pEHrB
         n4qIc3gepZqgSZ9ndY1DDBSPXaamauR8590wnMb7F8dK7k66I99mJe8nbb9pRqpE/enT
         jf1PlhL40PduZyQiJrVsEHvhqwMWYvkiT+M/x13FyUW7NjUFRtq1y/hrYXY9dcSmSwt/
         g6Kb/PpwiUxY918x3AN53lA+DykQAhfllg2CpB+WL/u8HlKYAT22hIE9as9bitFa5sLy
         ri2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=3LEhYGI3km5yGHr8eRjt7Lv7e7JvKrxeKVov/LX55ws=;
        b=Dwwgj517MoZIUOLchwKjx+w5j4HhUJbzlLtRarzlG+WbCIUOH10vCA7W9EuzoHhgOB
         cbWvAjxtW6WoV/Sgrk7qA0AdtdgduJqscx/ltZeSHktjAXZleS3tludbnaotcXZ6eiVf
         Msmb2LH9k65I5glgs6HA9z+bvu/uKopqg2qsc7LHGV/B9Nn9IBgUwKdCD4yuuFWNr4hg
         AQ80eP+UQVAJLQgC0WqkE5SIvAhOXD+7UXg5atGbR7VBFW5XyK/F7M43Y2NkNI4y4+gX
         mRsXP050X524tSGhqIsMOCAx/KZxYG6ugIPRx5w3KC0XcsQRQVieGelww1JFgEMNvNhJ
         bFbw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="gNTXG/ed";
       spf=pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jeyu@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3LEhYGI3km5yGHr8eRjt7Lv7e7JvKrxeKVov/LX55ws=;
        b=ayfQt1nqD3oTHjZ5kMqYx/FRKjsdltgId++Sd5MF6R25ufEbXt+V/o9YLiBeAJ3k3O
         1D9TZK2ojxuaAVkDYOa/ExNzF2bQv00OYgDc/GeTNU0pXa1H7Zc9xu7d0qn4m7nMqWL1
         kShBBQMsTVJSSaUOzAP39QTAAROLDUVf3uV74=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3LEhYGI3km5yGHr8eRjt7Lv7e7JvKrxeKVov/LX55ws=;
        b=cNZT4bIza+bPMkG5DOBe8kdGsvoYzRSuAkgctxOebY73PNZxlbAvCdqQJ8l/+1ALKT
         AJk0McnzUZMUG+C8WmgnV2vBj6Oa+Vl0fU3g+snSfFwa43TzE5kRdxR5jtMDZKXVDJzt
         KuHctKNX6njy3PGUE4tEN+DZGefDwwf5Gbq4AJsaUX2sv/YPSQ1SVjeW6hdKWqlq4SzV
         UdOaI+i+lzKE5h2+yRgtDHn1DfesUfif6wT5ygnwKVYawSWu9kHvc5ijAvIQGvVXsj8a
         3bkb7dtgaWCDYzSZ6Y2CADVja7svK26SArn1jUHpvqSa4efV5kiRbZp3Tv0rneUk+DQE
         clIA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXU+jZ2JEyFTN/TuhhYYc1W75oV3GDMgUS1LDz/y63/ySfjpAVD
	yHrRoRBGJ5r9GeAhze4cSKDttw==
X-Google-Smtp-Source: APXvYqxnGaHQJ24Y9Ga3ull3uAfVvrklB6/6fJ0MflIJUJgm/6pu//j+RDKIHkl05WcSRBMYhWJJ5g==
X-Received: by 2002:a63:fe15:: with SMTP id p21mr8091168pgh.149.1567080807601;
        Thu, 29 Aug 2019 05:13:27 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:6b81:: with SMTP id p1ls767976plk.6.gmail; Thu, 29
 Aug 2019 05:13:27 -0700 (PDT)
X-Received: by 2002:a17:902:bcc2:: with SMTP id o2mr9614124pls.127.1567080807155;
        Thu, 29 Aug 2019 05:13:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567080807; cv=none;
        d=google.com; s=arc-20160816;
        b=GqxWklDJi8HRmx7HjweD13Bppd9KkIO2QCKU4l4rs2INZwCIqK3nn5o4GfpLO4hM5L
         4koJiviLgS1qdDrSs/da7ow3ODFoN7kbkaQev7EW3KC+rq6GHiyjPYpfeIrkBW4obIXg
         KZwe3RfX9g4w5bI8tJDZOGAvleZ26D3dyi3C/O8AGCoZCTzwGzRr7+s7j/pm+yYBIWbV
         vdE5B1VD/X87nVlzeECDr3mqPyOEgKpwthTMM5WaI8agedrmBk0MzhqnxAmxbc/pCOPg
         QZkwLpAaOyS6otWCB6IS/0hG3S4EWc7e96AW114LGn+Gpc8dQ2k3VgTHKXDoUAlk10y2
         p88w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=nzrC8/YFdCN4kiuJRAfFelMO55pFLbiL4z9D7QtI+pU=;
        b=V9yfcgEs2fMRVBOQon/yAXcLuF54ASopTbgwjgniyl/z3xplm42MTzHbWYCCSbknM5
         foL4iGRgmX65ZXsw8sm59mbD+eNqzDMqbs1BKWUSjuWMCwW22J62ceyhPpJ8LUhiRrtI
         4swejqjrGLBEaTGzKkweI3EaLc3y6U4XlWtX9XAo3gszZFBExRdRBwYeIpVCnVbVVwZJ
         PURuEv+jgvmJPCBqrx40rhhB7IPaXDr/Ji4fujgAoLWq0w/R1tbZr6KSbMoMCfVgAGOZ
         3Tz4zYxlF64Q3baabPu54rPBVwfA4chazXaIO3MvyydvkpdwAWJ+Sv4541X36rNzz34G
         9EoA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="gNTXG/ed";
       spf=pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jeyu@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id bb14si1977508pjb.66.2019.08.29.05.13.27
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Aug 2019 05:13:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from linux-8ccs (charybdis-ext.suse.de [195.135.221.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CCF5B2080F;
	Thu, 29 Aug 2019 12:13:20 +0000 (UTC)
Date: Thu, 29 Aug 2019 14:13:17 +0200
From: Jessica Yu <jeyu@kernel.org>
To: Matthias Maennich <maennich@google.com>
Cc: linux-kernel@vger.kernel.org, kernel-team@android.com, arnd@arndb.de,
	geert@linux-m68k.org, gregkh@linuxfoundation.org, hpa@zytor.com,
	joel@joelfernandes.org, kstewart@linuxfoundation.org,
	linux-arch@vger.kernel.org, linux-kbuild@vger.kernel.org,
	linux-m68k@lists.linux-m68k.org, linux-modules@vger.kernel.org,
	linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org,
	lucas.de.marchi@gmail.com, maco@android.com, maco@google.com,
	michal.lkml@markovi.net, mingo@redhat.com, oneukum@suse.com,
	pombredanne@nexb.com, sam@ravnborg.org, sspatil@google.com,
	stern@rowland.harvard.edu, tglx@linutronix.de,
	usb-storage@lists.one-eyed-alien.net, x86@kernel.org,
	yamada.masahiro@socionext.com, Julia Lawall <julia.lawall@lip6.fr>,
	Gilles Muller <Gilles.Muller@lip6.fr>,
	Nicolas Palix <nicolas.palix@imag.fr>,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	"David S. Miller" <davem@davemloft.net>,
	Nicolas Ferre <nicolas.ferre@microchip.com>, cocci@systeme.lip6.fr
Subject: [usb-storage] Re: [PATCH v3 08/11] scripts: Coccinelle script for
 namespace dependencies.
Message-ID: <20190829121317.GA22914@linux-8ccs>
References: <20190813121733.52480-1-maennich@google.com>
 <20190821114955.12788-1-maennich@google.com>
 <20190821114955.12788-9-maennich@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20190821114955.12788-9-maennich@google.com>
X-OS: Linux linux-8ccs 4.12.14-lp150.12.61-default x86_64
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: jeyu@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="gNTXG/ed";       spf=pass
 (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=jeyu@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

+++ Matthias Maennich [21/08/19 12:49 +0100]:
>A script that uses the '<module>.ns_deps' files generated by modpost to
>automatically add the required symbol namespace dependencies to each
>module.
>
>Usage:
>1) Move some symbols to a namespace with EXPORT_SYMBOL_NS() or define
>   DEFAULT_SYMBOL_NAMESPACE
>2) Run 'make' (or 'make modules') and get warnings about modules not
>   importing that namespace.
>3) Run 'make nsdeps' to automatically add required import statements
>   to said modules.
>
>This makes it easer for subsystem maintainers to introduce and maintain
>symbol namespaces into their codebase.
>
>Co-developed-by: Martijn Coenen <maco@android.com>
>Signed-off-by: Martijn Coenen <maco@android.com>
>Acked-by: Julia Lawall <julia.lawall@lip6.fr>
>Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>Signed-off-by: Matthias Maennich <maennich@google.com>
>---
> MAINTAINERS                                 |  5 ++
> Makefile                                    | 12 +++++
> scripts/Makefile.modpost                    |  4 +-
> scripts/coccinelle/misc/add_namespace.cocci | 23 +++++++++
> scripts/nsdeps                              | 56 +++++++++++++++++++++
> 5 files changed, 99 insertions(+), 1 deletion(-)
> create mode 100644 scripts/coccinelle/misc/add_namespace.cocci
> create mode 100644 scripts/nsdeps
>
>diff --git a/MAINTAINERS b/MAINTAINERS
>index 08176d64eed5..dd5b37b49a07 100644
>--- a/MAINTAINERS
>+++ b/MAINTAINERS
>@@ -11428,6 +11428,11 @@ S:	Maintained
> T:	git git://git.kernel.org/pub/scm/linux/kernel/git/wtarreau/nolibc.git
> F:	tools/include/nolibc/
>
>+NSDEPS
>+M:	Matthias Maennich <maennich@google.com>
>+S:	Maintained
>+F:	scripts/nsdeps
>+
> NTB AMD DRIVER
> M:	Shyam Sundar S K <Shyam-sundar.S-k@amd.com>
> L:	linux-ntb@googlegroups.com
>diff --git a/Makefile b/Makefile
>index a89870188c09..40311f583ee1 100644
>--- a/Makefile
>+++ b/Makefile
>@@ -1500,6 +1500,9 @@ help:
> 	@echo  '  headerdep       - Detect inclusion cycles in headers'
> 	@echo  '  coccicheck      - Check with Coccinelle'
> 	@echo  ''
>+	@echo  'Tools:'
>+	@echo  '  nsdeps          - Generate missing symbol namespace dependencies'
>+	@echo  ''
> 	@echo  'Kernel selftest:'
> 	@echo  '  kselftest       - Build and run kernel selftest (run as root)'
> 	@echo  '                    Build, install, and boot kernel before'
>@@ -1687,6 +1690,15 @@ quiet_cmd_tags = GEN     $@
> tags TAGS cscope gtags: FORCE
> 	$(call cmd,tags)
>
>+# Script to generate missing namespace dependencies
>+# ---------------------------------------------------------------------------
>+
>+PHONY += nsdeps
>+
>+nsdeps:
>+	$(Q)$(MAKE) -f $(srctree)/scripts/Makefile.modpost nsdeps
>+	$(Q)$(CONFIG_SHELL) $(srctree)/scripts/$@
>+
> # Scripts to check various things for consistency
> # ---------------------------------------------------------------------------
>
>diff --git a/scripts/Makefile.modpost b/scripts/Makefile.modpost
>index 26e6574ecd08..743fe3a2e885 100644
>--- a/scripts/Makefile.modpost
>+++ b/scripts/Makefile.modpost
>@@ -56,7 +56,8 @@ MODPOST = scripts/mod/modpost						\
> 	$(if $(KBUILD_EXTMOD),$(addprefix -e ,$(KBUILD_EXTRA_SYMBOLS)))	\
> 	$(if $(KBUILD_EXTMOD),-o $(modulesymfile))			\
> 	$(if $(CONFIG_SECTION_MISMATCH_WARN_ONLY),,-E)			\
>-	$(if $(KBUILD_MODPOST_WARN),-w)
>+	$(if $(KBUILD_MODPOST_WARN),-w)					\
>+	$(if $(filter nsdeps,$(MAKECMDGOALS)),-d)
>
> ifdef MODPOST_VMLINUX
>
>@@ -134,6 +135,7 @@ $(modules): %.ko :%.o %.mod.o FORCE
>
> targets += $(modules)
>
>+nsdeps: __modpost
>
> # Add FORCE to the prequisites of a target to force it to be always rebuilt.
> # ---------------------------------------------------------------------------
>diff --git a/scripts/coccinelle/misc/add_namespace.cocci b/scripts/coccinelle/misc/add_namespace.cocci
>new file mode 100644
>index 000000000000..c832bb6445a8
>--- /dev/null
>+++ b/scripts/coccinelle/misc/add_namespace.cocci
>@@ -0,0 +1,23 @@
>+// SPDX-License-Identifier: GPL-2.0-only
>+//
>+/// Adds missing MODULE_IMPORT_NS statements to source files
>+///
>+/// This script is usually called from scripts/nsdeps with -D ns=<namespace> to
>+/// add a missing namespace tag to a module source file.
>+///
>+
>+@has_ns_import@
>+declarer name MODULE_IMPORT_NS;
>+identifier virtual.ns;
>+@@
>+MODULE_IMPORT_NS(ns);
>+
>+// Add missing imports, but only adjacent to a MODULE_LICENSE statement.
>+// That ensures we are adding it only to the main module source file.
>+@do_import depends on !has_ns_import@
>+declarer name MODULE_LICENSE;
>+expression license;
>+identifier virtual.ns;
>+@@
>+MODULE_LICENSE(license);
>++ MODULE_IMPORT_NS(ns);
>diff --git a/scripts/nsdeps b/scripts/nsdeps
>new file mode 100644
>index 000000000000..3b5995a61e65
>--- /dev/null
>+++ b/scripts/nsdeps
>@@ -0,0 +1,56 @@
>+#!/bin/bash
>+# SPDX-License-Identifier: GPL-2.0
>+# Linux kernel symbol namespace import generator
>+#
>+# This script requires a minimum spatch version.
>+SPATCH_REQ_VERSION="1.0.4"
>+
>+DIR="$(dirname $(readlink -f $0))/.."
>+SPATCH="`which ${SPATCH:=spatch}`"
>+if [ ! -x "$SPATCH" ]; then
>+	echo 'spatch is part of the Coccinelle project and is available at http://coccinelle.lip6.fr/'
>+	exit 1
>+fi
>+
>+SPATCH_REQ_VERSION_NUM=$(echo $SPATCH_REQ_VERSION | ${DIR}/scripts/ld-version.sh)
>+SPATCH_VERSION=$($SPATCH --version | head -1 | awk '{print $3}')
>+SPATCH_VERSION_NUM=$(echo $SPATCH_VERSION | ${DIR}/scripts/ld-version.sh)
>+
>+if [ "$SPATCH_VERSION_NUM" -lt "$SPATCH_REQ_VERSION_NUM" ] ; then
>+	echo "spatch needs to be version $SPATCH_REQ_VERSION or higher"
>+	exit 1
>+fi
>+
>+generate_deps_for_ns() {
>+	$SPATCH --very-quiet --in-place --sp-file \
>+		$srctree/scripts/coccinelle/misc/add_namespace.cocci -D ns=$1 $2
>+}
>+
>+generate_deps() {
>+	local mod_name=`basename $@ .ko`
>+	local mod_file=`echo $@ | sed -e 's/\.ko/\.mod/'`
>+	local ns_deps_file=`echo $@ | sed -e 's/\.ko/\.ns_deps/'`
>+	if [ ! -f "$ns_deps_file" ]; then return; fi
>+	local mod_source_files=`cat $mod_file | sed -n 1p | sed -e 's/\.o/\.c/g'`
>+	for ns in `cat $ns_deps_file`; do
>+		echo "Adding namespace $ns to module $mod_name (if needed)."
>+		generate_deps_for_ns $ns $mod_source_files
>+		# sort the imports
>+		for source_file in $mod_source_files; do
>+			sed '/MODULE_IMPORT_NS/Q' $source_file > ${source_file}.tmp
>+			offset=$(wc -l ${source_file}.tmp | awk '{print $1;}')
>+			cat $source_file | grep MODULE_IMPORT_NS | sort -u >> ${source_file}.tmp
>+			tail -n +$((offset +1)) ${source_file} | grep -v MODULE_IMPORT_NS >> ${source_file}.tmp
>+			if ! diff -q ${source_file} ${source_file}.tmp; then
>+				mv ${source_file}.tmp ${source_file}
>+			else
>+				rm ${source_file}.tmp
>+			fi
>+		done
>+	done
>+}
>+
>+for f in `cat $srctree/modules.order`; do
>+	generate_deps $f
>+done

Hi Matthias!

I normally build outside of the source tree (make O=..) and I think
that choked up the nsdeps script a bit. For example when I run
'make nsdeps O=/tmp/linux' I get:

   cat: /home/jeyu/linux/modules.order: No such file or directory

I just changed $srctree/modules.order to $objtree/modules.order and
that fixed it for me. Also, I had to prefix $source_file in the script
with $srctree so that it'd find the right file to modify.

Thanks!

Jessica

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190829121317.GA22914%40linux-8ccs.
