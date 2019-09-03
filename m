Return-Path: <usb-storage+bncBDMYPB44VAFRBNMDXLVQKGQEPEG724I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x745.google.com (mail-qk1-x745.google.com [IPv6:2607:f8b0:4864:20::745])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DA35A6C42
	for <lists+usb-storage@lfdr.de>; Tue,  3 Sep 2019 17:07:34 +0200 (CEST)
Received: by mail-qk1-x745.google.com with SMTP id h14sf487264qkl.17
        for <lists+usb-storage@lfdr.de>; Tue, 03 Sep 2019 08:07:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567523253; cv=pass;
        d=google.com; s=arc-20160816;
        b=SBYaxWPH2dmjNrv+L1UNquBW0cdPE0u8AXm2sL73k+9yBlU6uma+aZtKZ6VsAEc1gq
         6JeiT8jPVykNIpAemhGNEYCBXc7ZUGu+UTnby390NRVlY96UYGmK3N6wN/bSKllP1T50
         H+S1P2Fz2rFKif1mrNvk+1k3z4lzY/ObZDEb/JxnN22cEMQtmxIFIS5lJ3he35IWoc/z
         +o5KNnWDsBUFYQ6DEVeCEFeiFPpakDR9fYwGug7Z+oz9VWfEkuswJKqM12Os1ZAdxg3t
         bKHjzAAAszm/n7c8Jb/sDaww55WYSVj1FxQIViM8Veg5vbQoLnW4FMOYzjWHnOZEACqR
         gVMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=vhrzjKFsr5XOO4HvO1qqSUUqYpnPW98iWhO2LfalpCM=;
        b=rebsAJIt/Eps/rdjuV7uaQNFS90wnzHQ8lGcBeRbBi4t+VB5hqKa89JCeFCvLMQMYp
         5/1xQOFk1rFTmUVY4+vcsRASbDM6DWp0DIFSVTx0zTsYIBXOdU2feYw1MDO1GYqfljyd
         foLhKCVunnBeAPNler1Q/bvdgh5vM+vEBdPHV/x71eRAcqjW0hHl0YOjR1bQoVo0QMsk
         f2QOh0czGMceSsLICjr5ftkL17fyktCSXNZIwOUKeznDoa27N7u9FC0zi3JM3NP9GqmZ
         j2IkzdBB8itpx84eMZ6IycET1zgWV8GvTZIa6QxXQM/8RgNTthqUKJzV01vkHtwm4zjh
         Zq3Q==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Sq3vmIE3;
       spf=pass (google.com: domain of 3tifuxqgkagmnbfoojdihpphmf.dpn@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3tIFuXQgKAGMNBFOOJDIHPPHMF.DPN@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vhrzjKFsr5XOO4HvO1qqSUUqYpnPW98iWhO2LfalpCM=;
        b=V0Qn2LCbahsOLjq4imNBYCzpJVAG1YNdfiDi349gCRQRAeAaKczEIS+JYepg9MXrrm
         Dw69jmik9CtMaNsllknXNlb68V0AsMbfpRajcXD0erNvCVEbQ/yIsVosWPjxa1Czhvr/
         2IktloHSObUEE14ZvxZh8P8gngH5BM8gVOtVU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vhrzjKFsr5XOO4HvO1qqSUUqYpnPW98iWhO2LfalpCM=;
        b=PJkK61ehtnAaOYt9567hU1n4LhCXDKF6JCcigciIpf2KwA7b88gJZC2Wk4Og+Bgqh9
         JPEav9iXvtLj73fQuomTRbZ+V4roLslaS5opbDfVrZSgMyXAsdjgfdwUBBVyIiHqCpwJ
         OVyygT4DeZl27hcIDepd6lkfmLUBSkSsXGPKYTOj038GVN7VPlQYBh7XnP1yhwVb4Lf1
         og6VMNHH12MdBT0LNa/jR7aBzdqiCSgI/iCdRQBgJoYumZjsiuCEIXoKRWhZsFuU5035
         FrqI6ntIO0KWaA6yieauwbf4JZmYzQv+1rGBzATIuTQbrkQScQpwpjrPPpYC51t6q+f6
         ty+Q==
X-Gm-Message-State: APjAAAWjywaRGiaOLGSUCYIqQjvkszXAj8vwzz/c6n8y5d1+OOmvlxWu
	aACrW6kaLDHvZuAelDhT2jYEfw==
X-Google-Smtp-Source: APXvYqwNgp2s78/0RxITUwuFy6Fg3g6MDoG+W3Yr24BEgRb71TIe8kLoyVUg95Ka/D5P4Dmmwbxp6A==
X-Received: by 2002:a37:95c6:: with SMTP id x189mr33424866qkd.323.1567523253178;
        Tue, 03 Sep 2019 08:07:33 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a37:b846:: with SMTP id i67ls5471465qkf.2.gmail; Tue, 03 Sep
 2019 08:07:32 -0700 (PDT)
X-Received: by 2002:a37:7686:: with SMTP id r128mr3683632qkc.444.1567523252864;
        Tue, 03 Sep 2019 08:07:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567523252; cv=none;
        d=google.com; s=arc-20160816;
        b=eLSqYn2nFAzzgbIlSCpFVSquknfPqiqjaLzuMqM0XtnngZ2Jizt3ceMCww+ABQ9nmJ
         6zs72rgmsFrdOk8UcBG5lnsX0P6janMOvS88q9HV3e/DImRk1JFkp/ZP4N/I1Icz0tkJ
         HjKsTz9TzwjePpTXYncrQzXPxr6M1A+WmVogCwOCC6nh1X34C4KjJ1nEpnNdZkvY6zC0
         4PEaFWF2bza0DsJK9AXzdihigjcqe52rJCoLvSHzIOUtH6Caa3IjYk8vfqDj/72GmrYN
         +cqL7h8BuF03mCZkdZe/EycvtKfl3jPAqBZp8KGQGe6zHeVoKjFhLGQPHAv1uGQ+zh3B
         jNVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=6KFIwWWApjCQfX4bs8S0gCxREVnzqCf121iaZRShrCw=;
        b=r29e5uN8VHwTC2GrDEEiH0Z/WkLaKdvaZ3AJADNO6rxQAiTMeP2VcOcHYQW0tqqVZo
         sJjrwUbbPEEp3XmciGDIAcNSRZdxbV5UPV2cpkICkbuVep/xe8sODI9LT6+JeugMY7KD
         huZCR52TWQtiTGR2O8Z17IpQUl0pCe7LefWF3uo2xdItGP+0/giUHMOLa3bMFq+axJm6
         pbbV60OQ/IZMVmP5VvaQw5XgcJ8zfz66yQhEqHfO2hA4O6CK+Xe7SFSxOdqcT0p3GyAX
         bxDZq+uWpkY9h2NcOVii7RuxGyJZ0/M/yZy692kVABhrFfU4RYVyffzucXq2Xl1XfVKF
         OwNw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Sq3vmIE3;
       spf=pass (google.com: domain of 3tifuxqgkagmnbfoojdihpphmf.dpn@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3tIFuXQgKAGMNBFOOJDIHPPHMF.DPN@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id r29sor15468520qvc.29.2019.09.03.08.07.32
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 03 Sep 2019 08:07:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3tifuxqgkagmnbfoojdihpphmf.dpn@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:a05:6214:12ca:: with SMTP id s10mr15075192qvv.91.1567523252369;
 Tue, 03 Sep 2019 08:07:32 -0700 (PDT)
Date: Tue,  3 Sep 2019 16:06:29 +0100
In-Reply-To: <20190903150638.242049-1-maennich@google.com>
Message-Id: <20190903150638.242049-4-maennich@google.com>
Mime-Version: 1.0
References: <20180716122125.175792-1-maco@android.com> <20190903150638.242049-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [usb-storage] [PATCH v4 03/12] module: add support for symbol namespaces.
From: "'Matthias Maennich' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: linux-kernel@vger.kernel.org
Cc: kernel-team@android.com, maennich@google.com, arnd@arndb.de, 
	gregkh@linuxfoundation.org, jeyu@kernel.org, joel@joelfernandes.org, 
	lucas.de.marchi@gmail.com, maco@android.com, sspatil@google.com, 
	will@kernel.org, yamada.masahiro@socionext.com, linux-kbuild@vger.kernel.org, 
	linux-modules@vger.kernel.org, linux-usb@vger.kernel.org, 
	usb-storage@lists.one-eyed-alien.net, linux-watchdog@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Sq3vmIE3;       spf=pass
 (google.com: domain of 3tifuxqgkagmnbfoojdihpphmf.dpn@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=3tIFuXQgKAGMNBFOOJDIHPPHMF.DPN@flex--maennich.bounces.google.com;
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

The EXPORT_SYMBOL_NS() and EXPORT_SYMBOL_NS_GPL() macros can be used to
export a symbol to a specific namespace.  There are no _GPL_FUTURE and
_UNUSED variants because these are currently unused, and I'm not sure
they are necessary.

I didn't add EXPORT_SYMBOL_NS() for ASM exports; this patch sets the
namespace of ASM exports to NULL by default. In case of relative
references, it will be relocatable to NULL. If there's a need, this
should be pretty easy to add.

A module that wants to use a symbol exported to a namespace must add a
MODULE_IMPORT_NS() statement to their module code; otherwise, modpost
will complain when building the module, and the kernel module loader
will emit an error and fail when loading the module.

MODULE_IMPORT_NS() adds a modinfo tag 'import_ns' to the module. That
tag can be observed by the modinfo command, modpost and kernel/module.c
at the time of loading the module.

The ELF symbols are renamed to include the namespace with an asm label;
for example, symbol 'usb_stor_suspend' in namespace USB_STORAGE becomes
'usb_stor_suspend.USB_STORAGE'.  This allows modpost to do namespace
checking, without having to go through all the effort of parsing ELF and
relocation records just to get to the struct kernel_symbols.

On x86_64 I saw no difference in binary size (compression), but at
runtime this will require a word of memory per export to hold the
namespace. An alternative could be to store namespaced symbols in their
own section and use a separate 'struct namespaced_kernel_symbol' for
that section, at the cost of making the module loader more complex.

Co-developed-by: Martijn Coenen <maco@android.com>
Signed-off-by: Martijn Coenen <maco@android.com>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Matthias Maennich <maennich@google.com>
---
 include/asm-generic/export.h |  6 +--
 include/linux/export.h       | 91 +++++++++++++++++++++++++++++-------
 include/linux/module.h       |  2 +
 kernel/module.c              | 43 +++++++++++++++++
 4 files changed, 123 insertions(+), 19 deletions(-)

diff --git a/include/asm-generic/export.h b/include/asm-generic/export.h
index 63f54907317b..e2b5d0f569d3 100644
--- a/include/asm-generic/export.h
+++ b/include/asm-generic/export.h
@@ -17,11 +17,11 @@
 
 .macro __put, val, name
 #ifdef CONFIG_HAVE_ARCH_PREL32_RELOCATIONS
-	.long	\val - ., \name - .
+	.long	\val - ., \name - ., 0 - .
 #elif defined(CONFIG_64BIT)
-	.quad	\val, \name
+	.quad	\val, \name, 0
 #else
-	.long	\val, \name
+	.long	\val, \name, 0
 #endif
 .endm
 
diff --git a/include/linux/export.h b/include/linux/export.h
index 28a4d2150689..d59461e71478 100644
--- a/include/linux/export.h
+++ b/include/linux/export.h
@@ -20,6 +20,8 @@ extern struct module __this_module;
 
 #ifdef CONFIG_MODULES
 
+#define NS_SEPARATOR "."
+
 #if defined(__KERNEL__) && !defined(__GENKSYMS__)
 #ifdef CONFIG_MODVERSIONS
 /* Mark the CRC weak since genksyms apparently decides not to
@@ -29,13 +31,13 @@ extern struct module __this_module;
 	asm("	.section \"___kcrctab" sec "+" #sym "\", \"a\"	\n"	\
 	    "	.weak	__crc_" #sym "				\n"	\
 	    "	.long	__crc_" #sym " - .			\n"	\
-	    "	.previous					\n");
+	    "	.previous					\n")
 #else
 #define __CRC_SYMBOL(sym, sec)						\
 	asm("	.section \"___kcrctab" sec "+" #sym "\", \"a\"	\n"	\
 	    "	.weak	__crc_" #sym "				\n"	\
 	    "	.long	__crc_" #sym "				\n"	\
-	    "	.previous					\n");
+	    "	.previous					\n")
 #endif
 #else
 #define __CRC_SYMBOL(sym, sec)
@@ -49,6 +51,16 @@ extern struct module __this_module;
  * absolute relocations that require runtime processing on relocatable
  * kernels.
  */
+#define __KSYMTAB_ENTRY_NS(sym, sec, ns)				\
+	__ADDRESSABLE(sym)						\
+	asm("	.section \"___ksymtab" sec "+" #sym "\", \"a\"	\n"	\
+	    "	.balign	4					\n"	\
+	    "__ksymtab_" #sym NS_SEPARATOR #ns ":		\n"	\
+	    "	.long	" #sym "- .				\n"	\
+	    "	.long	__kstrtab_" #sym "- .			\n"	\
+	    "	.long	__kstrtab_ns_" #sym "- .		\n"	\
+	    "	.previous					\n")
+
 #define __KSYMTAB_ENTRY(sym, sec)					\
 	__ADDRESSABLE(sym)						\
 	asm("	.section \"___ksymtab" sec "+" #sym "\", \"a\"	\n"	\
@@ -56,32 +68,53 @@ extern struct module __this_module;
 	    "__ksymtab_" #sym ":				\n"	\
 	    "	.long	" #sym "- .				\n"	\
 	    "	.long	__kstrtab_" #sym "- .			\n"	\
+	    "	.long	0 - .					\n"	\
 	    "	.previous					\n")
 
 struct kernel_symbol {
 	int value_offset;
 	int name_offset;
+	int namespace_offset;
 };
 #else
+#define __KSYMTAB_ENTRY_NS(sym, sec, ns)				\
+	static const struct kernel_symbol __ksymtab_##sym##__##ns	\
+	asm("__ksymtab_" #sym NS_SEPARATOR #ns)				\
+	__attribute__((section("___ksymtab" sec "+" #sym), used))	\
+	__aligned(sizeof(void *))					\
+	= { (unsigned long)&sym, __kstrtab_##sym, __kstrtab_ns_##sym }
+
 #define __KSYMTAB_ENTRY(sym, sec)					\
 	static const struct kernel_symbol __ksymtab_##sym		\
+	asm("__ksymtab_" #sym)						\
 	__attribute__((section("___ksymtab" sec "+" #sym), used))	\
 	__aligned(sizeof(void *))					\
-	= { (unsigned long)&sym, __kstrtab_##sym }
+	= { (unsigned long)&sym, __kstrtab_##sym, NULL }
 
 struct kernel_symbol {
 	unsigned long value;
 	const char *name;
+	const char *namespace;
 };
 #endif
 
-/* For every exported symbol, place a struct in the __ksymtab section */
-#define ___EXPORT_SYMBOL(sym, sec)					\
+#define ___export_symbol_common(sym, sec)				\
 	extern typeof(sym) sym;						\
-	__CRC_SYMBOL(sym, sec)						\
+	__CRC_SYMBOL(sym, sec);						\
 	static const char __kstrtab_##sym[]				\
 	__attribute__((section("__ksymtab_strings"), used, aligned(1)))	\
-	= #sym;								\
+	= #sym								\
+
+/* For every exported symbol, place a struct in the __ksymtab section */
+#define ___EXPORT_SYMBOL_NS(sym, sec, ns)				\
+	___export_symbol_common(sym, sec);				\
+	static const char __kstrtab_ns_##sym[]				\
+	__attribute__((section("__ksymtab_strings"), used, aligned(1)))	\
+	= #ns;								\
+	__KSYMTAB_ENTRY_NS(sym, sec, ns)
+
+#define ___EXPORT_SYMBOL(sym, sec)					\
+	___export_symbol_common(sym, sec);				\
 	__KSYMTAB_ENTRY(sym, sec)
 
 #if defined(__DISABLE_EXPORTS)
@@ -91,6 +124,7 @@ struct kernel_symbol {
  * be reused in other execution contexts such as the UEFI stub or the
  * decompressor.
  */
+#define __EXPORT_SYMBOL_NS(sym, sec, ns)
 #define __EXPORT_SYMBOL(sym, sec)
 
 #elif defined(CONFIG_TRIM_UNUSED_KSYMS)
@@ -117,18 +151,26 @@ struct kernel_symbol {
 #define __cond_export_sym_1(sym, sec) ___EXPORT_SYMBOL(sym, sec)
 #define __cond_export_sym_0(sym, sec) /* nothing */
 
+#define __EXPORT_SYMBOL_NS(sym, sec, ns)				\
+	__ksym_marker(sym);						\
+	__cond_export_ns_sym(sym, sec, ns, __is_defined(__KSYM_##sym))
+#define __cond_export_ns_sym(sym, sec, ns, conf)			\
+	___cond_export_ns_sym(sym, sec, ns, conf)
+#define ___cond_export_ns_sym(sym, sec, ns, enabled)			\
+	__cond_export_ns_sym_##enabled(sym, sec, ns)
+#define __cond_export_ns_sym_1(sym, sec, ns) ___EXPORT_SYMBOL_NS(sym, sec, ns)
+#define __cond_export_ns_sym_0(sym, sec, ns) /* nothing */
+
 #else
+#define __EXPORT_SYMBOL_NS ___EXPORT_SYMBOL_NS
 #define __EXPORT_SYMBOL ___EXPORT_SYMBOL
 #endif
 
-#define EXPORT_SYMBOL(sym)					\
-	__EXPORT_SYMBOL(sym, "")
-
-#define EXPORT_SYMBOL_GPL(sym)					\
-	__EXPORT_SYMBOL(sym, "_gpl")
-
-#define EXPORT_SYMBOL_GPL_FUTURE(sym)				\
-	__EXPORT_SYMBOL(sym, "_gpl_future")
+#define EXPORT_SYMBOL(sym) __EXPORT_SYMBOL(sym, "")
+#define EXPORT_SYMBOL_GPL(sym) __EXPORT_SYMBOL(sym, "_gpl")
+#define EXPORT_SYMBOL_GPL_FUTURE(sym) __EXPORT_SYMBOL(sym, "_gpl_future")
+#define EXPORT_SYMBOL_NS(sym, ns) __EXPORT_SYMBOL_NS(sym, "", ns)
+#define EXPORT_SYMBOL_NS_GPL(sym, ns) __EXPORT_SYMBOL_NS(sym, "_gpl", ns)
 
 #ifdef CONFIG_UNUSED_SYMBOLS
 #define EXPORT_UNUSED_SYMBOL(sym) __EXPORT_SYMBOL(sym, "_unused")
@@ -138,11 +180,28 @@ struct kernel_symbol {
 #define EXPORT_UNUSED_SYMBOL_GPL(sym)
 #endif
 
-#endif	/* __GENKSYMS__ */
+#endif	/* __KERNEL__ && !__GENKSYMS__ */
+
+#if defined(__GENKSYMS__)
+/*
+ * When we're running genksyms, ignore the namespace and make the _NS
+ * variants look like the normal ones. There are two reasons for this:
+ * 1) In the normal definition of EXPORT_SYMBOL_NS, the 'ns' macro
+ *    argument is itself not expanded because it's always tokenized or
+ *    concatenated; but when running genksyms, a blank definition of the
+ *    macro does allow the argument to be expanded; if a namespace
+ *    happens to collide with a #define, this can cause issues.
+ * 2) There's no need to modify genksyms to deal with the _NS variants
+ */
+#define EXPORT_SYMBOL_NS(sym, ns) EXPORT_SYMBOL(sym)
+#define EXPORT_SYMBOL_NS_GPL(sym, ns) EXPORT_SYMBOL_GPL(sym)
+#endif
 
 #else /* !CONFIG_MODULES... */
 
 #define EXPORT_SYMBOL(sym)
+#define EXPORT_SYMBOL_NS(sym, ns)
+#define EXPORT_SYMBOL_NS_GPL(sym, ns)
 #define EXPORT_SYMBOL_GPL(sym)
 #define EXPORT_SYMBOL_GPL_FUTURE(sym)
 #define EXPORT_UNUSED_SYMBOL(sym)
diff --git a/include/linux/module.h b/include/linux/module.h
index 1455812dd325..b3611e749f72 100644
--- a/include/linux/module.h
+++ b/include/linux/module.h
@@ -280,6 +280,8 @@ struct notifier_block;
 
 #ifdef CONFIG_MODULES
 
+#define MODULE_IMPORT_NS(ns) MODULE_INFO(import_ns, #ns)
+
 extern int modules_disabled; /* for sysctl */
 /* Get/put a kernel symbol (calls must be symmetric) */
 void *__symbol_get(const char *symbol);
diff --git a/kernel/module.c b/kernel/module.c
index 3ee507c0a92f..6bb9b938f9c7 100644
--- a/kernel/module.c
+++ b/kernel/module.c
@@ -544,6 +544,15 @@ static const char *kernel_symbol_name(const struct kernel_symbol *sym)
 #endif
 }
 
+static const char *kernel_symbol_namespace(const struct kernel_symbol *sym)
+{
+#ifdef CONFIG_HAVE_ARCH_PREL32_RELOCATIONS
+	return offset_to_ptr(&sym->namespace_offset);
+#else
+	return sym->namespace;
+#endif
+}
+
 static int cmp_name(const void *va, const void *vb)
 {
 	const char *a;
@@ -1379,6 +1388,34 @@ static inline int same_magic(const char *amagic, const char *bmagic,
 }
 #endif /* CONFIG_MODVERSIONS */
 
+static char *get_modinfo(const struct load_info *info, const char *tag);
+static char *get_next_modinfo(const struct load_info *info, const char *tag,
+			      char *prev);
+
+static int verify_namespace_is_imported(const struct load_info *info,
+					const struct kernel_symbol *sym,
+					struct module *mod)
+{
+	const char *namespace;
+	char *imported_namespace;
+
+	namespace = kernel_symbol_namespace(sym);
+	if (namespace) {
+		imported_namespace = get_modinfo(info, "import_ns");
+		while (imported_namespace) {
+			if (strcmp(namespace, imported_namespace) == 0)
+				return 0;
+			imported_namespace = get_next_modinfo(
+				info, "import_ns", imported_namespace);
+		}
+		pr_err("%s: module uses symbol (%s) from namespace %s, but does not import it.\n",
+		       mod->name, kernel_symbol_name(sym), namespace);
+		return -EINVAL;
+	}
+	return 0;
+}
+
+
 /* Resolve a symbol for this module.  I.e. if we find one, record usage. */
 static const struct kernel_symbol *resolve_symbol(struct module *mod,
 						  const struct load_info *info,
@@ -1407,6 +1444,12 @@ static const struct kernel_symbol *resolve_symbol(struct module *mod,
 		goto getname;
 	}
 
+	err = verify_namespace_is_imported(info, sym, mod);
+	if (err) {
+		sym = ERR_PTR(err);
+		goto getname;
+	}
+
 	err = ref_module(mod, owner);
 	if (err) {
 		sym = ERR_PTR(err);
-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190903150638.242049-4-maennich%40google.com.
