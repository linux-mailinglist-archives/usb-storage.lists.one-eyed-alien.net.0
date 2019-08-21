Return-Path: <usb-storage+bncBDMYPB44VAFRB47B6TVAKGQECNYLMKY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yw1-xc46.google.com (mail-yw1-xc46.google.com [IPv6:2607:f8b0:4864:20::c46])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C82E97861
	for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 13:54:28 +0200 (CEST)
Received: by mail-yw1-xc46.google.com with SMTP id b195sf1242537ywa.16
        for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 04:54:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566388467; cv=pass;
        d=google.com; s=arc-20160816;
        b=CpjFBlKfU1ZFTrvTzeYmqyiHDnJur6RnVAVnsovUsubSIIThz3tIlsr6d31Pz7GSB8
         6C/d2yw4xHDIH5OuvL0L/HmXeAokCDy1qRPGqV1+KL/EuyGEJxFkZqiwDyqd42YR9fqQ
         +6WTRTLAwkvUsXfSnB/WxDv7Z1PYIZFqQvDoK1O3nsqn3VHGMoCqE/q2gGpjaCmiEazX
         ZsUEM24GE+QDPj8nrkRQZCQElA7j5JeR3RmFyB63+s5rF3UFxx6/Cx8w1yFp/VMyL3Zo
         f14AZoWp4erTzoWgQxMsXQTVzO97Xli2T09u1tAPpJCwvtI10+Nr5t8xtL4qXk18Ym5Q
         H/kg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=JTbk/mhlf8ZaXj/5SFpJ+sb4TslQR4HxL8HW5kzf3oM=;
        b=TL2eSV8lD1e3d+JN7VvBQa7tqdFGMzvDqLv1fRMsO3Gwz9g+ZE+zC1+ckCtrOp2KwT
         SxF8blcBQVxglRWRRUuoLY323tS0SYxF2tTd9GhQVDQye6mv2tgmdCOlEkr3ez5kj0kM
         XTEmtMEyRuB/qTrkv36USHf9PiTZqtTmFWLuA/rBK2bZ6SbvxDgexl6uXFnjcYxZZERP
         TWYjskX5hSEtGB/plWYLMe5/ly7+3OVdz/M1covbzSZCYU8d1YNViuewkcLZNZ5ptc7W
         OMwq1/8YJYvnyou7zrvZBeNCUyi6/Vkvzm6tnbyIxioTq+d4V117iC2CAfcBIBgFylBq
         pWbw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=abTPfEJh;
       spf=pass (google.com: domain of 38jbdxqgkalklzdmmhbgfnnfkd.bnl@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=38jBdXQgKALklZdmmhbgfnnfkd.bnl@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JTbk/mhlf8ZaXj/5SFpJ+sb4TslQR4HxL8HW5kzf3oM=;
        b=AHuwoGHFV6yz3DVm7xujqN56MntNArav5YOs+wjLUVoqTndApGnDdSxLMfnCL+n9NB
         qJjRaMHbaVqicKlLfW1ZJVHZJVNoM2xWeDOcBej0of4LzoG5YZs6WNyPGdzaJGj8qUix
         Ge3VDZhz6E/BfB3uxlVfMEtjA7v2Naae0jGLY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JTbk/mhlf8ZaXj/5SFpJ+sb4TslQR4HxL8HW5kzf3oM=;
        b=aJaDyUm6bb/yLLnSpafkTXrDE3CpC8JthQzX+uuSz/C+ZsVUqVI4Pb02wW8yP9c3wK
         0QW0qvl4ZfqwkpOuSuUk2snrn+1Iz6ratQiTIWAwkzzE/e5d7VT0QmaqYjjb61WihZWy
         6rqs0SMFb3RkoM1ZYCQBW7uDw1di6OTCSPvUhn2EIobx2UttXwFPA8wRCTlAezQ0grby
         Txz5/bVNoqXmj/X3W7VHDvr1ojkWNDWduRmrW3GIXh1b4++wFO77yM6YtWlOJcP+hLhy
         NQXhkwdT0nNndRrkeukbxC675fYTeEF8hYlG5oeZ7+ah1v1fUF3ZjvAhL2IiKtOCyxUO
         GEOw==
X-Gm-Message-State: APjAAAUHw+Sb+ivBOWnQYCGxUA89ks9KQ6CRm8tUI9lIxXAty6j0rxyv
	1Jb0NsVIhkeyr2FcIF2stZYkzA==
X-Google-Smtp-Source: APXvYqyh7bb8SwFiao4KMT9FaKkun9GGvjU/ORCQZw0YaU54TYI4q5xPCdb8mdJT2cdZWJ2WXyb1bg==
X-Received: by 2002:a81:79d2:: with SMTP id u201mr22366449ywc.457.1566388467190;
        Wed, 21 Aug 2019 04:54:27 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a81:a087:: with SMTP id x129ls300335ywg.14.gmail; Wed, 21
 Aug 2019 04:54:26 -0700 (PDT)
X-Received: by 2002:a81:6603:: with SMTP id a3mr22721657ywc.113.1566388466756;
        Wed, 21 Aug 2019 04:54:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566388466; cv=none;
        d=google.com; s=arc-20160816;
        b=AHn8HB0igfIWc510PtcKeFzsG9HEIe8//HD4UvF1UmU6nMPmJlaDum7PTBzFVzh1Qy
         L6TgbcvFUTqCS0zgsgTnSGqHEuFWfqNBW35WGE0YXUpXkk+aEeji+KLvKA93c/cqP0Zl
         E29wpa/0ubt3lfqsK/J+N5x+Og6CEhv4DtfYTC44XutuwyYaACfyurqpowR3d09bfZ5l
         ARrWdCDBMXifMGNcKy7IjqbBzoBVeNvTsI/nWw4Yd6Id2m9vlb0a9+3I5VXyf3FQYYV/
         oZhmo0C4Mtq1KbX8CF1NYd6rnvx1LpG4wMt29g9mVx4tWvjSiRXIV62RruandwuUcYoU
         GpYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=PMfgpvV4p29AlBNiXlEti/BQa916MI0li39A4AvOT8o=;
        b=MxHEujkQekJ9p3tuSKWgx9s9t93nEPrtYQsiEpTLPJ2k3aDi2dk82JIbbe0I7dn8CX
         ykql8zpMR49F4UWsJWruLlxzXnZMhyu5RLHcsBGHZwPHJiOd4J1XPEMH2BVt6XNC4pXK
         FTn5412Oql4AUhZYfkfwf6jeRer9SM8cUm7DBxKHwelMZC/uU7FJDch2aSCU/mYc4Luk
         i27Yji/doam9q5gzFpO7gtvfMaV2NDGYHTGoowjbWyBvwbvzE9yQSVLLsCTcIimi6HX7
         jRwYb7/iw+GStRoXpTBIW/lSEB72zB+l3cldgkomGddSt55s0wCT+tDECd0wROuvhk4z
         wlHw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=abTPfEJh;
       spf=pass (google.com: domain of 38jbdxqgkalklzdmmhbgfnnfkd.bnl@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=38jBdXQgKALklZdmmhbgfnnfkd.bnl@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id y142sor11302425ywd.185.2019.08.21.04.54.26
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 21 Aug 2019 04:54:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of 38jbdxqgkalklzdmmhbgfnnfkd.bnl@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:a0d:e14d:: with SMTP id k74mr23507585ywe.364.1566388466112;
 Wed, 21 Aug 2019 04:54:26 -0700 (PDT)
Date: Wed, 21 Aug 2019 12:49:20 +0100
In-Reply-To: <20190821114955.12788-1-maennich@google.com>
Message-Id: <20190821114955.12788-6-maennich@google.com>
Mime-Version: 1.0
References: <20190813121733.52480-1-maennich@google.com> <20190821114955.12788-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [usb-storage] [PATCH v3 05/11] module: add config option MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS
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
	yamada.masahiro@socionext.com, Andrew Morton <akpm@linux-foundation.org>, 
	Johannes Weiner <hannes@cmpxchg.org>, Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, 
	David Howells <dhowells@redhat.com>, Patrick Bellasi <patrick.bellasi@arm.com>, 
	Dan Williams <dan.j.williams@intel.com>, Adrian Reber <adrian@lisas.de>, 
	Richard Guy Briggs <rgb@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=abTPfEJh;       spf=pass
 (google.com: domain of 38jbdxqgkalklzdmmhbgfnnfkd.bnl@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=38jBdXQgKALklZdmmhbgfnnfkd.bnl@flex--maennich.bounces.google.com;
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

If MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS is enabled (default=n), the
requirement for modules to import all namespaces that are used by
the module is relaxed.

Enabling this option effectively allows (invalid) modules to be loaded
while only a warning is emitted.

Disabling this option keeps the enforcement at module loading time and
loading is denied if the module's imports are not satisfactory.

Reviewed-by: Martijn Coenen <maco@android.com>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Matthias Maennich <maennich@google.com>
---
 init/Kconfig    | 13 +++++++++++++
 kernel/module.c | 11 +++++++++--
 2 files changed, 22 insertions(+), 2 deletions(-)

diff --git a/init/Kconfig b/init/Kconfig
index bd7d650d4a99..cc28561288a7 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -2119,6 +2119,19 @@ config MODULE_COMPRESS_XZ
 
 endchoice
 
+config MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS
+	bool "Allow loading of modules with missing namespace imports"
+	help
+	  Symbols exported with EXPORT_SYMBOL_NS*() are considered exported in
+	  a namespace. A module that makes use of a symbol exported with such a
+	  namespace is required to import the namespace via MODULE_IMPORT_NS().
+	  There is no technical reason to enforce correct namespace imports,
+	  but it creates consistency between symbols defining namespaces and
+	  users importing namespaces they make use of. This option relaxes this
+	  requirement and lifts the enforcement when loading a module.
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190821114955.12788-6-maennich%40google.com.
