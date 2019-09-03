Return-Path: <usb-storage+bncBDMYPB44VAFRBMUDXLVQKGQE4JUUALY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-vk1-xa48.google.com (mail-vk1-xa48.google.com [IPv6:2607:f8b0:4864:20::a48])
	by mail.lfdr.de (Postfix) with ESMTPS id 75337A6C3E
	for <lists+usb-storage@lfdr.de>; Tue,  3 Sep 2019 17:07:31 +0200 (CEST)
Received: by mail-vk1-xa48.google.com with SMTP id l3sf7934773vkb.15
        for <lists+usb-storage@lfdr.de>; Tue, 03 Sep 2019 08:07:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567523250; cv=pass;
        d=google.com; s=arc-20160816;
        b=NwKXskRRY64YFWEXMYLf9HMvLmQB6LzXNRJ9Q7Kv1yGaFh7lu52WfKrHkdSgGHCqti
         4rWVjWNf6FDw0CAdqppXho41zBDYA5T8gUx1lY3G+e3q1QpECjUOqBqHHCJH1pgaBHrZ
         0OJYpEtYHad3cCixGiMgEpG86IrSrJjxmhyVMlSRxAunky08kP2ufbSlbCgcdZm1XiDg
         Dy+JeT7HUsCmvTDoI27sN5zKN09nGERkvrimP1KQEXhL3Ps2e4JG9bPXd4tLioAytJKS
         rHbgIFFUC2OAkQK8HXeTf+a2Ti/Q+5Ca14vyeUmus+od9fyuheke/+M/PC9fpCxTFf0w
         Lklg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=yYQqI/mM5Jl/Q0+RW+k79g5KSx/MgUIVTIwSnwptMQQ=;
        b=zqMreTAlNetfZJ9ZIMcBjyMyvyCwd0hXQWiXVsf2ag/u/kRgVMwNo6ztSVkk7JyDsT
         YyfaK39kGQrfr19F9inmd5kUH4cMZNnm/P/byE1LA1h8zkvglAVoczEGIdraXeRdL4QF
         7+6hZf25/UaHGUPZ2b/6DyTjRVgG6T3NQtjliQSMGzAOPptxpP/ghXw87ZQDHbY1BrL7
         cscnK5I3Y42qAUWPLlK8MXeBLd650CH0zn4bGFPyplT34bblNkvokS2na8VnhGDJVp9p
         eWsxvrU1PFWC7vet41IQ75QXyC5Q5k1p6HW9teunkQCNuGEVr6uHysXfUC6K7OnWgGp7
         VDMA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BfHZbHR9;
       spf=pass (google.com: domain of 3syfuxqgkagak8cllgafemmejc.amk@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3sYFuXQgKAGAK8CLLGAFEMMEJC.AMK@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yYQqI/mM5Jl/Q0+RW+k79g5KSx/MgUIVTIwSnwptMQQ=;
        b=DdAdUz3DYL09HmQWbdaVYQO1vyvTlBOy25rcop/R50t2gsRZAQPm3jmPWkC00u4HFS
         q0esekR2jPEhl0Y4Km4qgiWzx+YYEGvAAc/qiDqjGthOqmlchxF1TlWlQF5OkPNzUIJ8
         9MDEmuqL7ClAaSeilUIY6e/ip5PiSWS9DybWQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yYQqI/mM5Jl/Q0+RW+k79g5KSx/MgUIVTIwSnwptMQQ=;
        b=Cr9p8xvg+Rp+yfXnPWTFbLOwq+Nsr4WsYpyPSDfNHKJNxnrgH+PYqxnaqYumyK/RjU
         wVVjLCwxIhYy6q7xhi16r+GUJIiZRDpoqx2BPoTeSM//pOsHxobnO11r4kKmmvfSFKV/
         yN+c74+IjSTuJIK/1QjFL4DgcqIO65pBmRFKNSEc5cnFQRDEGg35zck+lL+AfCo8YSg9
         oqJ4reCsqq+GxC31rtNDZDC4S6wF9opizAsPobIPsru6s4a/2IyOjxlz1LSWiG8uQhJO
         vr9Zj8Wb2j/yyQVl9wni1jgUPNwNnbTbAGEu0sBlb9dqTBs261mSvLjU+HGv/yS460rk
         W3fw==
X-Gm-Message-State: APjAAAXF5BZrvOpzBn+7UlHbrIT5m5U56Xn348SuUbXFkx6T2lXzE4BT
	g5LTYrmV0Y1KMljmlqmslLaszA==
X-Google-Smtp-Source: APXvYqztWbsYrW81EEHI6VvgUT8rN2+1pR3/pfV1As3HroxQD3k9hFLC/AL37kDxw1VHfoOglqeJeg==
X-Received: by 2002:a1f:eb86:: with SMTP id j128mr16669363vkh.61.1567523250297;
        Tue, 03 Sep 2019 08:07:30 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ab0:250c:: with SMTP id j12ls613487uan.7.gmail; Tue, 03 Sep
 2019 08:07:30 -0700 (PDT)
X-Received: by 2002:ab0:2e99:: with SMTP id f25mr8877908uaa.133.1567523249937;
        Tue, 03 Sep 2019 08:07:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567523249; cv=none;
        d=google.com; s=arc-20160816;
        b=O6D79eL/Bf/ZVCqGCLr/+vC9qpI88xC9sHO+ULJl5ptrSPfbKaA/cMvqX4hE1TltCR
         ghiTLVqzamiWdPudFlqciMBCiEq+g/rv4/yuuhtttuzSLqcKjsW27f01veSNwlfMjfEO
         NAfigEsd7tNr9Jo42y3QbGIaZVv4/yG12IzULrS2tMYUBSQW9At90ADlARI7Zj9jxkjS
         uCOHn7p88K34Nk2MEQTzI/8h/gUXAKIME692zLKWIAVZkJl0Fb939y8xrRWD8FjZoKAH
         NGuRcGUxtEEfcS1Z+eiPRMF39a63El0+MIhuQLEKZ9Zwz7UezohjXVluuDMxLjenHGp7
         V1Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=WpyyM8zjm4wtK5J690VZrM2s4HSiRGUxtkfpxo7zqKI=;
        b=IHr9AQjMbd2umLykcrH0y2agQMX+R1i5ygIOKcuF+uRZJUqbgkXkif3J5bP9Ho5Qhe
         WYebdBWUVtOOROk1fWlMhsRewlVz5G7LCHzCkN5b73Kx6M+xZxulsvXe5/dqYnqM2M4R
         PnJTrhqRD7QEEA0tPjXJVG/Y61Y20gfL2f4NZTnr4wiyeRsoUml923915Vl3JqkmLkGL
         R/aV1vo5RehtyD6X1K4ClbXqgFDG+vsCkaKjWfANmL3Dr7Lw2ZJSkn7PCoN0lg3HEYez
         7OAmo4u5vJU5uUR68oSY55DxMs4vYrWUbCxbHpfPoDRGHi5ubN+Fu7sgj5xl+/E6h2VR
         e16A==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BfHZbHR9;
       spf=pass (google.com: domain of 3syfuxqgkagak8cllgafemmejc.amk@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3sYFuXQgKAGAK8CLLGAFEMMEJC.AMK@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id y4sor4632132vka.42.2019.09.03.08.07.29
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 03 Sep 2019 08:07:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3syfuxqgkagak8cllgafemmejc.amk@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:a1f:5c0d:: with SMTP id q13mr3631221vkb.38.1567523249382;
 Tue, 03 Sep 2019 08:07:29 -0700 (PDT)
Date: Tue,  3 Sep 2019 16:06:28 +0100
In-Reply-To: <20190903150638.242049-1-maennich@google.com>
Message-Id: <20190903150638.242049-3-maennich@google.com>
Mime-Version: 1.0
References: <20180716122125.175792-1-maco@android.com> <20190903150638.242049-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [usb-storage] [PATCH v4 02/12] export: explicitly align struct kernel_symbol
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
 header.i=@google.com header.s=20161025 header.b=BfHZbHR9;       spf=pass
 (google.com: domain of 3syfuxqgkagak8cllgafemmejc.amk@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=3sYFuXQgKAGAK8CLLGAFEMMEJC.AMK@flex--maennich.bounces.google.com;
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190903150638.242049-3-maennich%40google.com.
