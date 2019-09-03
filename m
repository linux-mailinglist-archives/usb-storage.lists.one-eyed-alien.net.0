Return-Path: <usb-storage+bncBDMYPB44VAFRBHMDXLVQKGQEST5EWUA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x846.google.com (mail-qt1-x846.google.com [IPv6:2607:f8b0:4864:20::846])
	by mail.lfdr.de (Postfix) with ESMTPS id B7746A6C36
	for <lists+usb-storage@lfdr.de>; Tue,  3 Sep 2019 17:07:10 +0200 (CEST)
Received: by mail-qt1-x846.google.com with SMTP id e2sf19237640qtm.19
        for <lists+usb-storage@lfdr.de>; Tue, 03 Sep 2019 08:07:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567523229; cv=pass;
        d=google.com; s=arc-20160816;
        b=xy8gJCT6D7GaTRmqsAeLVr7Hu51L3sUuLCjh92VhWLh1sUBottMMmUDnof/FRWrmTp
         CzDM7vHGlkZ/6dWp6DhRLuMMGsnYQSSdBvP6Qz5H9HLlYVAcjiB3W8ExQ9yX5X6HYSPK
         3L+048foWbNEUAWgWWQN6YP+U9v35+eY1GAlAmjhVOwvl3icImpRdCWpLaAoadHDHuqJ
         RGdloJafbM6B+4H9T1uLehtI0n6sJ1N1kHdpILDqr1WUSNtBd5w78fgh3WDshnj65RdN
         rtRlxW1qSB8AWwYslguQqOtXaBux2Av17n7ONl8s+4tG76xhHRtGz5VrpZzfmkPX87+E
         sBQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=m2rJTL9aoLTvs44HyY4sfFOXg1X3y6zeywv/ABeowz4=;
        b=ym+mmjSiudxnI1TTcN5WIAVQLFmC/AGBwYlr3i2AJm2cf92gUVzXtHFkSTHjEDAArQ
         9eJp/6dnhNXmJdrJIaZm348Cr0K5NySCP5Birxbv99DdC3Zlv4Bx+QfHOE/MntmzKiXi
         gpkpsoGJx++8c4wn6Qq7s3K15A309QwyM0vEZHpIzRKTscAERKcr6yx/w/V+g9jmpRLa
         BT7kwcVdL8Tg25oxXZENXfp8fROx9yjonJiyhNT5HH/OqbtNzIGbv34MTQ1BOdFWSSi4
         Pa6ay76x2TzeNblRPMQ1IikuG9aigbpZgWyv73zalxOQuq8UEsV9UlzEU/qfOFGxRKrF
         FADg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="W1kHB/tZ";
       spf=pass (google.com: domain of 3nifuxqgkaesznr00vput11tyr.p1z@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3nIFuXQgKAEsznr00vput11tyr.p1z@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m2rJTL9aoLTvs44HyY4sfFOXg1X3y6zeywv/ABeowz4=;
        b=Q+l1LEgTMZpDubXNa1+e4CCLJSIDIkmiIFjkKtH7/3Gcv0XmFDsrx1LedfOjRGMBex
         D/np5prF41ciWJCtsd08wOfFooZwfztzdOgIRHAzjHWzbL76+yvLlIJstsq2/lFnBoJm
         g3pFUqjvaq8GJi7b7fPzyk2UtTlFcuscj5wIo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m2rJTL9aoLTvs44HyY4sfFOXg1X3y6zeywv/ABeowz4=;
        b=BU87AE2sXudnVmqwVs11UkaJ42gRy+rNdusx3TIBFdPZeMok3642FBV6inBln92Gv1
         7/gJkob+G/Har8FPHLNQc5f2u1U/R7G01lmNwQcNqH3iEdmjTH4EAteViWPA1kibMcGK
         VgA+xMA2sMWsLU9EfzJfNLxIC2MMm61hFc/Q3W5UIJymSK8dcNc4QY7bxQ5JSCqlCpnv
         iNeNJNOb34vBHfRs7kBAH6oimpsDEEngRlf89DN1cBLHj5xlKDwweIRtqQzUrUsr1uz3
         PZky5p0AnHuIkpFpD7jOhId8q3J0C1SH/5gd1kR7aa4nN3USOZAgn+LkL+UsIQ4010Y1
         1Agg==
X-Gm-Message-State: APjAAAUwTClyGSQ1amQi+9GKaRiPv2qBS0Lw6pim+vpUYem/JFfrZBLz
	nuD2G6CLOffx0+I+lKLK7RmyBw==
X-Google-Smtp-Source: APXvYqx0i8S6taSauHHo8rwIxYSMp+b3iYKZxTAqgerti3xD1qQKvPfJcPRFmHe/hhrr4fTdchqMxg==
X-Received: by 2002:ac8:27fd:: with SMTP id x58mr35248624qtx.112.1567523229694;
        Tue, 03 Sep 2019 08:07:09 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:102:: with SMTP id e2ls4313247qtg.2.gmail; Tue, 03 Sep
 2019 08:07:09 -0700 (PDT)
X-Received: by 2002:aed:3b62:: with SMTP id q31mr3574480qte.246.1567523229190;
        Tue, 03 Sep 2019 08:07:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567523229; cv=none;
        d=google.com; s=arc-20160816;
        b=s5Z6SPnempchNKyGGzqRsiqHvkU5uobQuvGWNlcgKoaWwyhmDaphAkkli6Ld0Z6rRB
         QwI1P0k/4ncNVRE+bHab8JXM6rAMVdq6zLK+/f5GlnpWUjRDViskU0N9q/actuUobu5r
         vcitqKXA6SA2yC5mrdaynnKbrdKNmp9dioMq6kPrZO5Z4TyMuYt6/bDOTM4Bk6k5F3b6
         8oWxUlp+idd5+LNQYrcwnc+bbltu5EBasjWW9IFHGjHUpSp18Sl8eHaw2ZJiY8d9r/Ve
         jNoUSIRq8qW+yynPAP/4ZfFw8d7XO+j7Wye1sgU2zH+dokSysYrJiyn63geOsAYTei2y
         nUIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=hNr8T/9gNzuEDlnpxznbVrBSAUbvdXRiy1rCWsF0n2E=;
        b=BkGsGttLjvSsS2jorvNzPAEtAnsEbHr7bDaMmGb2w2T3oyXUuB0WeUbwRi1i6sWlKr
         bMszjpVlyNZu25i3NJFVhgqa5kXPuV43k2X8fPB/3tdMh0O1m+FT0kqdQEPongmXy/VB
         8rCSNEmwj9BIgP0IuTbMOGKSMwafUdX/aYP51f29Kg6IbtScJbOQ2PZNA2iux658C8Pm
         cgvsbzG/mgN7tz3MKhFRKYVKojDKj+267JtvEG+VhMz24o6bnNe9DMAnizh1DnXyN7KY
         693BOzAanEYoOYXQv9/las33kHte8ntDDaiwnA1cgyMXdAYXTEajzuWhYfWEFwPGiqFZ
         XqQg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="W1kHB/tZ";
       spf=pass (google.com: domain of 3nifuxqgkaesznr00vput11tyr.p1z@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3nIFuXQgKAEsznr00vput11tyr.p1z@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id h15sor12439138qvy.27.2019.09.03.08.07.09
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 03 Sep 2019 08:07:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3nifuxqgkaesznr00vput11tyr.p1z@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:a05:6214:1369:: with SMTP id c9mr13911042qvw.3.1567523228617;
 Tue, 03 Sep 2019 08:07:08 -0700 (PDT)
Date: Tue,  3 Sep 2019 16:06:26 +0100
In-Reply-To: <20180716122125.175792-1-maco@android.com>
Message-Id: <20190903150638.242049-1-maennich@google.com>
Mime-Version: 1.0
References: <20180716122125.175792-1-maco@android.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [usb-storage] [PATCH v4 00/12] Symbol Namespaces
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
 header.i=@google.com header.s=20161025 header.b="W1kHB/tZ";       spf=pass
 (google.com: domain of 3nifuxqgkaesznr00vput11tyr.p1z@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=3nIFuXQgKAEsznr00vput11tyr.p1z@flex--maennich.bounces.google.com;
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

The series contains two RFC patches that do not need to be merged along
with the rest of the series, but they serve as a reference for using the
symbol namespaces. Especially, the watchdog subsystem might not be
affected by the issues addressed by Symbol Namespaces. I left the patch
in for reference anyway for demonstration purposes.

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
- scripts/mod/modpost: make the namespace a separate field when
  exporting to Module.symvers (rather than symbol.NS)
- scripts/export_report.pl: update for new Module.symvers format
- include/linux/export.h: fixed style nits
- kernel/module.c: ensure namespaces are imported before taking a
  reference to the owner module
- Documentation: document the Symbol Namespace feature and update
  references to Module.symvers and EXPORT_SYMBOL*

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
Cc: linux-watchdog@vger.kernel.org


Matthias Maennich (12):
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
  RFC: usb-storage: export symbols in USB_STORAGE namespace
  RFC: watchdog: export core symbols in WATCHDOG_CORE namespace

 .gitignore                                  |   1 +
 Documentation/kbuild/modules.rst            |   7 +-
 Documentation/kbuild/namespaces.rst         | 154 ++++++++++++++++++++
 Documentation/kernel-hacking/hacking.rst    |  18 +++
 MAINTAINERS                                 |   5 +
 Makefile                                    |  14 +-
 arch/m68k/include/asm/export.h              |   1 -
 drivers/hwmon/ftsteutates.c                 |   1 +
 drivers/hwmon/sch56xx-common.c              |   1 +
 drivers/rtc/rtc-abx80x.c                    |   1 +
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
 drivers/watchdog/armada_37xx_wdt.c          |   1 +
 drivers/watchdog/asm9260_wdt.c              |   1 +
 drivers/watchdog/aspeed_wdt.c               |   1 +
 drivers/watchdog/at91sam9_wdt.c             |   1 +
 drivers/watchdog/atlas7_wdt.c               |   1 +
 drivers/watchdog/bcm2835_wdt.c              |   1 +
 drivers/watchdog/bcm47xx_wdt.c              |   1 +
 drivers/watchdog/bcm7038_wdt.c              |   1 +
 drivers/watchdog/bcm_kona_wdt.c             |   1 +
 drivers/watchdog/bd70528_wdt.c              |   1 +
 drivers/watchdog/cadence_wdt.c              |   1 +
 drivers/watchdog/da9052_wdt.c               |   1 +
 drivers/watchdog/da9055_wdt.c               |   1 +
 drivers/watchdog/da9062_wdt.c               |   1 +
 drivers/watchdog/da9063_wdt.c               |   1 +
 drivers/watchdog/davinci_wdt.c              |   1 +
 drivers/watchdog/digicolor_wdt.c            |   1 +
 drivers/watchdog/dw_wdt.c                   |   1 +
 drivers/watchdog/ebc-c384_wdt.c             |   1 +
 drivers/watchdog/ep93xx_wdt.c               |   1 +
 drivers/watchdog/ftwdt010_wdt.c             |   1 +
 drivers/watchdog/gpio_wdt.c                 |   1 +
 drivers/watchdog/hpwdt.c                    |   1 +
 drivers/watchdog/i6300esb.c                 |   1 +
 drivers/watchdog/iTCO_wdt.c                 |   1 +
 drivers/watchdog/ie6xx_wdt.c                |   1 +
 drivers/watchdog/imgpdc_wdt.c               |   1 +
 drivers/watchdog/imx2_wdt.c                 |   1 +
 drivers/watchdog/intel-mid_wdt.c            |   1 +
 drivers/watchdog/it87_wdt.c                 |   1 +
 drivers/watchdog/kempld_wdt.c               |   1 +
 drivers/watchdog/lpc18xx_wdt.c              |   1 +
 drivers/watchdog/max63xx_wdt.c              |   1 +
 drivers/watchdog/max77620_wdt.c             |   1 +
 drivers/watchdog/mei_wdt.c                  |   1 +
 drivers/watchdog/mena21_wdt.c               |   1 +
 drivers/watchdog/menf21bmc_wdt.c            |   1 +
 drivers/watchdog/menz69_wdt.c               |   1 +
 drivers/watchdog/meson_gxbb_wdt.c           |   1 +
 drivers/watchdog/meson_wdt.c                |   1 +
 drivers/watchdog/mlx_wdt.c                  |   1 +
 drivers/watchdog/moxart_wdt.c               |   1 +
 drivers/watchdog/mtk_wdt.c                  |   1 +
 drivers/watchdog/ni903x_wdt.c               |   1 +
 drivers/watchdog/nic7018_wdt.c              |   1 +
 drivers/watchdog/npcm_wdt.c                 |   1 +
 drivers/watchdog/of_xilinx_wdt.c            |   1 +
 drivers/watchdog/omap_wdt.c                 |   1 +
 drivers/watchdog/pm8916_wdt.c               |   1 +
 drivers/watchdog/qcom-wdt.c                 |   1 +
 drivers/watchdog/rave-sp-wdt.c              |   1 +
 drivers/watchdog/renesas_wdt.c              |   1 +
 drivers/watchdog/retu_wdt.c                 |   1 +
 drivers/watchdog/rn5t618_wdt.c              |   1 +
 drivers/watchdog/rza_wdt.c                  |   1 +
 drivers/watchdog/s3c2410_wdt.c              |   1 +
 drivers/watchdog/sama5d4_wdt.c              |   1 +
 drivers/watchdog/sirfsoc_wdt.c              |   1 +
 drivers/watchdog/softdog.c                  |   1 +
 drivers/watchdog/sp5100_tco.c               |   1 +
 drivers/watchdog/sprd_wdt.c                 |   1 +
 drivers/watchdog/st_lpc_wdt.c               |   1 +
 drivers/watchdog/stmp3xxx_rtc_wdt.c         |   1 +
 drivers/watchdog/stpmic1_wdt.c              |   1 +
 drivers/watchdog/sunxi_wdt.c                |   1 +
 drivers/watchdog/tangox_wdt.c               |   1 +
 drivers/watchdog/tegra_wdt.c                |   1 +
 drivers/watchdog/tqmx86_wdt.c               |   1 +
 drivers/watchdog/ts4800_wdt.c               |   1 +
 drivers/watchdog/ts72xx_wdt.c               |   1 +
 drivers/watchdog/twl4030_wdt.c              |   1 +
 drivers/watchdog/uniphier_wdt.c             |   1 +
 drivers/watchdog/via_wdt.c                  |   1 +
 drivers/watchdog/w83627hf_wdt.c             |   1 +
 drivers/watchdog/watchdog_core.c            |  10 +-
 drivers/watchdog/wdat_wdt.c                 |   1 +
 drivers/watchdog/wm831x_wdt.c               |   1 +
 drivers/watchdog/wm8350_wdt.c               |   1 +
 drivers/watchdog/xen_wdt.c                  |   1 +
 drivers/watchdog/ziirave_wdt.c              |   1 +
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
 scripts/nsdeps                              |  60 ++++++++
 118 files changed, 697 insertions(+), 57 deletions(-)
 create mode 100644 Documentation/kbuild/namespaces.rst
 create mode 100644 scripts/coccinelle/misc/add_namespace.cocci
 create mode 100644 scripts/nsdeps

-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190903150638.242049-1-maennich%40google.com.
