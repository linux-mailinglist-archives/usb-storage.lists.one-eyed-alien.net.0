Return-Path: <usb-storage+bncBDMYPB44VAFRBZXB6TVAKGQEMKQK44I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x746.google.com (mail-qk1-x746.google.com [IPv6:2607:f8b0:4864:20::746])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E539785E
	for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 13:54:15 +0200 (CEST)
Received: by mail-qk1-x746.google.com with SMTP id l64sf1854284qkb.5
        for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 04:54:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566388454; cv=pass;
        d=google.com; s=arc-20160816;
        b=EMWKq1gEUI16Or56EuPS1WDqSbcLRLPyO9yJT3yz+E35zNSiOrULdjG0oDetjXkfu+
         GrS3BxHp2qsZbJe8LlQC2PeTJ1E5R2xC6z+3lAmhmJPZDXvem/Y0kuHwOF43nZtcVYDO
         aq9TwA30HPbHtbbBIJeNWfVcNCQ1zmBVMspWoZchRiDiDaa6iFuVEpQGsWbIFFHl6uiF
         ldWrOxinGxNetu8D8Xp7CQiLchM0mqmxkU6b0645Z1hmzKz7whmODy0G/LoTaNMUJzM/
         YNgjxytv9JUwyK+0gur6MU8DGv2OBepOdqfdjObGnQFwfG98X/nPSAUNfZ5NJBD4mysB
         OP4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=NMGfGXtLFKcvq5CWPXvkZoAZIuS+MYxRBC8SJIcAFBc=;
        b=F6lLm4HzgQQ7jCBwaWj7Gm/V0XzGTRTy/QAhwy2/YBQkTlNCGLclUmYUmXWacJRNFF
         3Bq7t0ZrDhpVemIkEKmSprwuHK8WCNQxULSIheYJmUORrk6LEW0WffnK8GBeTpjteIoc
         nct4qgudY/iGXMPJLA95yv6IWfwYuz+IvK+3ClrvO/USC6d2LYKV6Pwf7koyKKaTWaZl
         W/hdWnWYa1XN/G0shHwlnxXmfXVW8tBujH1MxHMfP3wPw+AX4bVsqGdQjXrz0FiPiCy7
         v2pO1Ta3BglfZlIRpv3k0T+Rk8VPnsmyJ1Mkd81vTO6Y9eah4vZbUM6GbzbVrN/EEpht
         AJlw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DOxh31Nr;
       spf=pass (google.com: domain of 35tbdxqgkakwymqzzuotsaasxq.oay@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=35TBdXQgKAKwYMQZZUOTSaaSXQ.OaY@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NMGfGXtLFKcvq5CWPXvkZoAZIuS+MYxRBC8SJIcAFBc=;
        b=VX3v7Gac+vyP1RPUFZixw68JIda92iB+b99Kw2xV5bWhR+FsHBg5DEnt/YLnLc0fxN
         hsU7pCXf6F3jdsQn5DpnuAMRgHY8Tm/rsIi64/RRlvuaP9uWRSYmEXRYvr6GipphiUwM
         Pf96RuI7wJ6MJAxJY9pBMOX6txL+Y7v3ubrjg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NMGfGXtLFKcvq5CWPXvkZoAZIuS+MYxRBC8SJIcAFBc=;
        b=hm2v9fVmcZHTc9q2w/ahsRmQSU+rNC5ld5rVNeLSiZ5o+za7+LXfFiNDgz6/uOes1Z
         cVLHcVIaoGDxsbn9tT1iexMmtz5mfsE/dN6Umwg+gncGdLbagZ1O0IRa1PIlkThAa1Ih
         c43+kZ+TQzvbnqNeGKHrUd05wysf67ElBNUfIGT4FVK2ARLPPoAaYwMWDLgJRb73gmow
         NnSvFGTw3XONPN+qB0evSw4Izt7kcgK99mMTK2qK2lYcE3GmWRkoyU2iLj2T6PMgZ/dP
         DD9c/l/SwkfkLN5F5jJWP3qdQbgLqZUweedh4Kn77WHfGDhsu5fjaA+b6KXNk8oEdpk6
         wQBw==
X-Gm-Message-State: APjAAAWi2lkM+sngJm4+R6hZDtHERwFig+Zz9f+nTDJkQyL6cLaWly+3
	uuWh1zJSnlrXY4MGI46+JLTqgQ==
X-Google-Smtp-Source: APXvYqwZyxSMt3eIhaDYPftJ565+wUm2PAoct58DFO+QDplI1lb3fNR/spZquiA43YFI2aKxcs6plw==
X-Received: by 2002:ac8:5219:: with SMTP id r25mr31923100qtn.43.1566388454646;
        Wed, 21 Aug 2019 04:54:14 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aed:32a4:: with SMTP id z33ls296500qtd.13.gmail; Wed, 21 Aug
 2019 04:54:14 -0700 (PDT)
X-Received: by 2002:ac8:7b8d:: with SMTP id p13mr29624014qtu.316.1566388454389;
        Wed, 21 Aug 2019 04:54:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566388454; cv=none;
        d=google.com; s=arc-20160816;
        b=QNGQ7fnhf4fPd1sV2lqNnTHYttEvCmW47TjbCx5//6AEnKp91CYqhdvo6vV8+rEF6v
         5u7sMsOisGq4Z4NIotw9NjVCFG4ymAE9GRf15sIJ34kh5MTC4Dk4rXtMCsaoJn0t9Krw
         itK8LPbOTHO31c0VLeBH/GC3xX8qQFNZpCxAvnYDQSumq88X5jzMak+af1iwyK3v71vM
         L6r1vatYsaVRqqpw+M1amC/2BXYWRsU2L8YHs71fvKpCmyuA26AIiinLYiSihBzSdsxR
         I3IWlXA7v+oWmIXZXnGBvFpt0wP59UvM4WPBUxPQvTyBDkktbrhOJCo17Bi3RE4qnS43
         gLFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=nD4+pr26g4cM7Abylq2YdggXawupPAle/yWOlQ9vc8k=;
        b=OMHpZoVbPSqHkcOM+BSYQkQcaJteDfE9FkL+Y+9LKFM8Tn++ZQGwzRZscNZyrpKsxA
         Exv2EffWZbxPY17LXaHXS89j4bldXH2uPEcYB+dsPIe08tGqY5GlKbPs9VYhdxq6nCWk
         2yGQ3l7QyCRuBW0TS7Dilyy75WQoJu0yx5HoIEqWFWQPp3F+eE3ehFz+52JYdcH9Nfq/
         K9SaWbWXUzU1YqXlTgETah+w+I4WDGcCwylaAt291LIFT99jIQ7PrpTQ3WzFEfHjMLkq
         1EqibSKg6QrNCb8aEAf4KGEmAfOqB5qIzp/dwyqh8ztYgWtUKkktHmDFFNqzuzpfCv3R
         7Qtw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DOxh31Nr;
       spf=pass (google.com: domain of 35tbdxqgkakwymqzzuotsaasxq.oay@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=35TBdXQgKAKwYMQZZUOTSaaSXQ.OaY@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id w9sor13180455qki.137.2019.08.21.04.54.14
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 21 Aug 2019 04:54:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of 35tbdxqgkakwymqzzuotsaasxq.oay@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:ae9:e714:: with SMTP id m20mr29443807qka.72.1566388453855;
 Wed, 21 Aug 2019 04:54:13 -0700 (PDT)
Date: Wed, 21 Aug 2019 12:49:17 +0100
In-Reply-To: <20190821114955.12788-1-maennich@google.com>
Message-Id: <20190821114955.12788-3-maennich@google.com>
Mime-Version: 1.0
References: <20190813121733.52480-1-maennich@google.com> <20190821114955.12788-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [usb-storage] [PATCH v3 02/11] export: explicitly align struct kernel_symbol
From: "'Matthias Maennich' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: linux-kernel@vger.kernel.org
Cc: kernel-team@android.com, maennich@google.com, arnd@arndb.de, 
	geert@linux-m68k.org, gregkh@linuxfoundation.org, hpa@zytor.com, 
	jeyu@kernel.org, joel@joelfernandes.org, kstewart@linuxfoundation.org, 
	linux-arch@vger.kernel.org, linux-kbuild@vger.kernel.org, 
	linux-m68k@lists.linux-m68k.org, linux-modules@vger.kernel.org, 
	linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org, 
	lucas.de.marchi@gmail.com, maco@android.com, maco@google.com, 
	michal.lkml@markovi.net, mingo@redhat.com, oneukum@suse.com, 
	pombredanne@nexb.com, sam@ravnborg.org, sspatil@google.com, 
	stern@rowland.harvard.edu, tglx@linutronix.de, 
	usb-storage@lists.one-eyed-alien.net, x86@kernel.org, 
	yamada.masahiro@socionext.com, Ingo Molnar <mingo@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DOxh31Nr;       spf=pass
 (google.com: domain of 35tbdxqgkakwymqzzuotsaasxq.oay@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=35TBdXQgKAKwYMQZZUOTSaaSXQ.OaY@flex--maennich.bounces.google.com;
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
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190821114955.12788-3-maennich%40google.com.
