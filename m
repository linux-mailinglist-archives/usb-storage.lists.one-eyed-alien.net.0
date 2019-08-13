Return-Path: <usb-storage+bncBDMYPB44VAFRBINHZPVAKGQE5OFI4CI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x845.google.com (mail-qt1-x845.google.com [IPv6:2607:f8b0:4864:20::845])
	by mail.lfdr.de (Postfix) with ESMTPS id C621E8BCC5
	for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 17:13:38 +0200 (CEST)
Received: by mail-qt1-x845.google.com with SMTP id l17sf5158479qtk.16
        for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 08:13:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565709217; cv=pass;
        d=google.com; s=arc-20160816;
        b=o4VJJn5y3QTdjrRzh0HfbUuXTB+U7r/31hR/mlDl9YOGNRaOmu1JWdCL4IEDKrox8Z
         J02XNefPmmKolH2zrmOnJRhyydtS5G2kwiap8XFsbA92+XrjzT2MrGKMrHJ9lqOPFNhw
         uQbjQMP3P/DyfJYHrm17Z8vnc9FDiaasVyWKf1ye1j/nnob8uuPXpuR232SH8H313dtY
         wElyCsJc5fgxvQj9qvmi8HaeWxGHqdh+01v+SY5It63Rm2MR2hyhbrETN/D+vKhHcg/q
         HoSkE+JF/dS5E34s2v1uO8sOs0xgJ4/bW4sSIBZRvwUfVI+mgagLr/JTAmPXBS3BsXhT
         z68w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=E3HyYxjv8VomCsXub4/ahw7djXjoVjHiqf+59a+tlMM=;
        b=0UH5EpLDOqbsoaxHmDpSPpAIQIzrnXxCHgmhaiVJzCJjRX/35iXbhWAyGn+LbD4Evj
         o2nQq7MVL7NHcFoq1Ro99ko74yW5TVndlSNDAbOTfv3mvOqeOIVbicFIWfjMj+aGMjCC
         Mk1TMHXNByXyH6xw/OAzPsqDShOH+vvZfYorKjyU9unM1TP+rsrEp+vsxlj+KqYV8R9d
         9EoinKVQweIuCBrbK4cldaQ2iVmZFOCPauE3+BjJrQDoA+lWkbNjOKaXPERQU0Tszwjh
         3xbUxE5gv4F94biai1dZDIwBMwZS6lBNErfBYlIkZ2CTOz7HxyepCtFqKkJNz1Yd65+s
         u6Lw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Q3EMNPwo;
       spf=pass (google.com: domain of 3zqpsxqgkaf8j7bkkf9edlldib.9lj@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3zqpSXQgKAF8J7BKKF9EDLLDIB.9LJ@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E3HyYxjv8VomCsXub4/ahw7djXjoVjHiqf+59a+tlMM=;
        b=F85ya0pIVMNpxqYy933mjmqwBrxSe1XG2x6f4mRL0pdgnCgVLVF31uH+IsJdHTvugi
         Q8QemTD2TSWYWka9xpy5VOOTdOin4vuErOl4uwzYQBThuVk0OfreWFiwIplKHk2f5jq4
         Kc4HWCbbkR6Ajt0FNquww+j/pKBPb6bXmqsZU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=E3HyYxjv8VomCsXub4/ahw7djXjoVjHiqf+59a+tlMM=;
        b=eK/+qnHBQDVLmfalC/uFBDkB3Rg0Ll7ftSGfaJjNx/eiEK/UT7MY8T30MpbGU+YJgb
         1Q/EMqsQdB9y29GhSke9OOTLQP8j9iC0YQXe4VubjW7jgh13dOSv90gfOmtKWhkKVr0X
         vJyTTLr/qcuSNA4ME9aLnlFPMF2MPXBecNPCuxFkNwLhvH1t3JXG+ZXhYNLRvmevfQ9i
         5Yvp1y1jigE7jhB+rbIg/bgXhKaSUMTMuugiwdjCcyvu4oNKgIjT9ulHNaKZQL1Qd6jb
         b/MbhJl8KhcY0UNTKtzDsLfr0S0VAc/cgONQt3bI2mcfgVKHSCTarGSlvajgzjzaCF9m
         z0Wg==
X-Gm-Message-State: APjAAAW8jQVZ9DxFKzd8M2DPNN1ZHb3x+RVxNxJz2okdoGPiY1eqS7Sp
	jAUcxj4fpgWmVo1rzUGg1Oq3cA==
X-Google-Smtp-Source: APXvYqx1dBjPo+p+2i4h2E1ZZWYkxps9+Rws6YQMBpSwJ1nlEPu3VHCnJhbxkGd0LLmBrFxWh5A/XQ==
X-Received: by 2002:a37:9c0c:: with SMTP id f12mr34447531qke.442.1565709217690;
        Tue, 13 Aug 2019 08:13:37 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:2694:: with SMTP id 20ls3275651qto.4.gmail; Tue, 13 Aug
 2019 08:13:37 -0700 (PDT)
X-Received: by 2002:ac8:70c8:: with SMTP id g8mr18869860qtp.374.1565709217454;
        Tue, 13 Aug 2019 08:13:37 -0700 (PDT)
Received: by 2002:ae9:eb07:0:0:0:0:0 with SMTP id b7msqkg;
        Tue, 13 Aug 2019 05:19:27 -0700 (PDT)
X-Received: by 2002:a67:c016:: with SMTP id v22mr26319634vsi.107.1565698766958;
        Tue, 13 Aug 2019 05:19:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565698766; cv=none;
        d=google.com; s=arc-20160816;
        b=lxE2dkJC1crg4jzdJ6fL8NDFynRhos+F2ydNSEiRXZbAMHK++fz/Ero/WbfvqVBcXQ
         AIXFylsgyV4ikSB883ND9j31/9R0VbvF8vlQ702mtD6e40wKvP+ROvR9d9SfnFITEca7
         9vIhj8hygjjZM/t62pXn1H3917CYx9YnrbVrW0tkU2198HgFS+1bLAOp8aM4UFCaf0cg
         a9E73AIaYAfmVQffiKB2/IhozEi4Y7jl1Zbc6VTfst4IZLzuBWvykM2ZETvpmcTl8tPi
         iTuVHB5PnbUjSXjpW/Wunyufvg5x4qaxRZi9i4Xyg2KmmKt8ZZxd2MNg0WKyTObH3xoK
         OGag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=/YYc16S6TtlY6DmQcUE3cXRCrWAP97wDS23cXhgLsgk=;
        b=GXNtJ6WFv8dC9ui6XKByXdzmeT3M1PvSIJUHeM5idgAMlI5f4Dy5p9Rrr2OqcftBYU
         1mooqgzUzVGJM+Y8+A9txO3eCkW4uD7FVuPOQ0cT31JP58tQN0+lA74mTRpA37vrXJ74
         F3AnbSIFl1vTRlZDaEPuh8Rdfl9oRTR1OIgr9aiMyzG9kLnFTs5STI3/xcvmk1Wn80IH
         wlLx+kDly6UJfUjCRVnq0AwcfDdyS/VOKcPPDP3w761ViagbO6Ws10MsahUpzUPtduRc
         fT7KGL0QdQH0rgn2shQ7WKfci3YmmHX5RfyVYKtiuRLcugBisjtCjRb1JqLWDpi7Izqg
         zggg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Q3EMNPwo;
       spf=pass (google.com: domain of 3zqpsxqgkaf8j7bkkf9edlldib.9lj@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3zqpSXQgKAF8J7BKKF9EDLLDIB.9LJ@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id x7sor186116vkf.72.2019.08.13.05.19.26
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 13 Aug 2019 05:19:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3zqpsxqgkaf8j7bkkf9edlldib.9lj@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:a1f:7c0e:: with SMTP id x14mr3691831vkc.0.1565698766083;
 Tue, 13 Aug 2019 05:19:26 -0700 (PDT)
Date: Tue, 13 Aug 2019 13:17:02 +0100
In-Reply-To: <20190813121733.52480-1-maennich@google.com>
Message-Id: <20190813121733.52480-6-maennich@google.com>
Mime-Version: 1.0
References: <20180716122125.175792-1-maco@android.com> <20190813121733.52480-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [usb-storage] [PATCH v2 05/10] module: add config option MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS
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
	Johannes Weiner <hannes@cmpxchg.org>, "Peter Zijlstra (Intel)" <peterz@infradead.org>, 
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, David Howells <dhowells@redhat.com>, 
	Patrick Bellasi <patrick.bellasi@arm.com>, Dan Williams <dan.j.williams@intel.com>, 
	Adrian Reber <adrian@lisas.de>, Richard Guy Briggs <rgb@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Q3EMNPwo;       spf=pass
 (google.com: domain of 3zqpsxqgkaf8j7bkkf9edlldib.9lj@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=3zqpSXQgKAF8J7BKKF9EDLLDIB.9LJ@flex--maennich.bounces.google.com;
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

If MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS is enabled (default=n), the
requirement for modules to import all namespaces that are used by
the module is relaxed.

Enabling this option effectively allows (invalid) modules to be loaded
while only a warning is emitted.

Disabling this option keeps the enforcement at module loading time and
loading is denied if the module's imports are not satisfactory.

Reviewed-by: Martijn Coenen <maco@android.com>
Signed-off-by: Matthias Maennich <maennich@google.com>
---
 init/Kconfig    | 14 ++++++++++++++
 kernel/module.c | 11 +++++++++--
 2 files changed, 23 insertions(+), 2 deletions(-)

diff --git a/init/Kconfig b/init/Kconfig
index bd7d650d4a99..b3373334cdf1 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -2119,6 +2119,20 @@ config MODULE_COMPRESS_XZ
 
 endchoice
 
+config MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS
+	bool "Allow loading of modules with missing namespace imports"
+	default n
+	help
+	  Symbols exported with EXPORT_SYMBOL_NS*() are considered exported in
+	  a namespace. A module that makes use of a symbol exported with such a
+	  namespace is required to import the namespace via MODULE_IMPORT_NS().
+	  This option relaxes this requirement when loading a module. While
+	  technically there is no reason to enforce correct namespace imports,
+	  it creates consistency between symbols defining namespaces and users
+	  importing namespaces they make use of.
+
+	  If unsure, say N.
+
 config TRIM_UNUSED_KSYMS
 	bool "Trim unused exported kernel symbols"
 	depends on MODULES && !UNUSED_SYMBOLS
diff --git a/kernel/module.c b/kernel/module.c
index 57e8253f2251..7c934aaae2d3 100644
--- a/kernel/module.c
+++ b/kernel/module.c
@@ -1408,9 +1408,16 @@ static int verify_namespace_is_imported(const struct load_info *info,
 			imported_namespace = get_next_modinfo(
 				info, "import_ns", imported_namespace);
 		}
-		pr_err("%s: module uses symbol (%s) from namespace %s, but does not import it.\n",
-		       mod->name, kernel_symbol_name(sym), namespace);
+#ifdef CONFIG_MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS
+		pr_warn(
+#else
+		pr_err(
+#endif
+			"%s: module uses symbol (%s) from namespace %s, but does not import it.\n",
+			mod->name, kernel_symbol_name(sym), namespace);
+#ifndef CONFIG_MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS
 		return -EINVAL;
+#endif
 	}
 	return 0;
 }
-- 
2.23.0.rc1.153.gdeed80330f-goog

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190813121733.52480-6-maennich%40google.com.
