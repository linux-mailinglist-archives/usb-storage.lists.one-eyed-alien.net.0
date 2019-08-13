Return-Path: <usb-storage+bncBDMYPB44VAFRBINHZPVAKGQE5OFI4CI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x848.google.com (mail-qt1-x848.google.com [IPv6:2607:f8b0:4864:20::848])
	by mail.lfdr.de (Postfix) with ESMTPS id C47C68BCC4
	for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 17:13:38 +0200 (CEST)
Received: by mail-qt1-x848.google.com with SMTP id k13sf12937897qtp.15
        for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 08:13:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565709217; cv=pass;
        d=google.com; s=arc-20160816;
        b=OBcQibuBwyBMmS9EwUkqXw9TFEJbTy3hKalLJ9t+fluQtFUMpqqEySCo6MVEYhQk9p
         zWJdclKi8lkJZIBQUejkD/kJbPl42fBG6zS7Hvm1qZhD/6WqKfcZkFYf4qjr0bZh+Bh/
         jw7BOuWXreLoTCBABihyGy1XY+9HqOauuULlGciOnfUC1YxFvdpOvm6mWZkv7sN2u9AT
         v1gc5BB5atLlBFsXVdgW4Tp7T7dXKWN6OzXtG+TWxPneVb/En7nBhGBKNQAZSfOkIc+8
         1C21roBKzhxE56FXexO4ikDt5jlsfHJzXftDeNPJsSJ03IKp7FRk3jEYEB6Hq0zz/7hB
         AW+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=I6J9HfaFXQ4aGa+/xsWALAmi3Y2FBx/Cc0qZv1GAi8s=;
        b=QQefJTOrlNsZvBEyNrIegL/VyYwSMg+S29P8h/gTXfyoCCAAq0PDUB8UM9pOv/Lw77
         9UGMPB4yZiYHfEaFhL3GQaNGH01vOTJtIAxT8OAJMg+WQ4gGIkrzbMt0J96UptExJ1Ee
         zhxWJhS+6he4a1q7bpaaHCKx/d5gyiqI0QqauQ+c8Dv2E1VHjfUp+uWgrIy74dCTBbOz
         n0gIqI9ia18Oa6eyyseV0ys7yLHaYrvRtOc1ozuj+Y68rFZCsPbCHX+nkP0qPwoZU9mG
         JELNhJJddy+zlPOT5wkRev/HZvKmKCyo/QW7R3W6cdCQdF1GqgwaIA5xz4nsqivpK/Jz
         aB+Q==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="bUxIsL/t";
       spf=pass (google.com: domain of 3xqpsxqgkafcbz3cc7165dd5a3.1db@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3xqpSXQgKAFcBz3CC7165DD5A3.1DB@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I6J9HfaFXQ4aGa+/xsWALAmi3Y2FBx/Cc0qZv1GAi8s=;
        b=POwiJje4GLkelQQoNF3SL8KeL5XxFe9+sFYrK6dyCtUymQk7V7WpPtnlSS02Hxp5Kv
         EcIDP2yCqywLfmyZszJ58e2KjOU+Ore1j/cggScHf7iTAHYzmLIotm94DtKXrpZo5rge
         ziXOsAq5pQhXTsK8N/r20CEsGmSe58Y3XtP1g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=I6J9HfaFXQ4aGa+/xsWALAmi3Y2FBx/Cc0qZv1GAi8s=;
        b=e0aps45FJoNiQYwfkBuk4vPNZoP1jmkoHAE/aNrDQLQn9G90x0DwmVUMdgEIOyaIbz
         qXxS/dEbJYCFgiKjKuaRjv/Ktkiw8vH2O/HHxTeovEd/8VpJJ44EoQiUQ/HzFjED4mBp
         /cxd/hlhFDdwt0Ce9I2voFx8pN6kkLDctHG0j8GlBG4vsOg1RrdZdShm0X1CbnRGuhgQ
         28B8sbs3fLgdQjaE0fOvD2ecIAyIuYY09Xucn5rWvAdJOjsJksSB82fAKXNKqTugN6bR
         WzrgEe8dVuKwyAdFSK/GcVZlzon0LOBJG/dhl+mM5y3wUFp0wO9h4Peee9NG9n5t6S33
         4DUA==
X-Gm-Message-State: APjAAAVIo6ChRrYStCRsnptN3kTY3kVnioLJ+fBXg+rHthjCufsQQguP
	w4GiHkmh88gtK/+iBWOhKGcxiQ==
X-Google-Smtp-Source: APXvYqx0ffqur1WJtt/kWtP0R66hJUB9q0AnUKlovTVFJonPu3/1cceIWOb8qtaCYOGeHY8j9bmPfg==
X-Received: by 2002:ac8:4a0d:: with SMTP id x13mr33479681qtq.356.1565709217705;
        Tue, 13 Aug 2019 08:13:37 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:2d4f:: with SMTP id o15ls5666313qta.16.gmail; Tue, 13
 Aug 2019 08:13:37 -0700 (PDT)
X-Received: by 2002:ac8:842:: with SMTP id x2mr24415394qth.73.1565709217458;
        Tue, 13 Aug 2019 08:13:37 -0700 (PDT)
Received: by 2002:ae9:c317:0:0:0:0:0 with SMTP id n23msqkg;
        Tue, 13 Aug 2019 05:19:19 -0700 (PDT)
X-Received: by 2002:ac5:ca0d:: with SMTP id c13mr4006232vkm.5.1565698759176;
        Tue, 13 Aug 2019 05:19:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565698759; cv=none;
        d=google.com; s=arc-20160816;
        b=E2Qb6cXIR3ToIOePQjoQsObiKZzCUwayGSGyiAw3M5cZ+5cFmc4fsunL1LyhmPF+h9
         pXJ1i9oiBWu4qFH/dk4tLc9DBsmp0mBXhRh/oKctQiVpLNxFSHbyc/HO/sglW3+HtlDn
         wAYI5ZxqmL+h8iLR/+FBLWiGpSApCqgmK/2ZQYo4AMpv0YC7yqm6lPQ49gQVUuBCl8q6
         FkTPtVRnvz2sG4I+kb77ooc5fHFYVl1FaKHzkiz/wEb+UfJKG4t7AF4fSIJpM+NeFwa+
         iBF9AWlCNPHhIRmZyeGUDTx+86xlQPRgCmUPjkMNK7xZ3GJlM0VCH5eEsaekf5bil3Tw
         BrWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=2tdBul0k/I3XtyftTg4wM69ggxXOp1RqtSz8hknRxjY=;
        b=hkoPVs4YSiwjS6pDlE+Ipmj9JVSQRXbstBKhPvWhX6D+PUVa/dgAUCxAFZDk/sjudQ
         qSdOh/yEitIzHnDQlayRu18EqBrp5/O4//P5+brcuxpks9HVyVVinXV11vWREzte4yza
         FdbYttvlWzDBuPUsW0/0QykBx167ecCFrxJ4lrYPdSMOv7qfwGouRLcaQKoyrmLwbhix
         QqYPvRAuZHl+AdvS3skW074slpokcR4SCorDwUNFHGviT4M8Y2nNZHyHj0rENFGGol7z
         WGwXZWvkAXgE/3HCXHYUWgGW++iu9E0vgJmPu140K7c9diD+v+uIw9XVf8876l7y8cWi
         XX0A==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="bUxIsL/t";
       spf=pass (google.com: domain of 3xqpsxqgkafcbz3cc7165dd5a3.1db@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3xqpSXQgKAFcBz3CC7165DD5A3.1DB@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id l127sor9582285vsd.5.2019.08.13.05.19.19
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 13 Aug 2019 05:19:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3xqpsxqgkafcbz3cc7165dd5a3.1db@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:a67:e013:: with SMTP id c19mr4985016vsl.203.1565698758598;
 Tue, 13 Aug 2019 05:19:18 -0700 (PDT)
Date: Tue, 13 Aug 2019 13:17:00 +0100
In-Reply-To: <20190813121733.52480-1-maennich@google.com>
Message-Id: <20190813121733.52480-4-maennich@google.com>
Mime-Version: 1.0
References: <20180716122125.175792-1-maco@android.com> <20190813121733.52480-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [usb-storage] [PATCH v2 03/10] module: add support for symbol namespaces.
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
	yamada.masahiro@socionext.com, Andrew Morton <akpm@linux-foundation.org>, 
	Michael Ellerman <mpe@ellerman.id.au>, Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="bUxIsL/t";       spf=pass
 (google.com: domain of 3xqpsxqgkafcbz3cc7165dd5a3.1db@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=3xqpSXQgKAFcBz3CC7165DD5A3.1DB@flex--maennich.bounces.google.com;
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
Signed-off-by: Matthias Maennich <maennich@google.com>
---
 include/asm-generic/export.h |  6 +--
 include/linux/export.h       | 85 ++++++++++++++++++++++++++++++------
 include/linux/module.h       |  2 +
 kernel/module.c              | 43 ++++++++++++++++++
 4 files changed, 120 insertions(+), 16 deletions(-)

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
index 28a4d2150689..8e12e05444d1 100644
--- a/include/linux/export.h
+++ b/include/linux/export.h
@@ -20,6 +20,8 @@ extern struct module __this_module;
 
 #ifdef CONFIG_MODULES
 
+#define NS_SEPARATOR "."
+
 #if defined(__KERNEL__) && !defined(__GENKSYMS__)
 #ifdef CONFIG_MODVERSIONS
 /* Mark the CRC weak since genksyms apparently decides not to
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
+	= { (unsigned long)&sym, __kstrtab_##sym, __kstrtab_ns_##sym}
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
 	__CRC_SYMBOL(sym, sec)						\
 	static const char __kstrtab_##sym[]				\
 	__attribute__((section("__ksymtab_strings"), used, aligned(1)))	\
-	= #sym;								\
+	= #sym								\
+
+/* For every exported symbol, place a struct in the __ksymtab section */
+#define ___EXPORT_SYMBOL_NS(sym, sec, ns)				\
+	___export_symbol_common(sym, sec);			\
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
index a23067907169..57e8253f2251 100644
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
@@ -1413,6 +1450,12 @@ static const struct kernel_symbol *resolve_symbol(struct module *mod,
 		goto getname;
 	}
 
+	err = verify_namespace_is_imported(info, sym, mod);
+	if (err) {
+		sym = ERR_PTR(err);
+		goto getname;
+	}
+
 getname:
 	/* We must make copy under the lock if we failed to get ref. */
 	strncpy(ownername, module_name(owner), MODULE_NAME_LEN);
-- 
2.23.0.rc1.153.gdeed80330f-goog

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190813121733.52480-4-maennich%40google.com.
