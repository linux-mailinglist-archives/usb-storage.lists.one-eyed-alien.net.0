Return-Path: <usb-storage+bncBDMYPB44VAFRBWPLZDVQKGQEMFWFNVA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-vk1-xa46.google.com (mail-vk1-xa46.google.com [IPv6:2607:f8b0:4864:20::a46])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C38FAB5DC
	for <lists+usb-storage@lfdr.de>; Fri,  6 Sep 2019 12:32:58 +0200 (CEST)
Received: by mail-vk1-xa46.google.com with SMTP id 70sf2216076vki.19
        for <lists+usb-storage@lfdr.de>; Fri, 06 Sep 2019 03:32:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567765977; cv=pass;
        d=google.com; s=arc-20160816;
        b=kOnVRGwSvZjMWynDk4UKu6nJKKbWEheGu/UfPnFLtPki0egkMn78R36WZfmJCCYwrB
         HEliCqrjzgzPLO9kxTORj0m+HFsuX+batglgZPJT78L1EQUqjJ0aseQKvpVwNg0oPnxk
         Bda/B6LXSex9X8917b/tTBDFfuoyZec6r46nwlCmqZdnuDbuUzw3fpnuIWlbbxK0qEng
         m2zyW3pXRzcLJBFtIiYaNa48+rMLJt27QOLOk0ValfH1Ii30KTqfwZ1B1AGpmrrZFlFZ
         vbZLQY3JXcrPio/i004aLPznwM1QZimtnSnSq3RLQnB5wWxz68sCeB+9IQgE0G75EYh3
         /akg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=qVKn6ugxBBvG+SICq+UnrGtJcCqf3ZQeokRuTDJWcDo=;
        b=PyUcf1NC0hticFPrV56uRO2l98IdA1nKrclJ0nOQN892x1CdtGLQ5h8YgodVkobL7w
         OdXpdZQMv9xR8Nk98BZZ7Adf5xeNl3UnBDdjdA8yo7+3lKHFZu3p7Ahbphr72EYWeIcK
         H41WX8IsTFL1QPPm9vPul12KfD5N5tbxfgKkxikLg4zxQd6JklbKNyMxAnLvJ+OLVrLS
         gWDHgOoQYS7oOPiEeCr4fWW1BbSZCI38JLr9mWuXsRxkAK7mQB2tp4SOwiH9w4SyIKgd
         dPjSRSLTyqWyLQF5jZGkdswVH1Af0+aVzQAZJc5Gjbsi6JcEF7OB2mLcR6cUKtf7MFTP
         QerQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eumQm+2S;
       spf=pass (google.com: domain of 32dvyxqgkap0rfjssnhmlttlqj.htr@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=32DVyXQgKAP0rfjssnhmlttlqj.htr@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qVKn6ugxBBvG+SICq+UnrGtJcCqf3ZQeokRuTDJWcDo=;
        b=Q8t0Kf0550tlVzTVr4jTQQdwcSIyunzXTXnvhaeTt+KLmeMaHZyz5fJGEKC9l8EXp1
         esCV/KswNlBOqnjOx2QQL9tv3NIA3GOIDQofbJ2TJnbXqYA1oMqdlT28D1QVtnD3+iR/
         vtOb7uj/nQaiLg7xFij6aft5FZGcyEGBdHhdY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qVKn6ugxBBvG+SICq+UnrGtJcCqf3ZQeokRuTDJWcDo=;
        b=BPV3ahceg2bEpZzY88ae3hB+iHgcByov4tlL1PnxZD5tcMQ0lolTmCNRhO3cBe+xTC
         ywtEKUB9THzJWiSs/PKZ1tHwdURlk1L27A94VZXN2YNfqS/g6FohHtLff7AR7ut/b7ul
         ly+GfnCE+YgvzYOvxLV8BsSMN2oVY+ZS/Ibvahdwh0eXE772nQML0r2XE0z747Mgne/r
         1IfzjkNkuGlGJoMToOvKWVKFO1hSUuWX+Nf6ygwWxBAD6O/aGwB8hgwYwMFuwZ2wDODM
         TdCQKY6bzQAxRtNCJnKi9OYKQCZjqVTI4GAchhduEUKugkfqgT+AR/vcTDeO0Y+u9l/x
         wAUw==
X-Gm-Message-State: APjAAAWGfG8ISKlj/6FR5R9tdbDp9ZGrw54YJm5UNhE1bqzRufaRp5pH
	0y0toDOp85H7Iut+D5jICdXsVw==
X-Google-Smtp-Source: APXvYqxZiD/U3bAnjv3Z/Im5KDhNHfmTPLIBQGjKi4esi+5L2dlHAat1doLuYCcQ/gQ/PgJqIWs30g==
X-Received: by 2002:ab0:600b:: with SMTP id j11mr3880606ual.142.1567765977307;
        Fri, 06 Sep 2019 03:32:57 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6102:44f:: with SMTP id e15ls578480vsq.0.gmail; Fri, 06
 Sep 2019 03:32:57 -0700 (PDT)
X-Received: by 2002:a67:2241:: with SMTP id i62mr4379441vsi.85.1567765977080;
        Fri, 06 Sep 2019 03:32:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567765977; cv=none;
        d=google.com; s=arc-20160816;
        b=fvSm8FQGDcFjgLfK2V2/SX4fysfnhXR6+t6ul4pKMDmSjfS03iySALN3gkIKXttwuO
         FAknpBrWJGVCxG9eHBfdd1gnCftJ8LWKFdInSHwAWGrtJQYQeCXiJBgWiMpdvJdCb1Tf
         JrdOb6ib74pBb837ZyKIjUhEvM7RmWAWW4WVYUp/QYhUxoVzzaf9hm9DO2mVtDo+2nPv
         Kl0jQlEHPU7U+mLSmqsHKGkRG6+z9JVg3FN7wP+vLATN1F5GAQIEFeDBD7ktSa6BtknG
         6ZJVWjiIGomP8nU4FiOJ644zXz3yx1VNU3YsnF1/0pxvqZtxWj6J5nzvsD3yvgdcPKRe
         z1Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=e5Xa0/L265hDWGkY0PbNgVQnJTuuZu+3daZLqyOdxeE=;
        b=V5xhIJ+20XS5s+IagKZi+bslM/EZLFcqexD9fWuktNEMHFzT0/H8qKDFnyTfdcuPcw
         XLybsaco10XoGwifKH2ChSyWaArzCDHyWwMI/yaNWXQYQBrDVAKOlbvPXU3Bc4JrYizA
         xs0R9NbVI1sAOB5ENCCGElY+z2W0xcjYwkNiFi+aHldhoWc8OinyXhNwbmX5wWManRue
         HKW7R1yuXzikHhGZjFcTfbEU8qJnwTq4nwSlQWQbrZk0orYfvvqENImqR3/zj2mnfADB
         VtQTvg5UjNrJXs2JzZMr2bb7miliQJ3vCc1jUj8iubEScvqD6PcEQsdO4PUUe1lKv89e
         t63A==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eumQm+2S;
       spf=pass (google.com: domain of 32dvyxqgkap0rfjssnhmlttlqj.htr@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=32DVyXQgKAP0rfjssnhmlttlqj.htr@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id h24sor2122973uar.25.2019.09.06.03.32.57
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 06 Sep 2019 03:32:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of 32dvyxqgkap0rfjssnhmlttlqj.htr@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:ab0:a83:: with SMTP id d3mr3929083uak.7.1567765976576;
 Fri, 06 Sep 2019 03:32:56 -0700 (PDT)
Date: Fri,  6 Sep 2019 11:32:29 +0100
In-Reply-To: <20190906103235.197072-1-maennich@google.com>
Message-Id: <20190906103235.197072-6-maennich@google.com>
Mime-Version: 1.0
References: <20180716122125.175792-1-maco@android.com> <20190906103235.197072-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [usb-storage] [PATCH v5 05/11] module: add config option MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS
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
 header.i=@google.com header.s=20161025 header.b=eumQm+2S;       spf=pass
 (google.com: domain of 32dvyxqgkap0rfjssnhmlttlqj.htr@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=32DVyXQgKAP0rfjssnhmlttlqj.htr@flex--maennich.bounces.google.com;
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
index 6bb9b938f9c7..f76efcf2043e 100644
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
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190906103235.197072-6-maennich%40google.com.
