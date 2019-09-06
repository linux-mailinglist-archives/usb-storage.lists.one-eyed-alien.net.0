Return-Path: <usb-storage+bncBDMYPB44VAFRBUHLZDVQKGQEQMETTLI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ua1-x947.google.com (mail-ua1-x947.google.com [IPv6:2607:f8b0:4864:20::947])
	by mail.lfdr.de (Postfix) with ESMTPS id 04BCEAB5D9
	for <lists+usb-storage@lfdr.de>; Fri,  6 Sep 2019 12:32:50 +0200 (CEST)
Received: by mail-ua1-x947.google.com with SMTP id t8sf950978uaq.3
        for <lists+usb-storage@lfdr.de>; Fri, 06 Sep 2019 03:32:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567765969; cv=pass;
        d=google.com; s=arc-20160816;
        b=ndhyor0rHieTYQ+aE4VrX/4PhCG0jwEbkwg7WzyXFXrlfkIaPi/5cjishoffd/Yn8e
         tLtkG3nVGH3tfkpbZDTXn1ZedRswzzcwDNTd3XwleN/E4d+fn4d6/9FWoCkUziIwoS0r
         4MvILaDWwRJr2GLKI+04lgKqLQboleewAMfE+S/ZHE5adAU6G7VFVWKIyJhvd11d5eM1
         VH9Wi+SPv/oZWC5ip06ql6MVa6UuCrbo1IGhYmHvOZFTM6q0LTz3Z6zDeRAHYThTimhX
         0YAlIXBcQ4G/21TteyHq8yfsVIw60A3f6AfPNFJHylhXswdj9gD7JwfmTekacc+ep/dw
         4x8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=OSrWKZpj5M2c1qN9djJ7u4QegGBJR/hRyGLjWDlxFK8=;
        b=Eiaf6KUIVfSFbRvp38tBF4hw7dkB/hr/y/4KhzOLicnBr0EojlZYbQMYS4fHKyadMA
         iNsbqoIOL/y32/0eL5mxOGR9BjZsoXDNFY/ZEnCjMnDRD3PREIh+y1amrxoc9OuEah65
         TDwOD2OH2/jKroVV/ASqZpgA5Y3yVVWARUaRAmX7+O60oqL5kEDlxp+gWGJQXQOD7j/n
         Ddgn2LQIdh3SUMgK3FVdnsYiRg61Wv9uVUA1IZHFqTFJGWi8Wzm4QJn2MaPyLdpj4XFY
         Dl8KqJ1sHCyTpAALLs/mfkXmuRTkloUY2bL+IcTgUwY5u3Lk9EkIglhnD8oeQ9RMn55h
         UxeA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Skz33sHp;
       spf=pass (google.com: domain of 30dvyxqgkapujxbkkfzedlldib.zlj@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=30DVyXQgKAPUjXbkkfZedlldib.Zlj@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OSrWKZpj5M2c1qN9djJ7u4QegGBJR/hRyGLjWDlxFK8=;
        b=LOq4Zc+W6qVq2CzHn/xJ5N/oVUgC4I9iZphcxIcD+rv1m3i/C0s49LTJlfdjBOMgAB
         Dmw5h4OFemZL6tWD7rBIZVNnNVbHNlH72Uqf+lXVZmIt54IFFyBBsLBCHXlJOflxysr8
         I6LmcNLJigYRjV/PcNy8ZYLS1TAzOqvMVMSZg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OSrWKZpj5M2c1qN9djJ7u4QegGBJR/hRyGLjWDlxFK8=;
        b=BRMW+5Al5tJY9XHISKjUQJmuzOqDhT6O5ZOD6D/XvLA/SOFGdlBAO3TsteoPiKxvt2
         EDQS5EDJizARk9fUSJh+5p85prLdMqcQk8DtCumeKqJBFGUtEKAamEwy33VmUAW1hrVo
         y+yNZHi51D3fY/9IoIrWYLk5Io0Nmxo2lShPOCieaAg3emHBpk0hcVIqwa+rnvtn7AFO
         Jwh7LWq5udLk71kzN/cThdwlptZfZd/hjxEEPfoOVTobJWEocPlzsQqO9EFVA3jXoz6E
         Jqi62GqWQDVqDe2n1leqdick/hX/melFFZf9I/qI+v5SL9RB7EzM8fhEzjLWHyld/4vZ
         ewbw==
X-Gm-Message-State: APjAAAWEgo8YeZOzzDO3qe/KGiURQ3vI45ZSVis08XHEB8xTts2TcXP9
	iD8n+s8rfrOZderBpCzepyGfpQ==
X-Google-Smtp-Source: APXvYqxuFn+SNbJGtNZVmHObJWGW/to7CiwVZyhH5XnTe0wwRI6VKhgzO+q7F6bzVQ+Q3WzUBg1hnQ==
X-Received: by 2002:a1f:c746:: with SMTP id x67mr3972646vkf.50.1567765968819;
        Fri, 06 Sep 2019 03:32:48 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ab0:20a5:: with SMTP id y5ls296948ual.1.gmail; Fri, 06 Sep
 2019 03:32:48 -0700 (PDT)
X-Received: by 2002:ab0:758a:: with SMTP id q10mr3799344uap.76.1567765968481;
        Fri, 06 Sep 2019 03:32:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567765968; cv=none;
        d=google.com; s=arc-20160816;
        b=naTKtj8w2nzpcptrsICsKZjq2u7Dz09Hz00Gp5Xz1OW/pXrBr4KlrXxwIH9ChjTCMN
         JM3K+qmth3Pd4fpGtvWCqtMsg60fzvig9L6NZpyolwGjNGGCzp4WBn3pILoXBxSHru7J
         3+ld7+8HWGcW573QMymWuxrXVICCXYIBaCDcAFcILlAAzs3gl6XFSFRv423sh43RNZcy
         pV6+qlv4EX4OYSAMMw5YnBTOdsW00wN8nmI3Ih92OyyN/cJ5W0Zt+4VwGXHsl2aO1ySk
         UrV0Pi/e5pnTUsWIvDM/+X49IxwRKZPheF5lgRLRf4240aHnfu75KDbLYGbA5aNcf5/H
         kGvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=WpyyM8zjm4wtK5J690VZrM2s4HSiRGUxtkfpxo7zqKI=;
        b=t7mInrLAMur9PI/c1qiwiA0Er0GX6/S2x0BReymvRvf+ghxv6w4qx2JlYaDm6THxci
         3Tyj2gFJHeLzoYeKGZNpjVC9dBukSfMfPnnwxIXmn3JkOYVmGaidtl6vXtpABpynLApi
         euwEk0TOx7+3Xuc+fCCc+RdetcCoaeNNPJ/dHagPCm7Ib/zhmKDcL83P3JWqShC0uueC
         bYzFiXMU6Y5uaCTfxks9FrMSJNT2QIU9qnlKB4BKDCoIK7qLBtepEbDwN68F+MFOEIDz
         1UbXwRsL8x2WSSihzUxV4FNhCDp77nfSaG4Mt8PZUhwVBv3Bd9VBVsUxlw2ILFSkl1vj
         a2DA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Skz33sHp;
       spf=pass (google.com: domain of 30dvyxqgkapujxbkkfzedlldib.zlj@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=30DVyXQgKAPUjXbkkfZedlldib.Zlj@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id p24sor406698vsn.109.2019.09.06.03.32.48
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 06 Sep 2019 03:32:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of 30dvyxqgkapujxbkkfzedlldib.zlj@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:a67:1687:: with SMTP id 129mr4598055vsw.232.1567765968027;
 Fri, 06 Sep 2019 03:32:48 -0700 (PDT)
Date: Fri,  6 Sep 2019 11:32:26 +0100
In-Reply-To: <20190906103235.197072-1-maennich@google.com>
Message-Id: <20190906103235.197072-3-maennich@google.com>
Mime-Version: 1.0
References: <20180716122125.175792-1-maco@android.com> <20190906103235.197072-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [usb-storage] [PATCH v5 02/11] export: explicitly align struct kernel_symbol
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
 header.i=@google.com header.s=20161025 header.b=Skz33sHp;       spf=pass
 (google.com: domain of 30dvyxqgkapujxbkkfzedlldib.zlj@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=30DVyXQgKAPUjXbkkfZedlldib.Zlj@flex--maennich.bounces.google.com;
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
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190906103235.197072-3-maennich%40google.com.
