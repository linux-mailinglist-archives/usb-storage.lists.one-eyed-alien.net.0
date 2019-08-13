Return-Path: <usb-storage+bncBDMYPB44VAFRBINHZPVAKGQE5OFI4CI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x748.google.com (mail-qk1-x748.google.com [IPv6:2607:f8b0:4864:20::748])
	by mail.lfdr.de (Postfix) with ESMTPS id D38CC8BCCA
	for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 17:13:38 +0200 (CEST)
Received: by mail-qk1-x748.google.com with SMTP id f22sf15499665qkg.0
        for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 08:13:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565709217; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZDcowBPhCa8oRBlRxfBpX90MI/gXBrs2sCrWhFzJNuWgFs8Es6gNQBYKL8xrHjMdfe
         ZApCuiTJFLmWpqvKsKBdBCaHjYJ4gJFJ2YkVT12qkXif2W47E24eSl/DQ23tjfmjGsE5
         3EL3IQ6/R89pXupI5VzGJo9Z/kew1BGEakYA2/KWt8TaWfQfdH95ttIKtH2lk81fyeQt
         2rTEO7MnDbSO3gCqGIqd6LyB7sHmIyUM11vB7Zy8PLuzuDOp1ZcIQyptbh1bQpT/xzu9
         T77iR6Fey/eqhsqvDUi/vw+9Ri85uBv4T/YDU0u+qy4fJqe7Jj5YDXGZh320FJmikixa
         tuAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=8BYGJHwmUeJLsKe21zvELZ0JVM5cVn8xBULFqMxg6Sk=;
        b=VpvWtfFEacBYZijDDLEPA/BVlrp4yvQy/uGBtbVijgOQU23hWo3jcpeQUyLT6mddWV
         QW5CpNNj1KmIGgYFoWfqiS6PTuObBi2jOU0dPHeAKPoljlYfnDb8Wa9MVBCyknX1lONT
         fdKBkGubkkIwdljUcrCpX1pwF/fn2DQczkr4XLgJyL379miP9J2xHCYxNVA6m84HHRhu
         gBU82PQGcwEnrCsFXn1bXg0ISDmxtPJDe2CnpsSVBCKNIJHbzcsrW8BAEgtarszpUkXu
         kmiqscTu03VqkYJyjDn7i0rtGDx+S039Ccd9VF8OQ/LMMUKxhglbuCzqejvNVE9QVdKx
         QxuA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="X/pgFG/T";
       spf=pass (google.com: domain of 3wapsxqgkafi6uy772w108805y.w86@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3wapSXQgKAFI6uy772w108805y.w86@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8BYGJHwmUeJLsKe21zvELZ0JVM5cVn8xBULFqMxg6Sk=;
        b=EmhgHOkTYKphDFdGrGiD1FHjRzy5T2mfTjmYPA5/vfeSEmsgK4PhHj87bTEMdnvYCl
         Ql4Ubh0xVnH4rtz8ZaWo7vqHijNq0Y86z7L1tS5lAmkGrnxl+sxzqdy1txsj5mwxg1w/
         ihDPD4jEQnoc32tgOTqr9wq78Tai+unwyi51s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=8BYGJHwmUeJLsKe21zvELZ0JVM5cVn8xBULFqMxg6Sk=;
        b=AM34ByjzPvyG1bYty9QZxvoWuxDepsTTr8mXuNu2WH6a5UOBTofEt4Au9F6kJBtMnl
         EJRnWk+ktOb5VrO88rbOD2V9Xcjzr6kfvNb0t+KigVkLpJLL+OOclwM91USCgpZ5jDDg
         8lavrabJtIH8LSbsGK10/UHBX+d/+oC+/H9Lkas8BwgMlfqZxqOdlTCkHxNLC7nvwVbE
         RMWuRTqcosl/ZwwDBvc0fp4kEXQ7R9wU2ho8TI0cOpLePS7x0Mh9hka7yoH0AyXTPDGA
         dFa/N86GsoJQrCYLlsU9HHIxTZHEiGtgw72KQbYzyJyXgs0mLmhb3DWuiXCoSwlPNgAM
         uoOw==
X-Gm-Message-State: APjAAAWfSsWwLGK/HRyBJtYcivZx9XBsx6Si8hs9V1qtb6c3wDRggjYn
	MizF5gvsIbAQjTgYWmkzQLpapQ==
X-Google-Smtp-Source: APXvYqxL3IbKWT5UMjKQKbCFNI476eFqOfATUnLL5eVmaZo/vmj9F2Xxv0vLCEodZqDHqM5C4n4dxg==
X-Received: by 2002:ac8:60d3:: with SMTP id i19mr10732453qtm.191.1565709217697;
        Tue, 13 Aug 2019 08:13:37 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aed:32a4:: with SMTP id z33ls3678113qtd.13.gmail; Tue, 13
 Aug 2019 08:13:37 -0700 (PDT)
X-Received: by 2002:ac8:35f6:: with SMTP id l51mr34434358qtb.109.1565709217452;
        Tue, 13 Aug 2019 08:13:37 -0700 (PDT)
Received: by 2002:a37:8307:0:0:0:0:0 with SMTP id f7msqkd;
        Tue, 13 Aug 2019 05:19:14 -0700 (PDT)
X-Received: by 2002:ac8:6b4b:: with SMTP id x11mr1239958qts.186.1565698754370;
        Tue, 13 Aug 2019 05:19:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565698754; cv=none;
        d=google.com; s=arc-20160816;
        b=TRiEwQBlPABTb7550mBxg7tN+2Y3V0XoSDZTlvkmIoN1u//NH5BukK+HyXLa5GSmM8
         omT41pJNFFeX+AR0NzS5KgXAXORB8pnq6O0dN2RQWbz03h+NmIo+TpzuyNFvSzg70rr9
         XxA7cd+7WZxDYTxYqdTjwlMQt95eH45cGm51blXgULHBoYj0st7kYw4BGC0byaYDro4Q
         QATCUpR09hdpSRfRQarYNHIEDKcwIaQtWN7xemtyGwooQV3Lvzcls2inkxXzwSYAB8rt
         0sb46uP11jip0KxcNdwVetwdL7lcKreVeiouO74g8Fxkw6FB7YBLpWsEqcrZLNFl2cA7
         4ilA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=52i5W7bwo5L4NKPi/t621ZC4mfXuxf76PQ3XmRwW6HM=;
        b=dSDNElswcm/79kkLUpWkwnfcNt+sRCs+goox1YoCH1Qi0JbT8cEcmpavPyj2iThYYm
         TfXdlTywecuH55qzEr7oeH9YU76Hh4AmbaOGPd0zCzzZQF+U4crtWZBbROPfdfVvNZbN
         TK4vVHeXt3F3wNe2Q8eDZ4PTzKkSdDztQbJKFPuM05xxogRiegUUu56vt3gjxAapnSKM
         4gO5gGEyQx9UYmbJ57Wg5iOxC5FhFi4tT5C5RIo/ceHoujZxqMmNahfXtH4oo+jq4Bmz
         gQ0HdhfEpfBB8U1uPM7yORcN9ZBHcOh564jwevjPUO77Axk0SPsnb9Njo9klINM5zke1
         unag==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="X/pgFG/T";
       spf=pass (google.com: domain of 3wapsxqgkafi6uy772w108805y.w86@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3wapSXQgKAFI6uy772w108805y.w86@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id q6sor11077731qkm.57.2019.08.13.05.19.14
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 13 Aug 2019 05:19:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3wapsxqgkafi6uy772w108805y.w86@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:a37:e306:: with SMTP id y6mr9040041qki.174.1565698753802;
 Tue, 13 Aug 2019 05:19:13 -0700 (PDT)
Date: Tue, 13 Aug 2019 13:16:59 +0100
In-Reply-To: <20190813121733.52480-1-maennich@google.com>
Message-Id: <20190813121733.52480-3-maennich@google.com>
Mime-Version: 1.0
References: <20180716122125.175792-1-maco@android.com> <20190813121733.52480-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [usb-storage] [PATCH v2 02/10] export: explicitly align struct kernel_symbol
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
	Nicolas Pitre <nico@fluxnic.net>, Michael Ellerman <mpe@ellerman.id.au>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="X/pgFG/T";       spf=pass
 (google.com: domain of 3wapsxqgkafi6uy772w108805y.w86@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=3wapSXQgKAFI6uy772w108805y.w86@flex--maennich.bounces.google.com;
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

This change allows growing struct kernel_symbol without wasting bytes to
alignment. It also concretized the alignment of ksymtab entries if
relative references are used for ksymtab entries.

struct kernel_symbol was already implicitly being aligned to the word
size, except on x86_64 and m68k, where it is aligned to 16 and 2 bytes,
respectively.

As far as I can tell there is no requirement for aligning struct
kernel_symbol to 16 bytes on x86_64, but gcc aligns structs to their
size, and the linker aligns the custom __ksymtab sections to the largest
data type contained within, so setting KSYM_ALIGN to 16 was necessary to
stay consistent with the code generated for non-ASM EXPORT_SYMBOL(). Now
that non-ASM EXPORT_SYMBOL() explicitly aligns to word size (8),
KSYM_ALIGN is no longer necessary.

In case of relative references, the alignment has been changed
accordingly to not waste space when adding new struct members.

As for m68k, struct kernel_symbol is aligned to 2 bytes even though the
structure itself is 8 bytes; using a 4-byte alignment shouldn't hurt.

I manually verified the output of the __ksymtab sections didn't change
on x86, x86_64, arm, arm64 and m68k. As expected, the section contents
didn't change, and the ELF section alignment only changed on x86_64 and
m68k. Feedback from other archs more than welcome.

Co-developed-by: Martijn Coenen <maco@android.com>
Signed-off-by: Martijn Coenen <maco@android.com>
Signed-off-by: Matthias Maennich <maennich@google.com>
---
 arch/m68k/include/asm/export.h | 1 -
 include/asm-generic/export.h   | 8 +++-----
 include/linux/export.h         | 3 ++-
 3 files changed, 5 insertions(+), 7 deletions(-)

diff --git a/arch/m68k/include/asm/export.h b/arch/m68k/include/asm/export.h
index 0af20f48bd07..b53008b67ce1 100644
--- a/arch/m68k/include/asm/export.h
+++ b/arch/m68k/include/asm/export.h
@@ -1,3 +1,2 @@
-#define KSYM_ALIGN 2
 #define KCRC_ALIGN 2
 #include <asm-generic/export.h>
diff --git a/include/asm-generic/export.h b/include/asm-generic/export.h
index 294d6ae785d4..63f54907317b 100644
--- a/include/asm-generic/export.h
+++ b/include/asm-generic/export.h
@@ -4,15 +4,13 @@
 #ifndef KSYM_FUNC
 #define KSYM_FUNC(x) x
 #endif
-#ifdef CONFIG_64BIT
-#ifndef KSYM_ALIGN
+#ifdef CONFIG_HAVE_ARCH_PREL32_RELOCATIONS
+#define KSYM_ALIGN 4
+#elif defined(CONFIG_64BIT)
 #define KSYM_ALIGN 8
-#endif
 #else
-#ifndef KSYM_ALIGN
 #define KSYM_ALIGN 4
 #endif
-#endif
 #ifndef KCRC_ALIGN
 #define KCRC_ALIGN 4
 #endif
diff --git a/include/linux/export.h b/include/linux/export.h
index fd8711ed9ac4..28a4d2150689 100644
--- a/include/linux/export.h
+++ b/include/linux/export.h
@@ -52,7 +52,7 @@ extern struct module __this_module;
 #define __KSYMTAB_ENTRY(sym, sec)					\
 	__ADDRESSABLE(sym)						\
 	asm("	.section \"___ksymtab" sec "+" #sym "\", \"a\"	\n"	\
-	    "	.balign	8					\n"	\
+	    "	.balign 4					\n"	\
 	    "__ksymtab_" #sym ":				\n"	\
 	    "	.long	" #sym "- .				\n"	\
 	    "	.long	__kstrtab_" #sym "- .			\n"	\
@@ -66,6 +66,7 @@ struct kernel_symbol {
 #define __KSYMTAB_ENTRY(sym, sec)					\
 	static const struct kernel_symbol __ksymtab_##sym		\
 	__attribute__((section("___ksymtab" sec "+" #sym), used))	\
+	__aligned(sizeof(void *))					\
 	= { (unsigned long)&sym, __kstrtab_##sym }
 
 struct kernel_symbol {
-- 
2.23.0.rc1.153.gdeed80330f-goog

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190813121733.52480-3-maennich%40google.com.
