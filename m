Return-Path: <usb-storage+bncBDMYPB44VAFRBU7LZDVQKGQEAHSHSCY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yw1-xc45.google.com (mail-yw1-xc45.google.com [IPv6:2607:f8b0:4864:20::c45])
	by mail.lfdr.de (Postfix) with ESMTPS id 355CBAB5DA
	for <lists+usb-storage@lfdr.de>; Fri,  6 Sep 2019 12:32:53 +0200 (CEST)
Received: by mail-yw1-xc45.google.com with SMTP id i11sf4215421ywc.3
        for <lists+usb-storage@lfdr.de>; Fri, 06 Sep 2019 03:32:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567765972; cv=pass;
        d=google.com; s=arc-20160816;
        b=I+VtnHBBviKbSsjpWBXvIIhJDVukOJxXULcqy8P0xvdtckLqn0J7d5m+HZ2fl7A37U
         V7ZmFA5Lzg8EZblHBrpHXj/Cz4SZM4PCWI2H812IXkt1rCdbcK5LMAHObEVhG7hFoAGb
         Zdw+nAwnqxE1ynE5cCmHHfeD1jKRC1EvDrjWtYa6jbD0qEk3AvH96S2jidj3spnlxILJ
         K8+20bHYyGTyPa2/QuIkmJN38OwQvA9PpB0UGZxqawbnWXYQsK3T5t2LjFHZ+wFnHNMK
         6CJmlMyU/1XE11EXVneZMqL32IqDIpSD5xShIgty6bqwckuIVcfWwxmYMFc6t9LJ8uEo
         KHYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=0d2777HLaPN1SCDG9yCNdzLm7hGgZSegxDpO7DgfuRo=;
        b=fUabMuWeknndkAa0aR0WUFkyQUri1mxmRRA0kcBT72/IK/6VediIANgvnSDcJ+/T4K
         9smBy8ep2YClNbtNhyxjODJH3rrilkDboZtXptwOy/o1/hCPKhJKI/CgkJm5F3ibM312
         Z+7Ev0RorN1hQAcxF0YubOjsIaLjy3KnAti7wlWUVUcMgQvudWBvQs2XdqBuR8SXRcS/
         QFxE5PQ3aoN9ZRvkYIp1e2qjKsFCNFZg20pO5gEeFmhweltDsxcD5TCk2mfJDmXLsg5P
         J6GJtscclfxp5A8Bwuu3KTCl5xjlSGyi/6sSM33Rf+T9/dEMldsJA+upGVS12stBAr72
         DGBA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kXRJ0YO2;
       spf=pass (google.com: domain of 30zvyxqgkapgrfjssnhmlttlqj.htr@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=30zVyXQgKAPgrfjssnhmlttlqj.htr@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0d2777HLaPN1SCDG9yCNdzLm7hGgZSegxDpO7DgfuRo=;
        b=CGDe7HDg/e6a3Hg9xpCR1BLlNYe5Ms5kOZD+fCQvx+n0iTnsfbcOKEpStw+GPnZJCi
         qusPi51f/8IFG+JFkI6BARmnsaYJHD0j3aQbAEXCzKGd90/eS0FwcOyI/q66O6HO6VhQ
         k84JEkKlHr76GO2ilUN92lxjfOIMGrxRfzgAI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0d2777HLaPN1SCDG9yCNdzLm7hGgZSegxDpO7DgfuRo=;
        b=ggB7RaHFrNYvVb6sxEuPf2wR60K6fE80yIKbfbyW416dt+ZzX/HSLdCRLXUmo5zIoD
         H7o0UULARLfH6UQLWA19eJZWo96tGYHtppN6g3KyfA60ys7np6KqC/7rEsbzy4+YM8E3
         7o6qvC40+hBtL20zZI6qWdmCfLKEbnDt9qfBSsmZFMjnJGP0Fyd9Tc4RQi4JcAhVg8cL
         /64FhZp5jn1ktK8nQJno36UsnQn3ErlVOOsG/Vq+EJYXdhZOQemgBPw9qZ5tXqCg0LwG
         v6ifSnEd3WuiPwzYRB6hJeyMMHjHXPrmC+RQKYeKl7CQSRvqSut2/79K/ay1m7c7JekH
         Zg6w==
X-Gm-Message-State: APjAAAXfRVe2X76A69wPCVDhgWfAFdlzsMRgumnVkJRVDN0ZRjbLZ/gB
	uAr+nb5eWUrTQ0RcAWDqC6Beiw==
X-Google-Smtp-Source: APXvYqwsvF1nAspcbdWUj33WMoYn1pt4uthXptKbsSOSu6mCh0PPhU445p40cMrDM6vR+phnw5L/GQ==
X-Received: by 2002:a25:741:: with SMTP id 62mr6114691ybh.478.1567765971873;
        Fri, 06 Sep 2019 03:32:51 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:90d:: with SMTP id 13ls858273ybj.1.gmail; Fri, 06 Sep
 2019 03:32:51 -0700 (PDT)
X-Received: by 2002:a25:324a:: with SMTP id y71mr5586347yby.439.1567765971524;
        Fri, 06 Sep 2019 03:32:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567765971; cv=none;
        d=google.com; s=arc-20160816;
        b=kBlFQ6Ntg8UBU37n2Q//0zGuU8ptMi53k6zCan7zkPmoMNEf5CaFH+Fo/NGnEbiOEp
         iU3CJxvnyO96sV6c+MAv//8G5yXySmh4NixUSVCYVZ5cT4sxTxtCxjVnBf19hJpef+QR
         2ocNzegh0EzACyEx1xdBUj49FyaIHHxlcAOciQS9xWMDyR0h0mQuiNWUG+3tzFeywY1z
         W8wPXvC+5RRUWAeM5FdTuzXTpxmOXs9iIkAoQvmTZ9oOsXLMJAPIRtpNuYavlzmPP8Wm
         XIPOYnhfDbjHokI/bZ/nER/Iuu0ljqrw4D4+6lXpEcKSfvW9w934ryuD5skhc/fdKF88
         8RKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=6KFIwWWApjCQfX4bs8S0gCxREVnzqCf121iaZRShrCw=;
        b=MH5Ul1JHUt2rSCuC9yNhdiXlxAcA46X3UnxZ5ekcKIiPIh7lBwKnkA59T5h2kHvs6n
         rxJsxOpEpQcwBRGdrVLhPzcyNqqH+xcyNVqa3I+psHSMHjFLLpgn/0qTXbk9xU3N1gsf
         uf2EJlWLVuWla3Kh1gjigy4RfH4QEXUkPRQgoWp9RDE0o8oMPpT03G1a/3dXfRTSRRF2
         mC1B3YXe+BivehfEAR5CA7oHqrlim3EXqrhZ0qYbrWAC9a7KTcn82ev/O0CJV2jXV3oZ
         yzeg8254dM2eV04OGiSz4uOJoMjuFa9ggsmT5zZZjTlY+z0XKKJCHmUlOFBPXcoMLvJC
         AOZQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kXRJ0YO2;
       spf=pass (google.com: domain of 30zvyxqgkapgrfjssnhmlttlqj.htr@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=30zVyXQgKAPgrfjssnhmlttlqj.htr@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id z191sor3133869ywd.12.2019.09.06.03.32.51
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 06 Sep 2019 03:32:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of 30zvyxqgkapgrfjssnhmlttlqj.htr@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:a81:794c:: with SMTP id u73mr1553918ywc.230.1567765971037;
 Fri, 06 Sep 2019 03:32:51 -0700 (PDT)
Date: Fri,  6 Sep 2019 11:32:27 +0100
In-Reply-To: <20190906103235.197072-1-maennich@google.com>
Message-Id: <20190906103235.197072-4-maennich@google.com>
Mime-Version: 1.0
References: <20180716122125.175792-1-maco@android.com> <20190906103235.197072-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [usb-storage] [PATCH v5 03/11] module: add support for symbol namespaces.
From: "'Matthias Maennich' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: linux-kernel@vger.kernel.org
Cc: kernel-team@android.com, maennich@google.com, arnd@arndb.de, 
	gregkh@linuxfoundation.org, jeyu@kernel.org, joel@joelfernandes.org, 
	lucas.de.marchi@gmail.com, maco@android.com, sspatil@google.com, 
	will@kernel.org, yamada.masahiro@socionext.com, linux-kbuild@vger.kernel.org, 
	linux-modules@vger.kernel.org, linux-usb@vger.kernel.org, 
	usb-storage@lists.one-eyed-alien.net
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=kXRJ0YO2;       spf=pass
 (google.com: domain of 30zvyxqgkapgrfjssnhmlttlqj.htr@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=30zVyXQgKAPgrfjssnhmlttlqj.htr@flex--maennich.bounces.google.com;
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190906103235.197072-4-maennich%40google.com.
