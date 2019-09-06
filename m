Return-Path: <usb-storage+bncBDMYPB44VAFRBSXLZDVQKGQEX2OMLSI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ua1-x948.google.com (mail-ua1-x948.google.com [IPv6:2607:f8b0:4864:20::948])
	by mail.lfdr.de (Postfix) with ESMTPS id 599BCAB5D4
	for <lists+usb-storage@lfdr.de>; Fri,  6 Sep 2019 12:32:44 +0200 (CEST)
Received: by mail-ua1-x948.google.com with SMTP id y9sf942532ual.8
        for <lists+usb-storage@lfdr.de>; Fri, 06 Sep 2019 03:32:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567765963; cv=pass;
        d=google.com; s=arc-20160816;
        b=ytgNGorsDJYP0/xm/JvKcPWMBWUBPfui5cQSQo8nOk+8pZUO8HiWg1xqh4fHwmkZhY
         TmjbquSXChjTJ0lZzW+w+oWERuhrvo+eE1UpKNh9eGiiRQYwQMpiHYkGIhpwMTqvzfsa
         CEcfyAWf4+ZNv1i5DGHSWYQV/YCBnhvXxLhDhuKm8v3qar2r5JY9pygO+SXtfBf9FmmS
         +vGG6EoX8ch/Vx4HJpEU5b53rYyX6NP0gSNzhVq/oO4uPOL4m714M7GLzWUkseawEsyC
         tKWdYbBB4CrhwK6Z2Gda5HcKqXdwoqUlW80wZ9Xhtl57tDsGyTxJOkwo2kpbR6ka3TUd
         yu3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=eQvYXkFJg14fGOd0D06G/CexmyEqO92FyeiQM7tYiUM=;
        b=n6N83OvAgLK9SBPGPRVvqO/RQY2Ju9ifU0OMPHxl92ARyGnXmK4oVdzdY5SUfk9BTY
         wlzPQZP6bgweIADHyAWZrDXzWsdSUL6+DEtm6O1B95ftiZAC1kR8711kCd2G5xb2xGUq
         K22kFgykN24+HPylTEk9idR3RLKHo1xEmwBSzCH4Hrk9+qUCqq6o4jDtumyBPkZJjggn
         KCGsluJJ2603Ba7oD+Alqom48Q2diSAk2WCgI1BITVUdDT7pcUAaXmz8NJO4ZtyeNuaM
         XSdcvw9yXeeNfLOS9colu1eKCtZg3B4D6cBwdt6LPR1ptpE1h1BzRzhAjo/5juV+Jl5q
         LzXg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Xo0+Y6BA;
       spf=pass (google.com: domain of 3ytvyxqgkao4cquddysxweewbu.sec@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3yTVyXQgKAO4cQUddYSXWeeWbU.Sec@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eQvYXkFJg14fGOd0D06G/CexmyEqO92FyeiQM7tYiUM=;
        b=kp8Q/9n7mZzVeNwj1aXPUPBWtq1OrzwF1Lvqu8y8ZLzCN6iaaqYib2hju0KW93Jz9d
         N/NWf6248ejWfX0VVCF2jDh8ZJgKc5YOstxYhpddJ5xKGYT/lvDYYKk7k7SJlqBfuTRt
         oXcP5DCW7ufTxtfkzL30yY1JEUn1v45x2Ubjc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eQvYXkFJg14fGOd0D06G/CexmyEqO92FyeiQM7tYiUM=;
        b=kCIHazNZxBCyZdofJyMoEGb6nRamFwu/Ty+dF/EToRseLVqRzRw9arytXB35EaiNnJ
         P51u/wg0dkGw1BQJ97GatpUV07zK7YltQo4BDqW64q4HDHxt8lH8/kY/Qx/FgN0QjPQE
         W1nUUrufS6N+ZeZtkxbLWev+oEEJUkaPzQqcrpVxY8of+nyq2i82bAOKT0/DkE8EWogB
         vO1IBlW7BcchHQg2iQXAWxLDsq2OyMzVIlsPnOuLSdDCFOhz87xHKkepZVU0pnCTC+A4
         o+YXJXxVXPL/XZKBsrDqWJiFnGVkTK+7j8JDe11voUUzeWR5l9Od+h2latwHZOWNyAOA
         i1bA==
X-Gm-Message-State: APjAAAVTGDHA/BvlrDTfZh/dqdfro7b0GuOYiEL+RIUKuyoRiY+8HPZE
	h756KhAon+9iwrKhkq9gs+q4JA==
X-Google-Smtp-Source: APXvYqyTmOki7OAAZNr9rLbK8Aph3EzEI9mVXPgkssCX8jAVNmuhMBJsEyNkAhhApV1o2wuRINohig==
X-Received: by 2002:a67:e886:: with SMTP id x6mr4459511vsn.117.1567765963160;
        Fri, 06 Sep 2019 03:32:43 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a1f:4546:: with SMTP id s67ls189708vka.3.gmail; Fri, 06 Sep
 2019 03:32:42 -0700 (PDT)
X-Received: by 2002:a1f:8:: with SMTP id 8mr3487574vka.2.1567765962515;
        Fri, 06 Sep 2019 03:32:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567765962; cv=none;
        d=google.com; s=arc-20160816;
        b=sIxyZG5ZZZyIN7mL3vcWrx+1XLcOTLSEIbUIHqu6cE0Fr8PINymc3thQ8vGPcOuJ/Z
         Yd1xJWzam4FWpZNrmmiqgFTiUFRLN2S+5+SUqqLiLmm4kNL1Ojp57gssP/JQvJX+LJto
         /eNwaEgtDmHa4MScy9zIdcRyA41ZpkGr/VsuPGQHsw1M3jls3HDIzRBVAdl1Zi0F5QBn
         7B2eEEoFwZi0nik8siuaehk7gp9S0Y9eGSPdw13PX5QbJVeIV9NhZxtqbKwo6juMJ2fT
         3GrPQ6octnelRPO9/LofnOnOjXD9KlRpEp7MZj4pJD/u1YRcfqg87B1eoePh7BgVeDUe
         rEFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=8mTCpyO6GtVGn/Ps6+YfPQEMp7IEqy8vOzxY6BbdH+Y=;
        b=VYjKpwu9ZHNfkJrXsaxsUPZSMA2EDbPuEQ/kJ4zLCK8ob1Un29mFo7mRi0BW4Mqq0H
         QLL9R+SkAnh4irDr5uFIgsv6YhJQ92jkDpmJhbNvbg9alnvxN9cH0IfSzKH6awHko/U2
         HRKudjkqXMM+F0j+LK2Eqp3y6icNd94x3bNdBbIh5oa+SZKgZkCglwp7tW21ll8pOBnC
         DtgXhPfFAR5V+cPAdIOgsWZOUkfzH/1WE4yvxDIsPqNSgHqKWZRNSXMY456jTtqqix5N
         YIi4jilWB5ZwDxtLe9o6p8etoOPFojVJWLuTvQ08NQNkb3f2EyMoHl44wkJJeOE0tmSo
         7sJQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Xo0+Y6BA;
       spf=pass (google.com: domain of 3ytvyxqgkao4cquddysxweewbu.sec@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3yTVyXQgKAO4cQUddYSXWeeWbU.Sec@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id v123sor1401541vkg.69.2019.09.06.03.32.42
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 06 Sep 2019 03:32:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ytvyxqgkao4cquddysxweewbu.sec@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:a1f:9893:: with SMTP id a141mr3955150vke.75.1567765961937;
 Fri, 06 Sep 2019 03:32:41 -0700 (PDT)
Date: Fri,  6 Sep 2019 11:32:24 +0100
In-Reply-To: <20180716122125.175792-1-maco@android.com>
Message-Id: <20190906103235.197072-1-maennich@google.com>
Mime-Version: 1.0
References: <20180716122125.175792-1-maco@android.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [usb-storage] [PATCH v5 00/11] Symbol Namespaces
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
 header.i=@google.com header.s=20161025 header.b=Xo0+Y6BA;       spf=pass
 (google.com: domain of 3ytvyxqgkao4cquddysxweewbu.sec@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=3yTVyXQgKAO4cQUddYSXWeeWbU.Sec@flex--maennich.bounces.google.com;
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

As of Linux 5.3-rc7, there are 31207 [1] exported symbols in the kernel.
That is a growth of roughly 1000 symbols since 4.17 (30206 [2]). There
seems to be some consensus amongst kernel devs that the export surface
is too large, and hard to reason about.

Generally, these symbols fall in one of these categories:
1) Symbols actually meant for drivers
2) Symbols that are only exported because functionality is split over
   multiple modules, yet they really shouldn't be used by modules outside
   of their own subsystem
3) Symbols really only meant for in-tree use

When module developers try to upstream their code, it regularly turns
out that they are using exported symbols that they really shouldn't be
using. This problem is even bigger for drivers that are currently
out-of-tree, which may be using many symbols that they shouldn't be
using, and that break when those symbols are removed or modified.

This patch allows subsystem maintainers to partition their exported
symbols into separate namespaces, and module authors to import such
namespaces only when needed.

This allows subsystem maintainers to more easily limit availability of
these namespaced symbols to other parts of the kernel. It can also be
used to partition the set of exported symbols for documentation
purposes; for example, a set of symbols that is really only used for
debugging could be in a "SUBSYSTEM_DEBUG" namespace.

I continued the work mainly done by Martijn Coenen.

Changes in v2:
- Rather than adding and evaluating separate sections __knsimport_NS,
  use modinfo tags to declare the namespaces a module introduces.
  Adjust modpost and the module loader accordingly.
- Also add support for reading multiple modinfo values for the same tag
  to allow list-like access to modinfo tags.
- The macros in export.h have been cleaned up to avoid redundancy in the
  macro parameters (ns, nspost, nspost2).
- The introduction of relative references in the ksymtab entries caused
  a rework of the macros to accommodate that configuration as well.
- Alignment of kernel_symbol in the ksymtab needed to be fixed to allow
  growing the kernel_symbol struct.
- Modpost does now also append the namespace suffix to the symbol
  entries in Module.symvers.
- The configuration option MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS allows
  relaxing the enforcement of properly declared namespace imports at
  module loading time.
- Symbols can be collectively exported into a namespace by defining
  DEFAULT_SYMBOL_NAMESPACE in the corresponding Makefile.
- The requirement for a very recent coccinelle spatch has been lifted by
  simplifying the script.
- nsdeps does now ensures MODULE_IMPORT_NS statements are sorted when
  patching the module source files.
- Some minor bugs have been addressed in nsdeps to allow it to work with
  modules that have more than one source file.
- The RFC for the usb-storage symbols has been simplified by using
  DEFAULT_SYMBOL_NAMESPACE=USB_STORAGE rather than explicitly exporting
  each and every symbol into that new namespace.

Changes in v3:
- Reword the documentation for the
  MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS option for clarification.
- Fix printed required version of spatch in coccinelle script.
- Adopt kbuild changes for modpost: .mod files are no longer generated
  in .tmp_versions. Similarely, generate the .ns_deps files in the tree
  along with the .mod files. Also, nsdeps now uses modules.order as
  source for the list modules to consider.
- Add an RFC patch to introduce the namespace WATCHDOG_CORE for symbols
  exported in watchdog_core.c.

Changes in v4:
- scripts/nsdeps:
  - exit on first error
  - support out-of-tree builds O=...
- scripts/export_report.pl: update for new Module.symvers format
- scripts/mod/modpost: make the namespace a separate field when
  exporting to Module.symvers (rather than symbol.NS)
- include/linux/export.h: fixed style nits
- kernel/module.c: ensure namespaces are imported before taking a
  reference to the owner module
- Documentation: document the Symbol Namespace feature and update
  references to Module.symvers and EXPORT_SYMBOL*

Changes in v5:
- Makefile: let 'nsdeps' depend on 'modules' to allow
  `make clean; make nsdeps` to work
- scripts/nsdeps: drop 'exit on first error' again as it just makes more
  problems than it solves
- drop the watchdog RFC patch for now

This patch series was developed against v5.3-rc7.

[1] git grep "^EXPORT_SYMBOL\w*(" v5.3-rc7 | wc -l
[2] git grep "^EXPORT_SYMBOL\w*(" v4.17    | wc -l

Cc: arnd@arndb.de
Cc: gregkh@linuxfoundation.org
Cc: jeyu@kernel.org
Cc: joel@joelfernandes.org
Cc: lucas.de.marchi@gmail.com
Cc: maco@android.com
Cc: sspatil@google.com
Cc: will@kernel.org
Cc: yamada.masahiro@socionext.com
Cc: linux-kbuild@vger.kernel.org
Cc: linux-modules@vger.kernel.org
Cc: linux-usb@vger.kernel.org
Cc: usb-storage@lists.one-eyed-alien.net
Cc: kernel-team@android.com

Matthias Maennich (11):
  module: support reading multiple values per modinfo tag
  export: explicitly align struct kernel_symbol
  module: add support for symbol namespaces.
  modpost: add support for symbol namespaces
  module: add config option MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS
  export: allow definition default namespaces in Makefiles or sources
  modpost: add support for generating namespace dependencies
  scripts: Coccinelle script for namespace dependencies.
  docs: Add documentation for Symbol Namespaces
  usb-storage: remove single-use define for debugging
  usb-storage: export symbols in USB_STORAGE namespace

 .gitignore                                  |   1 +
 Documentation/kbuild/modules.rst            |   7 +-
 Documentation/kbuild/namespaces.rst         | 154 ++++++++++++++++++++
 Documentation/kernel-hacking/hacking.rst    |  18 +++
 MAINTAINERS                                 |   5 +
 Makefile                                    |  14 +-
 arch/m68k/include/asm/export.h              |   1 -
 drivers/usb/storage/Makefile                |   2 +
 drivers/usb/storage/alauda.c                |   1 +
 drivers/usb/storage/cypress_atacb.c         |   1 +
 drivers/usb/storage/datafab.c               |   1 +
 drivers/usb/storage/debug.h                 |   2 -
 drivers/usb/storage/ene_ub6250.c            |   1 +
 drivers/usb/storage/freecom.c               |   1 +
 drivers/usb/storage/isd200.c                |   1 +
 drivers/usb/storage/jumpshot.c              |   1 +
 drivers/usb/storage/karma.c                 |   1 +
 drivers/usb/storage/onetouch.c              |   1 +
 drivers/usb/storage/realtek_cr.c            |   1 +
 drivers/usb/storage/scsiglue.c              |   2 +-
 drivers/usb/storage/sddr09.c                |   1 +
 drivers/usb/storage/sddr55.c                |   1 +
 drivers/usb/storage/shuttle_usbat.c         |   1 +
 drivers/usb/storage/uas.c                   |   1 +
 include/asm-generic/export.h                |  14 +-
 include/linux/export.h                      |  98 +++++++++++--
 include/linux/module.h                      |   2 +
 init/Kconfig                                |  13 ++
 kernel/module.c                             |  67 ++++++++-
 scripts/Makefile.modpost                    |   4 +-
 scripts/coccinelle/misc/add_namespace.cocci |  23 +++
 scripts/export_report.pl                    |   2 +-
 scripts/mod/modpost.c                       | 150 ++++++++++++++++---
 scripts/mod/modpost.h                       |   9 ++
 scripts/nsdeps                              |  58 ++++++++
 35 files changed, 608 insertions(+), 52 deletions(-)
 create mode 100644 Documentation/kbuild/namespaces.rst
 create mode 100644 scripts/coccinelle/misc/add_namespace.cocci
 create mode 100644 scripts/nsdeps

-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190906103235.197072-1-maennich%40google.com.
