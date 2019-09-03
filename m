Return-Path: <usb-storage+bncBDMYPB44VAFRBOUDXLVQKGQEW7PFMPI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-vk1-xa46.google.com (mail-vk1-xa46.google.com [IPv6:2607:f8b0:4864:20::a46])
	by mail.lfdr.de (Postfix) with ESMTPS id DA53EA6C44
	for <lists+usb-storage@lfdr.de>; Tue,  3 Sep 2019 17:07:39 +0200 (CEST)
Received: by mail-vk1-xa46.google.com with SMTP id x62sf7917901vka.20
        for <lists+usb-storage@lfdr.de>; Tue, 03 Sep 2019 08:07:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567523259; cv=pass;
        d=google.com; s=arc-20160816;
        b=xsaHjia/nGTS+6t4VeTYowK0tcNf2XON3cZvbbTG7ljeZ1Ex1q7hd+m6Ox8f+FDEGW
         LFUPqE3+Mt1TGUA8gQcLEIwfhJmmdGRz1VxipngO3OO8qTvh0Xy/bcFLZnw6voHxjeMN
         Sh+xiKoUElJfPCGcb7oUTcQKkq70y+3lKDMUJdKCQNvT6nVSuf0RPZCkp4Z69re1clFX
         nwwZOjQH7WxH/9oaW3RP3EmKobi/uCxTeE0DR568yODdlMlkbJO9n06Mi4a/2C4iK2+e
         kAiqQMNGVqDGbHFcIBuXCi5vrybcY0O/pOLj7NyIM7MS5suEREwJK0VOYmjEk3905cei
         j/lA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=CyZhi0xLmiO3/bdRCNmr8fcZVnPuSDAM6urSG/tbom8=;
        b=OCuMQfVvGxu2A24BkMI4cWZO8BrD/YKpEqzqctIs0r0Fkh7tWOWPqnbkyNIy3OIMNb
         PqZ/Ikwy13fSDa7lTWz4AEj0I79FmUHXshPazfBCkg4uaG/QRe9O3J8vrWvhqzl8/cCu
         m12dmxeN24NA1FqNGxz3NXnQiAjKVl4Xto/djcKpU5ktC6ynMeBXtb9fn9rr8WoKKFW/
         Wq4huDka5rkkaxmw47kvEUWslz0r1lNL69ncgIxJ5/LdkJzJdujpzWMB5h2VqBfSTwl3
         FgYZcs4BBG/BNXCkcFjCKmsUjvx/1LuWVE+HtVo8JC0X8IzfvNuDB86UNWP9UF5Ih8IX
         D40A==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Hc0uhxet;
       spf=pass (google.com: domain of 3uofuxqgkagkthluupjonvvnsl.jvt@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3uoFuXQgKAGkTHLUUPJONVVNSL.JVT@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CyZhi0xLmiO3/bdRCNmr8fcZVnPuSDAM6urSG/tbom8=;
        b=XwIPsmmBJVqcYWCEkDQzpRaJaPA9imP9w375OqbShpfOf99rJgtbLX3ixb/cY3HQ6U
         8hnYUIdwhWvd02ZhFv5j+1VSzTx9XxX7v/CPOc0O1kKemtmsIU80flYT26iZhYaAhMyW
         j3n1Ndc+3u1MjghrsQyi7JiGHrdIZD/TC3c8U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CyZhi0xLmiO3/bdRCNmr8fcZVnPuSDAM6urSG/tbom8=;
        b=YDdvAY5TX4TuNwr4n0N8W0+m7Rak0rdb1kj/CE+OaU+NwGcEdmU/dAU/okBq1H44zO
         ECQ+CBEuewco47up2zt4MMgbmdwFGj0jRaz3Y4HPAP1bj+mxLsZJMH+njGZU3xoVvXeR
         LjT6oaYM6319lrOiEqVxfxmxrehxvE3Cv0sA/0iatZ1iJNbO40cEGUF0qRNQGh6bsrYG
         IvpQ2Pzan5RKHVuqvY8iyfwUseDqudMi4cNPkV01qzJ7siFCQRzjLTMJKqZd38sTaGdc
         Ny7eq7DmgqM4mtaigSt9a1nlJb3KyiyUbgiJYxncPme5nIel7s3sDfiCJ3hw0+vbm6xY
         WK3Q==
X-Gm-Message-State: APjAAAWjtelRRsR5PsydyP/HZ6tPwAEunENkECCQThw0njhTla7o+0rP
	Qakh2pjxVlrvg21tAd1IoM8eMQ==
X-Google-Smtp-Source: APXvYqw+7gswy3bwPvjQHt0GRktayEgev9873qsKs3lao1zJxfE2g+4tWXXL6YFpqy/BO8jBW1IPXA==
X-Received: by 2002:a67:70c5:: with SMTP id l188mr5516163vsc.19.1567523258915;
        Tue, 03 Sep 2019 08:07:38 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6102:302c:: with SMTP id v12ls999655vsa.7.gmail; Tue, 03
 Sep 2019 08:07:38 -0700 (PDT)
X-Received: by 2002:a67:ead5:: with SMTP id s21mr5076971vso.188.1567523258633;
        Tue, 03 Sep 2019 08:07:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567523258; cv=none;
        d=google.com; s=arc-20160816;
        b=BwWcTbCzkzfRHDUjLywdlBFsqgd9LEdYWTM2XMD2aZ4l91WQlyCekOr+cW8JiUIqIv
         6oPGOoslvTdGc5p5xsxjptcZHFK99CMFKYhDAyuz48Y36jeRQYn7Alqp9l+VRG7xhWRJ
         g7IIsWs/sR4ep6Dl8xixLi88nizzw9ImrgdeqSSd+ODeGeQvDp6k60hW36t0RnsUy4Rv
         bnmEAEsWfoRSqJ3uLU38o0WWCTjXfe3hSspe07NGYHPErzX1N8OYIuBwOLuwN9OYIsz+
         Y41AGyQIB+uNUJXrwKUurDLNuX2610wTob9P5ihLUEERojUxSiPC3xr7LM6byVqa2ags
         CETQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=e5Xa0/L265hDWGkY0PbNgVQnJTuuZu+3daZLqyOdxeE=;
        b=hLN3jLnWvGwyHuZ0C9R8ibfs9Vw7ZNefVdC2daD18cn19p9yK+x1x6ml3JPFoxgtaV
         5yZEilC64P1w2lcAPJzwHpnb1bIXzc1DdkWTRoQ3HF66DADRLiP1g8pM5IIKee5AH2bg
         CDL5yAfC3g5QC6tIdjHYyH/HJlhqHuY4VdJv4g7fkXKib9nPgaxzYiNawF381JFDt1Di
         +P7JAnIpc2nT6SdzN7ygiTY+IbhqHpRvXDRvbBEFp7kZwSb2gSWnXPBBTPFWCpjO+HCx
         BlsvqdPN8XqTBHxFtRLSoP8nGerz/jkiTRGp4ABOg1x4idT5SSa2YiwWj8le3r/PLeRB
         JO9g==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Hc0uhxet;
       spf=pass (google.com: domain of 3uofuxqgkagkthluupjonvvnsl.jvt@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3uoFuXQgKAGkTHLUUPJONVVNSL.JVT@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id g19sor1230850vkk.72.2019.09.03.08.07.38
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 03 Sep 2019 08:07:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3uofuxqgkagkthluupjonvvnsl.jvt@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:a1f:bd94:: with SMTP id n142mr7086317vkf.86.1567523258142;
 Tue, 03 Sep 2019 08:07:38 -0700 (PDT)
Date: Tue,  3 Sep 2019 16:06:31 +0100
In-Reply-To: <20190903150638.242049-1-maennich@google.com>
Message-Id: <20190903150638.242049-6-maennich@google.com>
Mime-Version: 1.0
References: <20180716122125.175792-1-maco@android.com> <20190903150638.242049-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [usb-storage] [PATCH v4 05/12] module: add config option MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS
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
 header.i=@google.com header.s=20161025 header.b=Hc0uhxet;       spf=pass
 (google.com: domain of 3uofuxqgkagkthluupjonvvnsl.jvt@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=3uoFuXQgKAGkTHLUUPJONVVNSL.JVT@flex--maennich.bounces.google.com;
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190903150638.242049-6-maennich%40google.com.
