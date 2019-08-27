Return-Path: <usb-storage+bncBDMYPB44VAFRBAVJSXVQKGQE7IDHG2Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x347.google.com (mail-wm1-x347.google.com [IPv6:2a00:1450:4864:20::347])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C3279EF9F
	for <lists+usb-storage@lfdr.de>; Tue, 27 Aug 2019 18:04:19 +0200 (CEST)
Received: by mail-wm1-x347.google.com with SMTP id m26sf1221026wmc.3
        for <lists+usb-storage@lfdr.de>; Tue, 27 Aug 2019 09:04:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566921859; cv=pass;
        d=google.com; s=arc-20160816;
        b=GfvZDBU1Yc41u3dqltSitonO8DKLt046FDhlgshZyN2kM04upPcWHBBVx2Ch/t8xq/
         BP8isz1xUWIcZWyPVC+xE/AE5V9bG/pN2187Pvya4/P5LZLhb0jsff96B5XCGZr4mNu4
         kZQfWsSL5evEl1ZWvr9va9PNLONzvzVshjgQR8Rj/H9Kxb8tbJgYXk8701mQlQbGHrrE
         D2lIr5hdkqWKvlRdlvDEVbg+le04sBAERJPILRaHAS8Amqp8TjsERTEj2qV6lKp7i5lj
         z15fXSUw06ZsN2/XM1xv5khk+eqE3NnSK1MouunlXx9WzYRIR1iHgUlytCffy+BvyhO9
         IgQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=b4yFLu0meVnlb1vwgXmzjltoXKsZRR8nUNX/mWFYnCE=;
        b=gl1EMuvO1zrykT3rO8Os2A9Ys8AWaXEI1SZIg4fsHmralJRMAA74D+BT50IvpG5SEr
         bx9rZorf8HjB14cd2DiJ68n6s3p+3nBP9Tb42U/LD6bje/MzrjFwfvJW5Xl1j3JPiP9p
         DQ/Lq4AlClgWvJLXzJajeijzIbi7fiEKCZbJ45cVB4zBjERvd3EtyiEYE8tDyIqzroAc
         oWd3h7Es8Xq61DdT078nC+ByybTFmmhQkfxm9iuz6zu1H9jZ2RuBV0amnHkTQVUSprTz
         vOWt+unufMMZEHOVs3wxVIt4u2VpIwk2j/5v4h39g3gFPLUMcc9/lzGn9TlOpiPolR4M
         3l1A==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pT3W2hD1;
       spf=pass (google.com: domain of maennich@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=maennich@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=b4yFLu0meVnlb1vwgXmzjltoXKsZRR8nUNX/mWFYnCE=;
        b=ZgildzqfhaFN98eaFcd5tIJ5pTdedt8LKpNnnTa2qmX50AZqsIOuA+JWW+bc64PGqO
         tAd36lF2V64qP/THG4PiIModZIObnqrISKRhfxbiIlwTIlBYtiMgmoikHR+A0tevWdQP
         HXwv1EcBOfDhzCaCDxrSyBOZDRkkkBXMfzHA8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=b4yFLu0meVnlb1vwgXmzjltoXKsZRR8nUNX/mWFYnCE=;
        b=WtdFBFJQHQtAcNNsba6niZCDr7N5+rPeGUnngJG3rsxESRm2tIL6AlP6G6fLAogIjU
         yFS4MCtbFPF3GHJ169AJtG8Kv7xvxYuDSIfHrJRcBo9X35pjoIOWozLoYde9W2sZwm92
         vM1s8+Ap+lhZSTvIb0xWujMBG4UB2LQfnoACH6tl5CsucgGFuWtZhQTo9hPNzdbzTl/m
         PWCFPc+m1e+9NgYkYZJsWvAhQZZC7g5p/LvLtVNS12OFiFZ/pObYrkd3Bx1VH9FgYVUf
         Wg+8K+nXwbQysdOXkajhE7PxufiKUAfxaX5FKrHe4BBVy6rLrYS86UlBHiGMZyNpCpXX
         2bKQ==
X-Gm-Message-State: APjAAAUa5qajBkHSfBMZT/svEG00TnnxUx8+9Wnt2CR9IJ2gaWiWdK65
	/tQ37PSJZqHhku2guwxvq11hJw==
X-Google-Smtp-Source: APXvYqwebA0E4RWuTwf8HJc1KtaBWinE9yXGmnDPqaQ+kkkSVnpm9uZ/U4Uwy5ze2zHSMm4fGlt6XA==
X-Received: by 2002:a7b:cd17:: with SMTP id f23mr30203659wmj.177.1566921858952;
        Tue, 27 Aug 2019 09:04:18 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a1c:5411:: with SMTP id i17ls7761459wmb.2.canary-gmail; Tue,
 27 Aug 2019 09:04:18 -0700 (PDT)
X-Received: by 2002:a7b:c3d4:: with SMTP id t20mr28615523wmj.71.1566921857977;
        Tue, 27 Aug 2019 09:04:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566921857; cv=none;
        d=google.com; s=arc-20160816;
        b=G16Fr6FchmgyIcQjhb6VesYH8rzFWtp/rwGQURaN+Y1ZygyP8c15S+h4OYaIrzAS3L
         /rJnbf803vFrQEs3ihEMpG/52KYJy20E5pUXBpVS/qQ7cR6yEv/r79m3d5AfWZ/YoAD2
         NcQvSYJF/hH7k2cnDko9ma7j+C2BjU1d3oQto0ETrMYobbB462A7hUHmiWwiK28LtsLP
         B/8391TxzSyt7Lb9AzXJ57IpII+xDW/kRC7wNYo1ySotT+rduwUzGgrPayDgzMpSJatM
         rhoLi3ferymCE9x3oOCV1Qgj7zc/QcBPeAbLUa/vq6dmt0sN3mLDTpEzR88QkQZG66KT
         H9jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Ljo8vajhU+W+Ukm/1s/QogI8ChcEKwBtMF+HxQ/PSw4=;
        b=qhytcZdSnyZfATg6DxXnClvIh9ZN5k9hVFeiU5QzZ3w+fP9BZPc5C8Ty2UGw8WYcAb
         BFuAa3zv63dnGBEMhDCjEVdMEmzZK9W5rPew3dfyiU18EKVcTXVd6TJ0u1s6zOT4fOcj
         YJUwKYlxb+f2EDPoam+oJoPbLAn5Hj0RucCGtC6W1hD+EIZb9Uhox09Lg9INoZ3iRvPG
         10e4hKYD31gwqp55B6JsZQ16f7eadUBnI94rDkDnHsERdctLLHYgSVgpO76Y2lPWpA+3
         xhkx8hHTtJEvIzKgZ6LnvMefLC6+yt3VS4VwDx5P5N2ASh4SJBbA7pjdwYxFvADdIlOf
         hGqQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pT3W2hD1;
       spf=pass (google.com: domain of maennich@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=maennich@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id o18sor10776824wrp.20.2019.08.27.09.04.17
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 27 Aug 2019 09:04:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of maennich@google.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a5d:50cb:: with SMTP id f11mr30096307wrt.277.1566921857187;
        Tue, 27 Aug 2019 09:04:17 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:210:e8f7:125b:61e9:733d])
        by smtp.gmail.com with ESMTPSA id i93sm32304192wri.57.2019.08.27.09.04.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Aug 2019 09:04:16 -0700 (PDT)
Date: Tue, 27 Aug 2019 17:04:13 +0100
From: "'Matthias Maennich' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: Jessica Yu <jeyu@kernel.org>
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
Message-ID: <20190827160413.GA148206@google.com>
References: <20190813121733.52480-1-maennich@google.com>
 <20190821114955.12788-1-maennich@google.com>
 <20190821114955.12788-4-maennich@google.com>
 <20190827153717.GA20822@linux-8ccs.fritz.box>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20190827153717.GA20822@linux-8ccs.fritz.box>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=pT3W2hD1;       spf=pass
 (google.com: domain of maennich@google.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=maennich@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

On Tue, Aug 27, 2019 at 05:37:18PM +0200, Jessica Yu wrote:
>+++ Matthias Maennich [21/08/19 12:49 +0100]:
>>The EXPORT_SYMBOL_NS() and EXPORT_SYMBOL_NS_GPL() macros can be used to
>>export a symbol to a specific namespace.  There are no _GPL_FUTURE and
>>_UNUSED variants because these are currently unused, and I'm not sure
>>they are necessary.
>>
>>I didn't add EXPORT_SYMBOL_NS() for ASM exports; this patch sets the
>>namespace of ASM exports to NULL by default. In case of relative
>>references, it will be relocatable to NULL. If there's a need, this
>>should be pretty easy to add.
>>
>>A module that wants to use a symbol exported to a namespace must add a
>>MODULE_IMPORT_NS() statement to their module code; otherwise, modpost
>>will complain when building the module, and the kernel module loader
>>will emit an error and fail when loading the module.
>>
>>MODULE_IMPORT_NS() adds a modinfo tag 'import_ns' to the module. That
>>tag can be observed by the modinfo command, modpost and kernel/module.c
>>at the time of loading the module.
>>
>>The ELF symbols are renamed to include the namespace with an asm label;
>>for example, symbol 'usb_stor_suspend' in namespace USB_STORAGE becomes
>>'usb_stor_suspend.USB_STORAGE'.  This allows modpost to do namespace
>>checking, without having to go through all the effort of parsing ELF and
>>relocation records just to get to the struct kernel_symbols.
>>
>>On x86_64 I saw no difference in binary size (compression), but at
>>runtime this will require a word of memory per export to hold the
>>namespace. An alternative could be to store namespaced symbols in their
>>own section and use a separate 'struct namespaced_kernel_symbol' for
>>that section, at the cost of making the module loader more complex.
>>
>>Co-developed-by: Martijn Coenen <maco@android.com>
>>Signed-off-by: Martijn Coenen <maco@android.com>
>>Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>>Signed-off-by: Matthias Maennich <maennich@google.com>
>>---
>>include/asm-generic/export.h |  6 +--
>>include/linux/export.h       | 85 ++++++++++++++++++++++++++++++------
>>include/linux/module.h       |  2 +
>>kernel/module.c              | 43 ++++++++++++++++++
>>4 files changed, 120 insertions(+), 16 deletions(-)
>>
>>diff --git a/include/asm-generic/export.h b/include/asm-generic/export.h
>>index 63f54907317b..e2b5d0f569d3 100644
>>--- a/include/asm-generic/export.h
>>+++ b/include/asm-generic/export.h
>>@@ -17,11 +17,11 @@
>>
>>.macro __put, val, name
>>#ifdef CONFIG_HAVE_ARCH_PREL32_RELOCATIONS
>>-	.long	\val - ., \name - .
>>+	.long	\val - ., \name - ., 0 - .
>>#elif defined(CONFIG_64BIT)
>>-	.quad	\val, \name
>>+	.quad	\val, \name, 0
>>#else
>>-	.long	\val, \name
>>+	.long	\val, \name, 0
>>#endif
>>.endm
>>
>>diff --git a/include/linux/export.h b/include/linux/export.h
>>index 28a4d2150689..8e12e05444d1 100644
>>--- a/include/linux/export.h
>>+++ b/include/linux/export.h
>>@@ -20,6 +20,8 @@ extern struct module __this_module;
>>
>>#ifdef CONFIG_MODULES
>>
>>+#define NS_SEPARATOR "."
>>+
>>#if defined(__KERNEL__) && !defined(__GENKSYMS__)
>>#ifdef CONFIG_MODVERSIONS
>>/* Mark the CRC weak since genksyms apparently decides not to
>>@@ -49,6 +51,16 @@ extern struct module __this_module;
>> * absolute relocations that require runtime processing on relocatable
>> * kernels.
>> */
>>+#define __KSYMTAB_ENTRY_NS(sym, sec, ns)				\
>>+	__ADDRESSABLE(sym)						\
>>+	asm("	.section \"___ksymtab" sec "+" #sym "\", \"a\"	\n"	\
>>+	    "	.balign	4					\n"	\
>>+	    "__ksymtab_" #sym NS_SEPARATOR #ns ":		\n"	\
>>+	    "	.long	" #sym "- .				\n"	\
>>+	    "	.long	__kstrtab_" #sym "- .			\n"	\
>>+	    "	.long	__kstrtab_ns_" #sym "- .		\n"	\
>>+	    "	.previous					\n")
>>+
>>#define __KSYMTAB_ENTRY(sym, sec)					\
>>	__ADDRESSABLE(sym)						\
>>	asm("	.section \"___ksymtab" sec "+" #sym "\", \"a\"	\n"	\
>>@@ -56,32 +68,53 @@ extern struct module __this_module;
>>	    "__ksymtab_" #sym ":				\n"	\
>>	    "	.long	" #sym "- .				\n"	\
>>	    "	.long	__kstrtab_" #sym "- .			\n"	\
>>+	    "	.long	0 - .					\n"	\
>>	    "	.previous					\n")
>>
>>struct kernel_symbol {
>>	int value_offset;
>>	int name_offset;
>>+	int namespace_offset;
>>};
>>#else
>>+#define __KSYMTAB_ENTRY_NS(sym, sec, ns)				\
>>+	static const struct kernel_symbol __ksymtab_##sym##__##ns	\
>>+	asm("__ksymtab_" #sym NS_SEPARATOR #ns)				\
>>+	__attribute__((section("___ksymtab" sec "+" #sym), used))	\
>>+	__aligned(sizeof(void *))					\
>>+	= { (unsigned long)&sym, __kstrtab_##sym, __kstrtab_ns_##sym}
>
>Style nit: missing space after __kstrtab_ns_##sym.
>
>>+
>>#define __KSYMTAB_ENTRY(sym, sec)					\
>>	static const struct kernel_symbol __ksymtab_##sym		\
>>+	asm("__ksymtab_" #sym)						\
>>	__attribute__((section("___ksymtab" sec "+" #sym), used))	\
>>	__aligned(sizeof(void *))					\
>>-	= { (unsigned long)&sym, __kstrtab_##sym }
>>+	= { (unsigned long)&sym, __kstrtab_##sym, NULL }
>>
>>struct kernel_symbol {
>>	unsigned long value;
>>	const char *name;
>>+	const char *namespace;
>>};
>>#endif
>>
>>-/* For every exported symbol, place a struct in the __ksymtab section */
>>-#define ___EXPORT_SYMBOL(sym, sec)					\
>>+#define ___export_symbol_common(sym, sec)				\
>>	extern typeof(sym) sym;						\
>>	__CRC_SYMBOL(sym, sec)						\
>>	static const char __kstrtab_##sym[]				\
>>	__attribute__((section("__ksymtab_strings"), used, aligned(1)))	\
>>-	= #sym;								\
>>+	= #sym								\
>
>Any particular reason for this change? Not that it's important, just
>noticing the inconsistent inclusion of the semicolon in some of the
>macros (e.g. __CRC_SYMBOL includes it but __export_symbol_common doesn't).
>

I tried to be consistent to let the macro "call site" provide the final
semicolon. And you are right, I could have adjusted __CRC_SYMBOL as
well. I will adjust this for the next version.

>>+
>>+/* For every exported symbol, place a struct in the __ksymtab section */
>>+#define ___EXPORT_SYMBOL_NS(sym, sec, ns)				\
>>+	___export_symbol_common(sym, sec);			\
>>+	static const char __kstrtab_ns_##sym[]				\
>>+	__attribute__((section("__ksymtab_strings"), used, aligned(1)))	\
>>+	= #ns;								\
>>+	__KSYMTAB_ENTRY_NS(sym, sec, ns)
>>+
>>+#define ___EXPORT_SYMBOL(sym, sec)					\
>>+	___export_symbol_common(sym, sec);				\
>>	__KSYMTAB_ENTRY(sym, sec)
>>
>>#if defined(__DISABLE_EXPORTS)
>>@@ -91,6 +124,7 @@ struct kernel_symbol {
>> * be reused in other execution contexts such as the UEFI stub or the
>> * decompressor.
>> */
>>+#define __EXPORT_SYMBOL_NS(sym, sec, ns)
>>#define __EXPORT_SYMBOL(sym, sec)
>>
>>#elif defined(CONFIG_TRIM_UNUSED_KSYMS)
>>@@ -117,18 +151,26 @@ struct kernel_symbol {
>>#define __cond_export_sym_1(sym, sec) ___EXPORT_SYMBOL(sym, sec)
>>#define __cond_export_sym_0(sym, sec) /* nothing */
>>
>>+#define __EXPORT_SYMBOL_NS(sym, sec, ns)				\
>>+	__ksym_marker(sym);						\
>>+	__cond_export_ns_sym(sym, sec, ns, __is_defined(__KSYM_##sym))
>>+#define __cond_export_ns_sym(sym, sec, ns, conf)			\
>>+	___cond_export_ns_sym(sym, sec, ns, conf)
>>+#define ___cond_export_ns_sym(sym, sec, ns, enabled)			\
>>+	__cond_export_ns_sym_##enabled(sym, sec, ns)
>>+#define __cond_export_ns_sym_1(sym, sec, ns) ___EXPORT_SYMBOL_NS(sym, sec, ns)
>>+#define __cond_export_ns_sym_0(sym, sec, ns) /* nothing */
>>+
>>#else
>>+#define __EXPORT_SYMBOL_NS ___EXPORT_SYMBOL_NS
>>#define __EXPORT_SYMBOL ___EXPORT_SYMBOL
>>#endif
>>
>>-#define EXPORT_SYMBOL(sym)					\
>>-	__EXPORT_SYMBOL(sym, "")
>>-
>>-#define EXPORT_SYMBOL_GPL(sym)					\
>>-	__EXPORT_SYMBOL(sym, "_gpl")
>>-
>>-#define EXPORT_SYMBOL_GPL_FUTURE(sym)				\
>>-	__EXPORT_SYMBOL(sym, "_gpl_future")
>>+#define EXPORT_SYMBOL(sym) __EXPORT_SYMBOL(sym, "")
>>+#define EXPORT_SYMBOL_GPL(sym) __EXPORT_SYMBOL(sym, "_gpl")
>>+#define EXPORT_SYMBOL_GPL_FUTURE(sym) __EXPORT_SYMBOL(sym, "_gpl_future")
>>+#define EXPORT_SYMBOL_NS(sym, ns) __EXPORT_SYMBOL_NS(sym, "", ns)
>>+#define EXPORT_SYMBOL_NS_GPL(sym, ns) __EXPORT_SYMBOL_NS(sym, "_gpl", ns)
>>
>>#ifdef CONFIG_UNUSED_SYMBOLS
>>#define EXPORT_UNUSED_SYMBOL(sym) __EXPORT_SYMBOL(sym, "_unused")
>>@@ -138,11 +180,28 @@ struct kernel_symbol {
>>#define EXPORT_UNUSED_SYMBOL_GPL(sym)
>>#endif
>>
>>-#endif	/* __GENKSYMS__ */
>>+#endif	/* __KERNEL__ && !__GENKSYMS__ */
>>+
>>+#if defined(__GENKSYMS__)
>>+/*
>>+ * When we're running genksyms, ignore the namespace and make the _NS
>>+ * variants look like the normal ones. There are two reasons for this:
>>+ * 1) In the normal definition of EXPORT_SYMBOL_NS, the 'ns' macro
>>+ *    argument is itself not expanded because it's always tokenized or
>>+ *    concatenated; but when running genksyms, a blank definition of the
>>+ *    macro does allow the argument to be expanded; if a namespace
>>+ *    happens to collide with a #define, this can cause issues.
>>+ * 2) There's no need to modify genksyms to deal with the _NS variants
>>+ */
>>+#define EXPORT_SYMBOL_NS(sym, ns) EXPORT_SYMBOL(sym)
>>+#define EXPORT_SYMBOL_NS_GPL(sym, ns) EXPORT_SYMBOL_GPL(sym)
>>+#endif
>>
>>#else /* !CONFIG_MODULES... */
>>
>>#define EXPORT_SYMBOL(sym)
>>+#define EXPORT_SYMBOL_NS(sym, ns)
>>+#define EXPORT_SYMBOL_NS_GPL(sym, ns)
>>#define EXPORT_SYMBOL_GPL(sym)
>>#define EXPORT_SYMBOL_GPL_FUTURE(sym)
>>#define EXPORT_UNUSED_SYMBOL(sym)
>>diff --git a/include/linux/module.h b/include/linux/module.h
>>index 1455812dd325..b3611e749f72 100644
>>--- a/include/linux/module.h
>>+++ b/include/linux/module.h
>>@@ -280,6 +280,8 @@ struct notifier_block;
>>
>>#ifdef CONFIG_MODULES
>>
>>+#define MODULE_IMPORT_NS(ns) MODULE_INFO(import_ns, #ns)
>>+
>>extern int modules_disabled; /* for sysctl */
>>/* Get/put a kernel symbol (calls must be symmetric) */
>>void *__symbol_get(const char *symbol);
>>diff --git a/kernel/module.c b/kernel/module.c
>>index a23067907169..57e8253f2251 100644
>>--- a/kernel/module.c
>>+++ b/kernel/module.c
>>@@ -544,6 +544,15 @@ static const char *kernel_symbol_name(const struct kernel_symbol *sym)
>>#endif
>>}
>>
>>+static const char *kernel_symbol_namespace(const struct kernel_symbol *sym)
>>+{
>>+#ifdef CONFIG_HAVE_ARCH_PREL32_RELOCATIONS
>>+	return offset_to_ptr(&sym->namespace_offset);
>>+#else
>>+	return sym->namespace;
>>+#endif
>>+}
>>+
>>static int cmp_name(const void *va, const void *vb)
>>{
>>	const char *a;
>>@@ -1379,6 +1388,34 @@ static inline int same_magic(const char *amagic, const char *bmagic,
>>}
>>#endif /* CONFIG_MODVERSIONS */
>>
>>+static char *get_modinfo(const struct load_info *info, const char *tag);
>>+static char *get_next_modinfo(const struct load_info *info, const char *tag,
>>+			      char *prev);
>>+
>>+static int verify_namespace_is_imported(const struct load_info *info,
>>+					const struct kernel_symbol *sym,
>>+					struct module *mod)
>>+{
>>+	const char *namespace;
>>+	char *imported_namespace;
>>+
>>+	namespace = kernel_symbol_namespace(sym);
>>+	if (namespace) {
>>+		imported_namespace = get_modinfo(info, "import_ns");
>>+		while (imported_namespace) {
>>+			if (strcmp(namespace, imported_namespace) == 0)
>>+				return 0;
>>+			imported_namespace = get_next_modinfo(
>>+				info, "import_ns", imported_namespace);
>>+		}
>>+		pr_err("%s: module uses symbol (%s) from namespace %s, but does not import it.\n",
>>+		       mod->name, kernel_symbol_name(sym), namespace);
>>+		return -EINVAL;
>>+	}
>>+	return 0;
>>+}
>>+
>>+
>>/* Resolve a symbol for this module.  I.e. if we find one, record usage. */
>>static const struct kernel_symbol *resolve_symbol(struct module *mod,
>>						  const struct load_info *info,
>>@@ -1413,6 +1450,12 @@ static const struct kernel_symbol *resolve_symbol(struct module *mod,
>>		goto getname;
>>	}
>>
>>+	err = verify_namespace_is_imported(info, sym, mod);
>>+	if (err) {
>>+		sym = ERR_PTR(err);
>>+		goto getname;
>>+	}
>
>I think we should verify the namespace before taking a reference to
>the owner module (just swap the verify_namespace_is_imported() and
>ref_module() calls here).
>
>Other than that, this patch looks good. Thanks!
>

Thanks! I will address the points above.

Cheers,
Matthias

>>+
>>getname:
>>	/* We must make copy under the lock if we failed to get ref. */
>>	strncpy(ownername, module_name(owner), MODULE_NAME_LEN);
>>-- 
>>2.23.0.rc1.153.gdeed80330f-goog
>>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190827160413.GA148206%40google.com.
