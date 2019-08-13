Return-Path: <usb-storage+bncBDZJXP7F6YLRBIG3ZLVAKGQEBPQ2XSY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x346.google.com (mail-wm1-x346.google.com [IPv6:2a00:1450:4864:20::346])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A1E8B891
	for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 14:31:29 +0200 (CEST)
Received: by mail-wm1-x346.google.com with SMTP id g127sf245006wme.0
        for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 05:31:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565699489; cv=pass;
        d=google.com; s=arc-20160816;
        b=01VvZ1SzgGJ9cnVpshcU6NbmcuJbmQ5AZMdzICw9shinm2MyataYNgW+YB8OdsjqOM
         mPEfzHyxh2C/0EGpjyZmBrN82hFkOoQtIcDJfu80GJE3d2Ry+0fmlOsKSr7AGzp3FSCW
         NzGvum7vmYqBcRu40LVL1eL+NeJ/bQZDQw/PZHMrdJv29/FvAtOOk4ku/FQ/fSf1+7CA
         dq8K3Pz7khfdtdQ75eZU0x95+fyj4ubrvorxQEZwkGq33hj+MZlpiPF7Ci14iN/luV2a
         KD9qI3rncKlKtmEW5pZVp5ki126AqMy5N3cAob8+KfPQFtGY0EHLiP9TOzjXLYkxxy29
         JcYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=AHvKZWwoJMUOgxo4xOShyokLKet6jrDeAzi9e7SQuzo=;
        b=IvaRnF+OOMHhehfEvsES7ejto3a5QaFL09wzpn79WzMw/nQdPWuZJCwK7zRjgzmXG4
         yRZAKdLIhvbxk3rPrVLDMsdAUkSDdUbC0HbnFzTbF2QoDd5owqFrjDrJmTNH1EPGQ/IH
         AYC5QelPBjtN8rSDxi1eLSvHHRDjk+sKh6AtuGJrGb/rhwix2+feeEFoPkiHwtiRpvHa
         6JoPkXQ86YgFnaIuPSYXqUSsIrpZq0R0AyrKUh0L7Qs7nbiqc/CykvpAbEAs2VnjfiNh
         CBv6omn5ViRKA0aHjFRPNyeN7L7M+71PQYv6kl94Hf2Cd0zFLF6F3737qLwZgVK4R9Pj
         a11g==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AHvKZWwoJMUOgxo4xOShyokLKet6jrDeAzi9e7SQuzo=;
        b=A9+YA4ooDS13WMMMjANyukFZe13eKt7usxuJqoz4LOJKafLjpGX5NNcbxwdPX93fhF
         yPFLrf0M7bJn+3kR1FC4vKydfFmE89c41ozEOgvSjL40NfCPgrjD26D8nUPq02hGcUkU
         xUl3OnfJFUUwdycCd+zGSIYXZ0Eadtf9UKOKk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AHvKZWwoJMUOgxo4xOShyokLKet6jrDeAzi9e7SQuzo=;
        b=WSPc6jhX42oksXBuEsqM7E0c7qYwFiXhgEMie0akId4fAdJRfS/QeZj9u6z05WvHdC
         z3zVPHaQn3ad3ROZtZmLKzyGhdbP4VLoA7KbY71JpBrMOv/ODAgUDrH5jYP1avdpu7bo
         DTwM7K8WPpxhOPpWni8UN3LRfZoGzQwX2UUk13YKPTsvPobraYvc8RTjImUjmy3+g9aD
         0gpwRCALHS9kNmtiDPEbA6V+zXIXzghpF75xuCstCl29lDkqKbH4WFZnI3aiRLmkg4/T
         a2F6xWQ43j5JpDcfcdLKVIYbBFo+OevOA/bFLTIMB/sV6WBnMjxtOQ39juJCz02OqLlB
         H95w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUD9D0tbR+sLEbvo/yowwNDgpOaNbas8oDyZpSjIdgGwfKAL1Ef
	UmHSHWTBIsjp0ihqNcUaCNptdQ==
X-Google-Smtp-Source: APXvYqwxQXWmIYUjO35JxrU4/ltII+MOro3mJl4XULlF1+lYoVDkKo9SrqynDpzq/hQPeYWRezjTcA==
X-Received: by 2002:adf:f14f:: with SMTP id y15mr40413206wro.28.1565699489202;
        Tue, 13 Aug 2019 05:31:29 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a1c:6484:: with SMTP id y126ls540190wmb.1.canary-gmail; Tue,
 13 Aug 2019 05:31:28 -0700 (PDT)
X-Received: by 2002:a1c:7ec7:: with SMTP id z190mr2856731wmc.17.1565699488444;
        Tue, 13 Aug 2019 05:31:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565699488; cv=none;
        d=google.com; s=arc-20160816;
        b=o+ocTLmBwVakYAmHLmtShd9ZNUuoPkVS2+l2voac1tM7Xak7vZjZUf2ZFbD3+WxTVe
         pxqRAogdasQ0jL2AGWNEI12e87qg2UVTlYHUGpL6angwf0P7gA2MTrEJJ5PBHrsS/OVK
         0It1qlfO5QRLySOxx9N1XwD6ZgAJVlsrX8rIkaCtVxfjqH3TqZ7MAwtgU3jvVvfjaUKV
         jXjXVw8hU2vlhg56d5IvyO5hA4FlUC2jfCJP0nUhsJcM8R/Q0/9/KoGltjoBWTtw/0NC
         uTYe2u4l7hKexE8A96kCPd8CxBH0B+IbXyiwHaoXMdofyoxCorNe2yaK5Cr2UKgaLlke
         cCuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=ftjDWRScXkBkxIYY8kr/Ua7vScN483s6IN1yLALZK88=;
        b=GGIZRZQfLGAo3KPYUhpQTpSnXmGF+4ruKrVaOqMnW0LoOy/U9Dh5dFyL1jTRFEYxG5
         0aTf3atfgz6HL+p2qkQZ35mg3SnsxpktKoUFRWuDWUC8NXGWKvCnsGAqvcvPM1MgI8Rp
         ltmXFcWRPM2RcaW/uq7LQaxIBNNSGbZrTW/Dg8/+VbQHxDvRpOCwTFW89UoU/UU/mPyV
         Guir+fJKdOqtVk16g24Vn1WklPLNs/WbcNDypxBpsYYZjDeIweieMKHiM80wfhXhLStw
         BdLhozHbko7tTaFYADTcIqW5OZ7gk+y+5CEC0K4AGL9EJObw0JqYFGZaZOZhOjcNu1S6
         BPPA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by mx.google.com with ESMTPS id n6si921007wme.175.2019.08.13.05.31.28
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2019 05:31:28 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
X-IronPort-AV: E=Sophos;i="5.64,381,1559512800"; 
   d="scan'208";a="316282409"
Received: from portablejulia.rsr.lip6.fr ([132.227.76.63])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Aug 2019 14:31:18 +0200
Date: Tue, 13 Aug 2019 14:31:18 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: julia@hadrien
To: Matthias Maennich <maennich@google.com>
cc: linux-kernel@vger.kernel.org, maco@android.com, kernel-team@android.com, 
    arnd@arndb.de, geert@linux-m68k.org, gregkh@linuxfoundation.org, 
    hpa@zytor.com, jeyu@kernel.org, joel@joelfernandes.org, 
    kstewart@linuxfoundation.org, linux-arch@vger.kernel.org, 
    linux-kbuild@vger.kernel.org, linux-m68k@vger.kernel.org, 
    linux-modules@vger.kernel.org, linux-scsi@vger.kernel.org, 
    linux-usb@vger.kernel.org, lucas.de.marchi@gmail.com, maco@google.com, 
    michal.lkml@markovi.net, mingo@redhat.com, oneukum@suse.com, 
    pombredanne@nexb.com, sam@ravnborg.org, sboyd@codeaurora.org, 
    sspatil@google.com, stern@rowland.harvard.edu, tglx@linutronix.de, 
    usb-storage@lists.one-eyed-alien.net, x86@kernel.org, 
    yamada.masahiro@socionext.com, Julia Lawall <Julia.Lawall@lip6.fr>, 
    Gilles Muller <Gilles.Muller@lip6.fr>, 
    Nicolas Palix <nicolas.palix@imag.fr>, 
    Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, 
    "David S. Miller" <davem@davemloft.net>, 
    Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
    Nicolas Ferre <nicolas.ferre@microchip.com>, cocci@systeme.lip6.fr
Subject: [usb-storage] Re: [PATCH v2 08/10] scripts: Coccinelle script for
 namespace dependencies.
In-Reply-To: <20190813121733.52480-9-maennich@google.com>
Message-ID: <alpine.DEB.2.21.1908131430530.4608@hadrien>
References: <20180716122125.175792-1-maco@android.com> <20190813121733.52480-1-maennich@google.com> <20190813121733.52480-9-maennich@google.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: julia.lawall@lip6.fr
X-Original-Authentication-Results: mx.google.com;       spf=neutral
 (google.com: 192.134.164.104 is neither permitted nor denied by domain of
 julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
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



On Tue, 13 Aug 2019, Matthias Maennich wrote:

> A script that uses the '<module>.ns_deps' file generated by modpost to
> automatically add the required symbol namespace dependencies to each
> module.
>
> Usage:
> 1) Move some symbols to a namespace with EXPORT_SYMBOL_NS() or define
>    DEFAULT_SYMBOL_NAMESPACE
> 2) Run 'make' (or 'make modules') and get warnings about modules not
>    importing that namespace.
> 3) Run 'make nsdeps' to automatically add required import statements
>    to said modules.
>
> This makes it easer for subsystem maintainers to introduce and maintain
> symbol namespaces into their codebase.
>
> Co-developed-by: Martijn Coenen <maco@android.com>
> Signed-off-by: Martijn Coenen <maco@android.com>
> Signed-off-by: Matthias Maennich <maennich@google.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


> ---
>  MAINTAINERS                                 |  5 ++
>  Makefile                                    | 12 +++++
>  scripts/Makefile.modpost                    |  4 +-
>  scripts/coccinelle/misc/add_namespace.cocci | 23 +++++++++
>  scripts/nsdeps                              | 54 +++++++++++++++++++++
>  5 files changed, 97 insertions(+), 1 deletion(-)
>  create mode 100644 scripts/coccinelle/misc/add_namespace.cocci
>  create mode 100644 scripts/nsdeps
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index e81e60bd7c26..aa169070a052 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -11414,6 +11414,11 @@ S:	Maintained
>  T:	git git://git.kernel.org/pub/scm/linux/kernel/git/wtarreau/nolibc.git
>  F:	tools/include/nolibc/
>
> +NSDEPS
> +M:	Matthias Maennich <maennich@google.com>
> +S:	Maintained
> +F:	scripts/nsdeps
> +
>  NTB AMD DRIVER
>  M:	Shyam Sundar S K <Shyam-sundar.S-k@amd.com>
>  L:	linux-ntb@googlegroups.com
> diff --git a/Makefile b/Makefile
> index 1b23f95db176..c5c3356e133c 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -1500,6 +1500,9 @@ help:
>  	@echo  '  headerdep       - Detect inclusion cycles in headers'
>  	@echo  '  coccicheck      - Check with Coccinelle'
>  	@echo  ''
> +	@echo  'Tools:'
> +	@echo  '  nsdeps          - Generate missing symbol namespace dependencies'
> +	@echo  ''
>  	@echo  'Kernel selftest:'
>  	@echo  '  kselftest       - Build and run kernel selftest (run as root)'
>  	@echo  '                    Build, install, and boot kernel before'
> @@ -1687,6 +1690,15 @@ quiet_cmd_tags = GEN     $@
>  tags TAGS cscope gtags: FORCE
>  	$(call cmd,tags)
>
> +# Script to generate missing namespace dependencies
> +# ---------------------------------------------------------------------------
> +
> +PHONY += nsdeps
> +
> +nsdeps:
> +	$(Q)$(MAKE) -f $(srctree)/scripts/Makefile.modpost nsdeps
> +	$(Q)$(CONFIG_SHELL) $(srctree)/scripts/$@
> +
>  # Scripts to check various things for consistency
>  # ---------------------------------------------------------------------------
>
> diff --git a/scripts/Makefile.modpost b/scripts/Makefile.modpost
> index 26e6574ecd08..743fe3a2e885 100644
> --- a/scripts/Makefile.modpost
> +++ b/scripts/Makefile.modpost
> @@ -56,7 +56,8 @@ MODPOST = scripts/mod/modpost						\
>  	$(if $(KBUILD_EXTMOD),$(addprefix -e ,$(KBUILD_EXTRA_SYMBOLS)))	\
>  	$(if $(KBUILD_EXTMOD),-o $(modulesymfile))			\
>  	$(if $(CONFIG_SECTION_MISMATCH_WARN_ONLY),,-E)			\
> -	$(if $(KBUILD_MODPOST_WARN),-w)
> +	$(if $(KBUILD_MODPOST_WARN),-w)					\
> +	$(if $(filter nsdeps,$(MAKECMDGOALS)),-d)
>
>  ifdef MODPOST_VMLINUX
>
> @@ -134,6 +135,7 @@ $(modules): %.ko :%.o %.mod.o FORCE
>
>  targets += $(modules)
>
> +nsdeps: __modpost
>
>  # Add FORCE to the prequisites of a target to force it to be always rebuilt.
>  # ---------------------------------------------------------------------------
> diff --git a/scripts/coccinelle/misc/add_namespace.cocci b/scripts/coccinelle/misc/add_namespace.cocci
> new file mode 100644
> index 000000000000..c832bb6445a8
> --- /dev/null
> +++ b/scripts/coccinelle/misc/add_namespace.cocci
> @@ -0,0 +1,23 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +//
> +/// Adds missing MODULE_IMPORT_NS statements to source files
> +///
> +/// This script is usually called from scripts/nsdeps with -D ns=<namespace> to
> +/// add a missing namespace tag to a module source file.
> +///
> +
> +@has_ns_import@
> +declarer name MODULE_IMPORT_NS;
> +identifier virtual.ns;
> +@@
> +MODULE_IMPORT_NS(ns);
> +
> +// Add missing imports, but only adjacent to a MODULE_LICENSE statement.
> +// That ensures we are adding it only to the main module source file.
> +@do_import depends on !has_ns_import@
> +declarer name MODULE_LICENSE;
> +expression license;
> +identifier virtual.ns;
> +@@
> +MODULE_LICENSE(license);
> ++ MODULE_IMPORT_NS(ns);
> diff --git a/scripts/nsdeps b/scripts/nsdeps
> new file mode 100644
> index 000000000000..148db65a830f
> --- /dev/null
> +++ b/scripts/nsdeps
> @@ -0,0 +1,54 @@
> +#!/bin/bash
> +# SPDX-License-Identifier: GPL-2.0
> +# Linux kernel symbol namespace import generator
> +#
> +# This script requires at least spatch
> +# version 1.0.4.
> +SPATCH_REQ_VERSION="1.0.4"
> +
> +DIR="$(dirname $(readlink -f $0))/.."
> +SPATCH="`which ${SPATCH:=spatch}`"
> +if [ ! -x "$SPATCH" ]; then
> +    echo 'spatch is part of the Coccinelle project and is available at http://coccinelle.lip6.fr/'
> +    exit 1
> +fi
> +
> +SPATCH_REQ_VERSION_NUM=$(echo $SPATCH_REQ_VERSION | ${DIR}/scripts/ld-version.sh)
> +SPATCH_VERSION=$($SPATCH --version | head -1 | awk '{print $3}')
> +SPATCH_VERSION_NUM=$(echo $SPATCH_VERSION | ${DIR}/scripts/ld-version.sh)
> +
> +if [ "$SPATCH_VERSION_NUM" -lt "$SPATCH_REQ_VERSION_NUM" ] ; then
> +    echo 'spatch needs to be version 1.06 or higher'
> +    exit 1
> +fi
> +
> +generate_deps_for_ns() {
> +    $SPATCH --very-quiet --in-place --sp-file \
> +	    $srctree/scripts/coccinelle/misc/add_namespace.cocci -D ns=$1 $2
> +}
> +
> +generate_deps() {
> +    local mod_file=`echo $@ | sed -e 's/\.ns_deps/\.mod/'`
> +    local mod_name=`cat $mod_file | sed -n 1p | sed -e 's/\/[^.]*$//'`
> +    local mod_source_files=`cat $mod_file | sed -n 2p | sed -e 's/\.o/\.c/g'`
> +    for ns in `cat $@`; do
> +	echo "Adding namespace $ns to module $mod_name (if needed)."
> +        generate_deps_for_ns $ns $mod_source_files
> +	# sort the imports
> +        for source_file in $mod_source_files; do
> +            sed '/MODULE_IMPORT_NS/Q' $source_file > ${source_file}.tmp
> +            offset=$(wc -l ${source_file}.tmp | awk '{print $1;}')
> +            cat $source_file | grep MODULE_IMPORT_NS | sort -u >> ${source_file}.tmp
> +            tail -n +$((offset +1)) ${source_file} | grep -v MODULE_IMPORT_NS >> ${source_file}.tmp
> +            if ! diff -q ${source_file} ${source_file}.tmp; then
> +                mv ${source_file}.tmp ${source_file}
> +            else
> +                rm ${source_file}.tmp
> +            fi
> +        done
> +    done
> +}
> +
> +for f in `find $srctree/.tmp_versions/ -name *.ns_deps`; do
> +    generate_deps $f
> +done
> --
> 2.23.0.rc1.153.gdeed80330f-goog
>
>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/alpine.DEB.2.21.1908131430530.4608%40hadrien.
