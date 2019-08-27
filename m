Return-Path: <usb-storage+bncBD45FSE2XIORBOM4SXVQKGQELZHRVOI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x546.google.com (mail-pg1-x546.google.com [IPv6:2607:f8b0:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id D9BF59EF0D
	for <lists+usb-storage@lfdr.de>; Tue, 27 Aug 2019 17:37:30 +0200 (CEST)
Received: by mail-pg1-x546.google.com with SMTP id t19sf12027849pgh.6
        for <lists+usb-storage@lfdr.de>; Tue, 27 Aug 2019 08:37:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566920249; cv=pass;
        d=google.com; s=arc-20160816;
        b=H4bGcTzZXl9pG10MBbwVuQdaOqrtjrJA9ALaWmuV4mTkBGmX8mIHBAMmBb+eTR0UZH
         EA1GBNS9ty1NWw81SOXw6/zOIPyozBBJAiTGYmXTl3pYt1GYhmjFCgD8hZFXdtrL4Ybp
         gzjN9zzwqbJkcwET+hi5HGxaAUWKroX2GwsCt10lRMJ4bNg3TbYRoWCIMMZYetroo06h
         KgQHngY8mRP796Xd51+/X43ejC2UOQF9t5rr002nK/yDMILUyWQ0zAvYXIsG/JBMz7SF
         60m5TTexgLa3/PJGdC27cKMheDvPAUilKMObSG+86Toily861iafMrILwFK4oPz9lYFP
         rqsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=rGj1R2qeYdi86WV177XpA0ht2Ik3QsRlZnqGh/UE6V8=;
        b=atXwTYiEr0HampVqLuEMQYox5tuoqAEsushk+iq8ElnIYv4vJQgc6Ygy0ToUGBdg12
         38Q5tk5MsNtvPateCQUSTvTbhmxxCc2YKHuUSxtlWcKLm9GvuCWZ2MHTbTiyYHuXts94
         uMhDR4toUVgaZ5UNokuwFLN70rk1k2EBwAcqbgNAbCrjZcTLXewjzXHbjjeSEPugngv7
         3USGuFaRH6IHkAuwCD4fEvpVMn/Gmp8SrmNVPPBkubtKzMuhd9IvoZjM7bN43e4hNYX8
         /qfH99vrx6sfYoaqKflldrGWIcBJ/LpcTEErkfCT7K4xaIz7Dptw6mGI6dqbF5gMA3Lm
         af4Q==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ffw9Nlrv;
       spf=pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jeyu@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rGj1R2qeYdi86WV177XpA0ht2Ik3QsRlZnqGh/UE6V8=;
        b=YTiiNPGJZw8jmflTi4yijv5YVJkv1R9QEvNHsBef1vRof42FxyBTfCKqqEpzpDpjPk
         LRy7QfevFbn7XYA8aPlgwSSga5DVfD1KLAJoYHn/ciELbY14SNsUwmWGcfXZq3OIMUxe
         Z8nWbIrCAGpkDKovTyKcKJMPlnym6xII3Jg3g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rGj1R2qeYdi86WV177XpA0ht2Ik3QsRlZnqGh/UE6V8=;
        b=PAkdqw6ALOYgYpaNGIEIrsDA8JtcM24ogXHkWRylRj5LKAWrKVc/9f/M2D6t7sSpop
         R/+4bHBm7RnIN8odDPdQYrfMsvdFKhqb8VOVxv0KzA+C1B3UesdCdM+95pJmh4bbDQ6L
         zLu/AXPWfQbqb+KivWkOPup0nFaOsVEBzOQ1FBjJytX6d3BXuexV7nQiriiMb0ip8gQI
         rp5NAZL+yk+krEICtNBi+KLYvMrQF/SiRLvbonMTK1VfzeoEN2Pg38r7BTX35KVa+Wua
         7Q2dhOwh3fjbsPIIn8ABeqB3zFAB+uxqRx407hgrSUIHgtLTBxDrt/QxVcbBPT551wsK
         0ndw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXTQDl+uBnAfdbylZC46QOUYBVKdBvp8/4/ddHQbaWgLQoB+ehn
	a5QQXa02HpqPPbSz3npkCgAfqQ==
X-Google-Smtp-Source: APXvYqy7fKI7frh3RdzjTaW2xn0jbMRF0uvXQjVALmdZAbUyTLBxqZHp7vhcIYtcmd2QXPcQbsv8+w==
X-Received: by 2002:a17:902:1024:: with SMTP id b33mr24552701pla.325.1566920249502;
        Tue, 27 Aug 2019 08:37:29 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:b48c:: with SMTP id y12ls5990457plr.4.gmail; Tue, 27
 Aug 2019 08:37:28 -0700 (PDT)
X-Received: by 2002:a17:902:8a87:: with SMTP id p7mr1608493plo.240.1566920248811;
        Tue, 27 Aug 2019 08:37:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566920248; cv=none;
        d=google.com; s=arc-20160816;
        b=LxaumvwQQFbqM+GNIcoU0iZmU00ElAJIcoA8vmfs3kLt8cAfsmeyQCYRto8TRweKPQ
         OVxlJPURwMGDxksGdyirrYSgHdkvO4uzEXMtyl9iyC7RSlOJ1eh6MKyMFQVOo9IOZlBl
         sInPpzuLs3tfuWcK6bew6OTwi7asdzPXK2vGRem1xICHoS5PM5u2Qh0qcxLm9/LZXnkg
         EtL6gWsgJF+JWLm71OO4H4o4JOvuqIQ15CF7mIyUMrA3ozP5NTJmDDuOFWdX/TaUbSsl
         MJnOJEDMCJXdwd4SBF1G5Oyz69JC8NNKNDYbaj92+RdOvv+KXU8vHAuBY6V4fXstUzQU
         8ltg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=bWVnHzLjbhUqvdH9PmCNQmeA7p4whkQLDedTEq4CbMY=;
        b=f33plGCTFrCqiZLDDjmFZEoYPJR5zO+7s0tsmapXvo9f8Ry730g/ESA9QYtGInUHTx
         bYoanMWi78XjL/pzhlY4D57ekXX/9WwPghpDxVuEk9rlkebiRc5K4olcahmWddNgYTUm
         NZ4Fc0WDl7nbn3tDoLmM05uH5RUaWOyJZ6/GWZKytBFmZ9jYuttp87tFXsTINvSJtRdV
         pRwt6O3CXsV9giPQUTIorToOaDSV41/0AWlKIGiRclTdgY0cs0f1CxR8pKaw2dYn8PKN
         2qXJCvY8aifz9GQdVluXJI4qcSXHs0HdfKFH3c7UxlNIwQFOBMfAKX75ygiMcSvFQ+3T
         jf5w==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ffw9Nlrv;
       spf=pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jeyu@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id t1si3011227pjy.39.2019.08.27.08.37.28
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Aug 2019 08:37:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from linux-8ccs.fritz.box (unknown [92.117.134.103])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 04C4C20828;
	Tue, 27 Aug 2019 15:37:21 +0000 (UTC)
Date: Tue, 27 Aug 2019 17:37:18 +0200
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
	yamada.masahiro@socionext.com,
	Michael Ellerman <mpe@ellerman.id.au>,
	Andrew Morton <akpm@linux-foundation.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: [usb-storage] Re: [PATCH v3 03/11] module: add support for symbol namespaces.
Message-ID: <20190827153717.GA20822@linux-8ccs.fritz.box>
References: <20190813121733.52480-1-maennich@google.com>
 <20190821114955.12788-1-maennich@google.com>
 <20190821114955.12788-4-maennich@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20190821114955.12788-4-maennich@google.com>
X-OS: Linux linux-8ccs 4.12.14-lp150.12.61-default x86_64
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: jeyu@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ffw9Nlrv;       spf=pass
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
>The EXPORT_SYMBOL_NS() and EXPORT_SYMBOL_NS_GPL() macros can be used to
>export a symbol to a specific namespace.  There are no _GPL_FUTURE and
>_UNUSED variants because these are currently unused, and I'm not sure
>they are necessary.
>
>I didn't add EXPORT_SYMBOL_NS() for ASM exports; this patch sets the
>namespace of ASM exports to NULL by default. In case of relative
>references, it will be relocatable to NULL. If there's a need, this
>should be pretty easy to add.
>
>A module that wants to use a symbol exported to a namespace must add a
>MODULE_IMPORT_NS() statement to their module code; otherwise, modpost
>will complain when building the module, and the kernel module loader
>will emit an error and fail when loading the module.
>
>MODULE_IMPORT_NS() adds a modinfo tag 'import_ns' to the module. That
>tag can be observed by the modinfo command, modpost and kernel/module.c
>at the time of loading the module.
>
>The ELF symbols are renamed to include the namespace with an asm label;
>for example, symbol 'usb_stor_suspend' in namespace USB_STORAGE becomes
>'usb_stor_suspend.USB_STORAGE'.  This allows modpost to do namespace
>checking, without having to go through all the effort of parsing ELF and
>relocation records just to get to the struct kernel_symbols.
>
>On x86_64 I saw no difference in binary size (compression), but at
>runtime this will require a word of memory per export to hold the
>namespace. An alternative could be to store namespaced symbols in their
>own section and use a separate 'struct namespaced_kernel_symbol' for
>that section, at the cost of making the module loader more complex.
>
>Co-developed-by: Martijn Coenen <maco@android.com>
>Signed-off-by: Martijn Coenen <maco@android.com>
>Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>Signed-off-by: Matthias Maennich <maennich@google.com>
>---
> include/asm-generic/export.h |  6 +--
> include/linux/export.h       | 85 ++++++++++++++++++++++++++++++------
> include/linux/module.h       |  2 +
> kernel/module.c              | 43 ++++++++++++++++++
> 4 files changed, 120 insertions(+), 16 deletions(-)
>
>diff --git a/include/asm-generic/export.h b/include/asm-generic/export.h
>index 63f54907317b..e2b5d0f569d3 100644
>--- a/include/asm-generic/export.h
>+++ b/include/asm-generic/export.h
>@@ -17,11 +17,11 @@
>
> .macro __put, val, name
> #ifdef CONFIG_HAVE_ARCH_PREL32_RELOCATIONS
>-	.long	\val - ., \name - .
>+	.long	\val - ., \name - ., 0 - .
> #elif defined(CONFIG_64BIT)
>-	.quad	\val, \name
>+	.quad	\val, \name, 0
> #else
>-	.long	\val, \name
>+	.long	\val, \name, 0
> #endif
> .endm
>
>diff --git a/include/linux/export.h b/include/linux/export.h
>index 28a4d2150689..8e12e05444d1 100644
>--- a/include/linux/export.h
>+++ b/include/linux/export.h
>@@ -20,6 +20,8 @@ extern struct module __this_module;
>
> #ifdef CONFIG_MODULES
>
>+#define NS_SEPARATOR "."
>+
> #if defined(__KERNEL__) && !defined(__GENKSYMS__)
> #ifdef CONFIG_MODVERSIONS
> /* Mark the CRC weak since genksyms apparently decides not to
>@@ -49,6 +51,16 @@ extern struct module __this_module;
>  * absolute relocations that require runtime processing on relocatable
>  * kernels.
>  */
>+#define __KSYMTAB_ENTRY_NS(sym, sec, ns)				\
>+	__ADDRESSABLE(sym)						\
>+	asm("	.section \"___ksymtab" sec "+" #sym "\", \"a\"	\n"	\
>+	    "	.balign	4					\n"	\
>+	    "__ksymtab_" #sym NS_SEPARATOR #ns ":		\n"	\
>+	    "	.long	" #sym "- .				\n"	\
>+	    "	.long	__kstrtab_" #sym "- .			\n"	\
>+	    "	.long	__kstrtab_ns_" #sym "- .		\n"	\
>+	    "	.previous					\n")
>+
> #define __KSYMTAB_ENTRY(sym, sec)					\
> 	__ADDRESSABLE(sym)						\
> 	asm("	.section \"___ksymtab" sec "+" #sym "\", \"a\"	\n"	\
>@@ -56,32 +68,53 @@ extern struct module __this_module;
> 	    "__ksymtab_" #sym ":				\n"	\
> 	    "	.long	" #sym "- .				\n"	\
> 	    "	.long	__kstrtab_" #sym "- .			\n"	\
>+	    "	.long	0 - .					\n"	\
> 	    "	.previous					\n")
>
> struct kernel_symbol {
> 	int value_offset;
> 	int name_offset;
>+	int namespace_offset;
> };
> #else
>+#define __KSYMTAB_ENTRY_NS(sym, sec, ns)				\
>+	static const struct kernel_symbol __ksymtab_##sym##__##ns	\
>+	asm("__ksymtab_" #sym NS_SEPARATOR #ns)				\
>+	__attribute__((section("___ksymtab" sec "+" #sym), used))	\
>+	__aligned(sizeof(void *))					\
>+	= { (unsigned long)&sym, __kstrtab_##sym, __kstrtab_ns_##sym}

Style nit: missing space after __kstrtab_ns_##sym.

>+
> #define __KSYMTAB_ENTRY(sym, sec)					\
> 	static const struct kernel_symbol __ksymtab_##sym		\
>+	asm("__ksymtab_" #sym)						\
> 	__attribute__((section("___ksymtab" sec "+" #sym), used))	\
> 	__aligned(sizeof(void *))					\
>-	= { (unsigned long)&sym, __kstrtab_##sym }
>+	= { (unsigned long)&sym, __kstrtab_##sym, NULL }
>
> struct kernel_symbol {
> 	unsigned long value;
> 	const char *name;
>+	const char *namespace;
> };
> #endif
>
>-/* For every exported symbol, place a struct in the __ksymtab section */
>-#define ___EXPORT_SYMBOL(sym, sec)					\
>+#define ___export_symbol_common(sym, sec)				\
> 	extern typeof(sym) sym;						\
> 	__CRC_SYMBOL(sym, sec)						\
> 	static const char __kstrtab_##sym[]				\
> 	__attribute__((section("__ksymtab_strings"), used, aligned(1)))	\
>-	= #sym;								\
>+	= #sym								\

Any particular reason for this change? Not that it's important, just
noticing the inconsistent inclusion of the semicolon in some of the
macros (e.g. __CRC_SYMBOL includes it but __export_symbol_common doesn't).

>+
>+/* For every exported symbol, place a struct in the __ksymtab section */
>+#define ___EXPORT_SYMBOL_NS(sym, sec, ns)				\
>+	___export_symbol_common(sym, sec);			\
>+	static const char __kstrtab_ns_##sym[]				\
>+	__attribute__((section("__ksymtab_strings"), used, aligned(1)))	\
>+	= #ns;								\
>+	__KSYMTAB_ENTRY_NS(sym, sec, ns)
>+
>+#define ___EXPORT_SYMBOL(sym, sec)					\
>+	___export_symbol_common(sym, sec);				\
> 	__KSYMTAB_ENTRY(sym, sec)
>
> #if defined(__DISABLE_EXPORTS)
>@@ -91,6 +124,7 @@ struct kernel_symbol {
>  * be reused in other execution contexts such as the UEFI stub or the
>  * decompressor.
>  */
>+#define __EXPORT_SYMBOL_NS(sym, sec, ns)
> #define __EXPORT_SYMBOL(sym, sec)
>
> #elif defined(CONFIG_TRIM_UNUSED_KSYMS)
>@@ -117,18 +151,26 @@ struct kernel_symbol {
> #define __cond_export_sym_1(sym, sec) ___EXPORT_SYMBOL(sym, sec)
> #define __cond_export_sym_0(sym, sec) /* nothing */
>
>+#define __EXPORT_SYMBOL_NS(sym, sec, ns)				\
>+	__ksym_marker(sym);						\
>+	__cond_export_ns_sym(sym, sec, ns, __is_defined(__KSYM_##sym))
>+#define __cond_export_ns_sym(sym, sec, ns, conf)			\
>+	___cond_export_ns_sym(sym, sec, ns, conf)
>+#define ___cond_export_ns_sym(sym, sec, ns, enabled)			\
>+	__cond_export_ns_sym_##enabled(sym, sec, ns)
>+#define __cond_export_ns_sym_1(sym, sec, ns) ___EXPORT_SYMBOL_NS(sym, sec, ns)
>+#define __cond_export_ns_sym_0(sym, sec, ns) /* nothing */
>+
> #else
>+#define __EXPORT_SYMBOL_NS ___EXPORT_SYMBOL_NS
> #define __EXPORT_SYMBOL ___EXPORT_SYMBOL
> #endif
>
>-#define EXPORT_SYMBOL(sym)					\
>-	__EXPORT_SYMBOL(sym, "")
>-
>-#define EXPORT_SYMBOL_GPL(sym)					\
>-	__EXPORT_SYMBOL(sym, "_gpl")
>-
>-#define EXPORT_SYMBOL_GPL_FUTURE(sym)				\
>-	__EXPORT_SYMBOL(sym, "_gpl_future")
>+#define EXPORT_SYMBOL(sym) __EXPORT_SYMBOL(sym, "")
>+#define EXPORT_SYMBOL_GPL(sym) __EXPORT_SYMBOL(sym, "_gpl")
>+#define EXPORT_SYMBOL_GPL_FUTURE(sym) __EXPORT_SYMBOL(sym, "_gpl_future")
>+#define EXPORT_SYMBOL_NS(sym, ns) __EXPORT_SYMBOL_NS(sym, "", ns)
>+#define EXPORT_SYMBOL_NS_GPL(sym, ns) __EXPORT_SYMBOL_NS(sym, "_gpl", ns)
>
> #ifdef CONFIG_UNUSED_SYMBOLS
> #define EXPORT_UNUSED_SYMBOL(sym) __EXPORT_SYMBOL(sym, "_unused")
>@@ -138,11 +180,28 @@ struct kernel_symbol {
> #define EXPORT_UNUSED_SYMBOL_GPL(sym)
> #endif
>
>-#endif	/* __GENKSYMS__ */
>+#endif	/* __KERNEL__ && !__GENKSYMS__ */
>+
>+#if defined(__GENKSYMS__)
>+/*
>+ * When we're running genksyms, ignore the namespace and make the _NS
>+ * variants look like the normal ones. There are two reasons for this:
>+ * 1) In the normal definition of EXPORT_SYMBOL_NS, the 'ns' macro
>+ *    argument is itself not expanded because it's always tokenized or
>+ *    concatenated; but when running genksyms, a blank definition of the
>+ *    macro does allow the argument to be expanded; if a namespace
>+ *    happens to collide with a #define, this can cause issues.
>+ * 2) There's no need to modify genksyms to deal with the _NS variants
>+ */
>+#define EXPORT_SYMBOL_NS(sym, ns) EXPORT_SYMBOL(sym)
>+#define EXPORT_SYMBOL_NS_GPL(sym, ns) EXPORT_SYMBOL_GPL(sym)
>+#endif
>
> #else /* !CONFIG_MODULES... */
>
> #define EXPORT_SYMBOL(sym)
>+#define EXPORT_SYMBOL_NS(sym, ns)
>+#define EXPORT_SYMBOL_NS_GPL(sym, ns)
> #define EXPORT_SYMBOL_GPL(sym)
> #define EXPORT_SYMBOL_GPL_FUTURE(sym)
> #define EXPORT_UNUSED_SYMBOL(sym)
>diff --git a/include/linux/module.h b/include/linux/module.h
>index 1455812dd325..b3611e749f72 100644
>--- a/include/linux/module.h
>+++ b/include/linux/module.h
>@@ -280,6 +280,8 @@ struct notifier_block;
>
> #ifdef CONFIG_MODULES
>
>+#define MODULE_IMPORT_NS(ns) MODULE_INFO(import_ns, #ns)
>+
> extern int modules_disabled; /* for sysctl */
> /* Get/put a kernel symbol (calls must be symmetric) */
> void *__symbol_get(const char *symbol);
>diff --git a/kernel/module.c b/kernel/module.c
>index a23067907169..57e8253f2251 100644
>--- a/kernel/module.c
>+++ b/kernel/module.c
>@@ -544,6 +544,15 @@ static const char *kernel_symbol_name(const struct kernel_symbol *sym)
> #endif
> }
>
>+static const char *kernel_symbol_namespace(const struct kernel_symbol *sym)
>+{
>+#ifdef CONFIG_HAVE_ARCH_PREL32_RELOCATIONS
>+	return offset_to_ptr(&sym->namespace_offset);
>+#else
>+	return sym->namespace;
>+#endif
>+}
>+
> static int cmp_name(const void *va, const void *vb)
> {
> 	const char *a;
>@@ -1379,6 +1388,34 @@ static inline int same_magic(const char *amagic, const char *bmagic,
> }
> #endif /* CONFIG_MODVERSIONS */
>
>+static char *get_modinfo(const struct load_info *info, const char *tag);
>+static char *get_next_modinfo(const struct load_info *info, const char *tag,
>+			      char *prev);
>+
>+static int verify_namespace_is_imported(const struct load_info *info,
>+					const struct kernel_symbol *sym,
>+					struct module *mod)
>+{
>+	const char *namespace;
>+	char *imported_namespace;
>+
>+	namespace = kernel_symbol_namespace(sym);
>+	if (namespace) {
>+		imported_namespace = get_modinfo(info, "import_ns");
>+		while (imported_namespace) {
>+			if (strcmp(namespace, imported_namespace) == 0)
>+				return 0;
>+			imported_namespace = get_next_modinfo(
>+				info, "import_ns", imported_namespace);
>+		}
>+		pr_err("%s: module uses symbol (%s) from namespace %s, but does not import it.\n",
>+		       mod->name, kernel_symbol_name(sym), namespace);
>+		return -EINVAL;
>+	}
>+	return 0;
>+}
>+
>+
> /* Resolve a symbol for this module.  I.e. if we find one, record usage. */
> static const struct kernel_symbol *resolve_symbol(struct module *mod,
> 						  const struct load_info *info,
>@@ -1413,6 +1450,12 @@ static const struct kernel_symbol *resolve_symbol(struct module *mod,
> 		goto getname;
> 	}
>
>+	err = verify_namespace_is_imported(info, sym, mod);
>+	if (err) {
>+		sym = ERR_PTR(err);
>+		goto getname;
>+	}

I think we should verify the namespace before taking a reference to
the owner module (just swap the verify_namespace_is_imported() and
ref_module() calls here).

Other than that, this patch looks good. Thanks!

>+
> getname:
> 	/* We must make copy under the lock if we failed to get ref. */
> 	strncpy(ownername, module_name(owner), MODULE_NAME_LEN);
>-- 
>2.23.0.rc1.153.gdeed80330f-goog
>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190827153717.GA20822%40linux-8ccs.fritz.box.
