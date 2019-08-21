Return-Path: <usb-storage+bncBDMYPB44VAFRBXPB6TVAKGQEY6GFAVI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-vs1-xe48.google.com (mail-vs1-xe48.google.com [IPv6:2607:f8b0:4864:20::e48])
	by mail.lfdr.de (Postfix) with ESMTPS id A124D9785C
	for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 13:54:07 +0200 (CEST)
Received: by mail-vs1-xe48.google.com with SMTP id w12sf620662vsl.17
        for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 04:54:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566388446; cv=pass;
        d=google.com; s=arc-20160816;
        b=WyDN2lIXXvFRdbwravLnDRSXbk06rpJAPN7BFAbNDEIsG5UiNBow6/b9eaMzRHq+Zr
         6WtydQVoaSk26lFqsF2XqS8rnGQE6tSK7eMgHjNe9ZBKX1OGzwkRtsTR0rDkB/9SbzGs
         NYYYngy6rKxEgt1pT2/y4Lws46rlKSa3hFaNWSi5jkMl6D5qorh6f/tVU102/rbu8yfe
         amNJiKcHLTsNNyl8lh7RKLxgtshTJEyWXtRzmBt9CRM4wDR6pW1rb10vWTFcJi2DQtAV
         yua9F4AtGcFt5GncptoioZnPrAADJ/eDRCrwpZbhC1o9cwtktdreO7dQsdXro5c99ZMU
         RH2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=ShT60QX3dhx0uiTwhhzWAwzj47DcO2DbVIbPaHMT2FQ=;
        b=yi71mOoJxO+qEJRMFctQgwxiRFiq3ZzZ6O3su1puM0Qa3iRaZa0gEwOvP976otuuc9
         ITU/PbQX5GWMDrefrv84MpNzL1hhKNLLB6s4VVgFEdTS4flofKY/DSjaWGExkC7DXRi4
         J3CvkTNRImZ+iJxMQNZ+J8QDgkpILrDPnyV8t9DoUM4YwE7f0z/8Os468nnr9/O0Ft05
         bF80VJsCHN6yk6/MLuiSx/zRyDNCUG650OywCbawf/pbzvXNHIGgAljPIo+4EM5tjj9J
         h4UqeFUe8F2BSmcJdxBekbRODAl/arMNRSnZYvjrqSmbXtuHyACS9D70pUy7gVgC718O
         eJsA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aFsPSold;
       spf=pass (google.com: domain of 33dbdxqgkakmpdhqqlfkjrrjoh.frp@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=33DBdXQgKAKMPDHQQLFKJRRJOH.FRP@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ShT60QX3dhx0uiTwhhzWAwzj47DcO2DbVIbPaHMT2FQ=;
        b=ItUmUf10hwrrWmdG81xNK9WI3JUmidfjeAtd27ZeOS0uGiUdJ1p28hy6Q5784a61DO
         Pud7Q7lk1zQNMQxiYMLQH5eeYlimbEfUKcDJrkndtm/C1c7tDpI4/Dgc2KAVLIoY/rDV
         8U2u3A2EZ5zG0H6t6a5Hfu5nx64Ab608gUJpY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ShT60QX3dhx0uiTwhhzWAwzj47DcO2DbVIbPaHMT2FQ=;
        b=RidKfl//6fyb74KExmGcoPS83AhPNnqH+0QKMFe4mPrhFrnVkdox09169LLNcWfX6N
         AivCZGzJkTsrzKM72aHKMgwL5/3wOLcMF7tDwEFsmVBk4tqLU+S/F7oVSoMZGnOaHfSu
         F6Ymn2a8IDr7V2hgi9lAoYtntHOvM4umr575VQiJVKP/5a+mmuZVyGUsWlA4T0UkvXz1
         MFW3Z8Is5rK/ZFB4FdKSGrxnv7Ml7nO6vvGzAFwBQLyzluaptalprx3M2yAl/+WbvIgQ
         kMs1tdUT6nT7BlzsI7gAaorUhBwhVc/otdiDv79E9PuZbkW+5P50MLzTI3+rvnvXlKUa
         qH4g==
X-Gm-Message-State: APjAAAUQLTyhX0NVSfj26bZzDkg3U6/S4Yq1rHRu8gB32f6RgjBexvRj
	0K6E9OXyk402XIFsECNp1UTI8w==
X-Google-Smtp-Source: APXvYqysLpYSVF9liyQCfVYzNb33fz1pOIEX1ke12bdan5Xq9vqWGkQH9HsrEN1lZlxjxXdVI1SRvg==
X-Received: by 2002:ab0:210f:: with SMTP id d15mr1979163ual.129.1566388446099;
        Wed, 21 Aug 2019 04:54:06 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a67:ae4e:: with SMTP id u14ls220017vsh.6.gmail; Wed, 21 Aug
 2019 04:54:05 -0700 (PDT)
X-Received: by 2002:a67:fb90:: with SMTP id n16mr20844193vsr.7.1566388445725;
        Wed, 21 Aug 2019 04:54:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566388445; cv=none;
        d=google.com; s=arc-20160816;
        b=zwdxC+3TiAZIjpnVzbwTUIQfowzf4dlrsVbYmIEFzutr83GRpeq15BZFIoIPvFDSxh
         NoyyjIc+OT8Kz2mZqkB7xOZ423x9IHlE+ZLfAUNZtcQdF2eUkb/s9wCZXiOs/o6ygP61
         7lQ7tras8rFPLWfTXS/UY55h0COOIQj+Puyb3FfMuCGXjVjDwyD5ayxwhN+AeQlcguhG
         0ZSRHaDbWvwYpxI3fFr8d5Mn/j6RwoEopuBbcotnaUGnBLZKleGc9eYbhlEA7POp08An
         HPMEl4TxNrK0DKdr+CZQ01LsIX6AcGPm4KQ7VmwAQQxkax0lmxE/zxTd82RT5vQO0iRC
         DD/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=dbeW0AhXXR+v+YpCW2kANc+N3K5c0SZUYgqqbrZZvE4=;
        b=ki5ilErxyUVLVj3Xkza4d3Bg/myaKhXrzvdBUy8t7vFotp4nYaACmzKSkQkliG9YNV
         WlF2DpoC78JIx3cQcQSRtvIJ82w0P5GzIf1xuKF0t3MLXlyHmpr+OJjgBFr4gPyZS9CO
         AgBkTHy0aKESKEkOpRGn9rsqsTGpjqwwLQanxHr+UytYeqp9UR5nn4h6UHbjibW+Qj8c
         mWvnVMaR1EZlt0B14t5Mgw/g/3/S8W6+VBHvmw5GraIxh6E3/sSzz2XElzz6nuri8Q1E
         LhQSCq5JzwJ92W5XJVxw9erJCq2whSX+WDkNqqIwnQcHHSuBdYM5vbEOON0Un7d29gz4
         q7yw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aFsPSold;
       spf=pass (google.com: domain of 33dbdxqgkakmpdhqqlfkjrrjoh.frp@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=33DBdXQgKAKMPDHQQLFKJRRJOH.FRP@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id s67sor7031408vka.3.2019.08.21.04.54.05
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 21 Aug 2019 04:54:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of 33dbdxqgkakmpdhqqlfkjrrjoh.frp@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:a1f:3887:: with SMTP id f129mr12005868vka.15.1566388444681;
 Wed, 21 Aug 2019 04:54:04 -0700 (PDT)
Date: Wed, 21 Aug 2019 12:49:15 +0100
In-Reply-To: <20190813121733.52480-1-maennich@google.com>
Message-Id: <20190821114955.12788-1-maennich@google.com>
Mime-Version: 1.0
References: <20190813121733.52480-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [usb-storage] [PATCH v3 00/11] Symbol Namespaces
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
	yamada.masahiro@socionext.com, Adrian Reber <adrian@lisas.de>, 
	Alexey Gladkov <gladkov.alexey@gmail.com>, Andrew Jeffery <andrew@aj.id.au>, 
	Andrew Morton <akpm@linux-foundation.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	bcm-kernel-feedback-list@broadcom.com, 
	Benjamin Fair <benjaminfair@google.com>, cocci@systeme.lip6.fr, 
	Dan Williams <dan.j.williams@intel.com>, David Howells <dhowells@redhat.com>, 
	"David S. Miller" <davem@davemloft.net>, Fabio Estevam <festevam@gmail.com>, 
	Gleb Fotengauer-Malinovskiy <glebfm@altlinux.org>, Ingo Molnar <mingo@kernel.org>, 
	Jani Nikula <jani.nikula@intel.com>, Johannes Weiner <hannes@cmpxchg.org>, 
	Julia Lawall <julia.lawall@lip6.fr>, linux-amlogic@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
	linux-aspeed@lists.ozlabs.org, linux-hwmon@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org, 
	linux-rtc@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-tegra@vger.kernel.org, 
	linux-watchdog@vger.kernel.org, 
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, Michael Ellerman <mpe@ellerman.id.au>, 
	Nancy Yuen <yuenn@google.com>, Nicolas Ferre <nicolas.ferre@microchip.com>, 
	Nicolas Pitre <nico@fluxnic.net>, NXP Linux Team <linux-imx@nxp.com>, openbmc@lists.ozlabs.org, 
	patches@opensource.cirrus.com, Patrick Bellasi <patrick.bellasi@arm.com>, 
	Patrick Venture <venture@google.com>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Richard Guy Briggs <rgb@redhat.com>, Tejun Heo <tj@kernel.org>, Toru Komatsu <k0ma@utam0k.jp>, 
	Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=aFsPSold;       spf=pass
 (google.com: domain of 33dbdxqgkakmpdhqqlfkjrrjoh.frp@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=33DBdXQgKAKMPDHQQLFKJRRJOH.FRP@flex--maennich.bounces.google.com;
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

As of Linux 5.3-rc5, there are 31205 [1] exported symbols in the kernel.
That is a growth of roughly 1000 symbols since 4.17 (30206 [2]).  There
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

This patch series was developed against Linus' master (15d90b242290).

[1] git grep "^EXPORT_SYMBOL\w*(" v5.3-rc5 | wc -l
[2] git grep "^EXPORT_SYMBOL\w*(" v4.17    | wc -l


Matthias Maennich (11):
  module: support reading multiple values per modinfo tag
  export: explicitly align struct kernel_symbol
  module: add support for symbol namespaces.
  modpost: add support for symbol namespaces
  module: add config option MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS
  export: allow definition default namespaces in Makefiles or sources
  modpost: add support for generating namespace dependencies
  scripts: Coccinelle script for namespace dependencies.
  usb-storage: remove single-use define for debugging
  RFC: usb-storage: export symbols in USB_STORAGE namespace
  RFC: watchdog: export core symbols in WATCHDOG_CORE namespace

 .gitignore                                  |   1 +
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
 include/linux/export.h                      |  92 +++++++++++--
 include/linux/module.h                      |   2 +
 init/Kconfig                                |  13 ++
 kernel/module.c                             |  67 +++++++++-
 scripts/Makefile.modpost                    |   4 +-
 scripts/coccinelle/misc/add_namespace.cocci |  23 ++++
 scripts/mod/modpost.c                       | 137 ++++++++++++++++++--
 scripts/mod/modpost.h                       |   9 ++
 scripts/nsdeps                              |  56 ++++++++
 114 files changed, 504 insertions(+), 46 deletions(-)
 create mode 100644 scripts/coccinelle/misc/add_namespace.cocci
 create mode 100644 scripts/nsdeps

-- 
2.23.0.rc1.153.gdeed80330f-goog

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190821114955.12788-1-maennich%40google.com.
