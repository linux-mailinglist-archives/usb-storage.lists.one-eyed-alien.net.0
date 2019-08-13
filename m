Return-Path: <usb-storage+bncBDMYPB44VAFRBINHZPVAKGQE5OFI4CI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x846.google.com (mail-qt1-x846.google.com [IPv6:2607:f8b0:4864:20::846])
	by mail.lfdr.de (Postfix) with ESMTPS id C782B8BCC6
	for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 17:13:38 +0200 (CEST)
Received: by mail-qt1-x846.google.com with SMTP id g33sf7709485qtc.14
        for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 08:13:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565709217; cv=pass;
        d=google.com; s=arc-20160816;
        b=GkluGt45aNAHwDErS5ppqhMx3lkYODAKuP/FeFURCXfdaP2KUqoxZfWdIODvBJMtkI
         RhSp7WB2DFkiAl64smDSGVY1MN0m/EqTY4+yIfh+M3qkGI4v4KZnzcm7Z9UIR4cHQw/8
         +jVmw3QmyNJZcGVHFRYSQBjol+muud9uqilRvTaF183+pTukmZJ6UfUhrxFYQ78bdw4T
         638hRhqLc5sLIJKKL6TE7ynLa2Ff6koBOQLt2J44bFM0PcZzsa85mED2XTxFxPwcs6EL
         jWLF2w6V3XhCS2M239p8RI6WQjytmCeZogQiBFOwd2rQgLKRX/JwsYgP8bCT0bHZVPBi
         Vihg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=wZvnk/jmwrWII3t87bq39tOZiqU0qw0Xqsp3nSJsu9I=;
        b=ybfdo/esLWHllNdikPJ5+HFmMZwxKPRQ4bCe9PkpKKoFKb00XDBwY0N1rAcaHTcqWR
         QmGkgS8E3NrpVnOOK+52jkkh1N7QXN1oK82cTuaWcBfTzG7kVwGhgUuGc8JtqKVEydLc
         WmVfRO+iGJcX6SVE3BQ3Z8TNOUiSbh5lI5WVhXSnB65BVHV21LYPvrHcUNLeVYlhoF/r
         p61QaoQOoO0MHlNqsSzDQpvsVDHsl4y68h7Jvnc9rTudtH48dDY3oQRUdsLXNlk06/oQ
         Q/mRJsIZ+cKG9XiqdFnAreByjsAnRvi0+/O6sDKy9Cp9sMkQehkHYzPKatv5f13va4Tn
         Qw3A==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jD9ZzgIf;
       spf=pass (google.com: domain of 3ukpsxqgkaekxlpyytnsrzzrwp.nzx@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3uKpSXQgKAEkxlpyytnsrzzrwp.nzx@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wZvnk/jmwrWII3t87bq39tOZiqU0qw0Xqsp3nSJsu9I=;
        b=cAWKaBHHYY9vU6R9cy2NnNSauOL4QwQ/tywwE6q+gFq5t7LJ9H0oCo8V6HJ7WOFI/D
         JBpEkP+uvgGfp7ExUSArJKFxfeAFgii+8A2zDXi/Sjidb/ajzguKzf/fnixrxaviBqg+
         l94P+diVtsl7v/unBE30sEhtFovJWmNABtB8g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=wZvnk/jmwrWII3t87bq39tOZiqU0qw0Xqsp3nSJsu9I=;
        b=Afm+aOr4jK5GeISgG59e2wIDwRr5JTg2fvnRjaaqrEsYkV6iATYqpbukotlBDo329e
         hfgG1na37dZYnPEtdG0LoWC/nlTlFXjtyLWCK346N0lUggRKfFeYd5HkLz11JTCWZmZ9
         G8c+aJzJGJF9DulIBN641cjSz0eqL4GhPQPuZ8gW4PVercvx8a/qhTS1mnPme5Gj+isW
         2q/b/5tmfhB5IjZTyee9dK/+lEwdir4I2LmfZ9vM7inWP9WTRodtks6y6TqW1YvsGmoN
         rjQ28z6Ub9VE7akuzMneKH6uI2iIFaRr11r9jPUOUabEU+eV7L737pNFmuptK/oXOjKW
         o2Xg==
X-Gm-Message-State: APjAAAUXIxASOe59fsXzHQP81EcZwD40jgwm7QVFZ5dyYI0BIpEXGEeX
	zRlcLk/UVGlb7+HoChzuAOUg2Q==
X-Google-Smtp-Source: APXvYqx8L4LQIBPYqkPwL+qKFLpCE4OKN60KK7ttjSL///ZulnRDbCoqj263Ms3JWGuvlKrOwQ7JZQ==
X-Received: by 2002:a37:4c4e:: with SMTP id z75mr17433842qka.195.1565709217706;
        Tue, 13 Aug 2019 08:13:37 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aed:3927:: with SMTP id l36ls5708778qte.15.gmail; Tue, 13
 Aug 2019 08:13:37 -0700 (PDT)
X-Received: by 2002:ac8:4691:: with SMTP id g17mr5515454qto.104.1565709217456;
        Tue, 13 Aug 2019 08:13:37 -0700 (PDT)
Received: by 2002:a05:620a:1410:0:0:0:0 with SMTP id d16msqkj;
        Tue, 13 Aug 2019 05:19:05 -0700 (PDT)
X-Received: by 2002:a37:9582:: with SMTP id x124mr8865011qkd.269.1565698745514;
        Tue, 13 Aug 2019 05:19:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565698745; cv=none;
        d=google.com; s=arc-20160816;
        b=CW492c+DhhWWbYXp0yODojzyLDSTW895cXD3eLWpYFcfFPhUWDklYKloYZuYeQTuUU
         VTvJHQxGQcnGznxJvnyowS9Pi/3aKKqt75cgqCDf4kG+NBPVCw7FeFTA9kFqie3MR2kl
         cUwxhiLVHeSd6lNcE/bK7qT/6ZqHzTTvEV1XACqZX6JIooVVhn1auBL1eGfisWpT9OSK
         BZmVbuCfsJs0qYdJ9zh+5d3kqIBdRa/bcG7JBPGgfB2WkhRINglNa0RjtKRhU61Ab7aK
         +a5rDj3gkQgkL8TaCbxU3qrcz5iItznqyh0eGPU8tY4M9mpEp3n/KIL68AW2Qs5GBvGr
         hCgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=6PgFwT5ybpsMvR73n2NchUIwCDCLdMXSL/zekwZUPV0=;
        b=hUE02v9Yc4TlMNYy9sfF5FnyhGS5BGLzb62wD8L4cK+b87zJCyceV9q9g5GQcTAU/C
         pkyn8lQX2VL+a3DSm5x89NDdDSZOIPAoMG99kVgvXV5MFHaGgwt4uQ0NXW3EY7qOzKiE
         trlgiS/1tnknMGZVlhW9RVYsKK3poZ9NTPmgh9hUSP1BGDDOLb1uZTGetHM5lqP1nKND
         d1bFSgpP76xXXDBmHcgjJ8ye+0RDPg+WMPZ9aKTJ10zex6hO8KKR7ZZx+kzVwwnkg1MC
         8fszB+e90dG/6LZrcHHBAPrKS7oso0GH21H2guht9rwArUHO5NmE6f6yxTnfqb1w0PrT
         KeEg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jD9ZzgIf;
       spf=pass (google.com: domain of 3ukpsxqgkaekxlpyytnsrzzrwp.nzx@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3uKpSXQgKAEkxlpyytnsrzzrwp.nzx@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id u36sor15126266qvg.34.2019.08.13.05.19.05
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 13 Aug 2019 05:19:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ukpsxqgkaekxlpyytnsrzzrwp.nzx@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:a0c:e28e:: with SMTP id r14mr11313674qvl.32.1565698744842;
 Tue, 13 Aug 2019 05:19:04 -0700 (PDT)
Date: Tue, 13 Aug 2019 13:16:57 +0100
In-Reply-To: <20180716122125.175792-1-maco@android.com>
Message-Id: <20190813121733.52480-1-maennich@google.com>
Mime-Version: 1.0
References: <20180716122125.175792-1-maco@android.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [usb-storage] [PATCH v2 0/10] Symbol namespaces - RFC
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
	yamada.masahiro@socionext.com, Adrian Reber <adrian@lisas.de>, 
	Andrew Morton <akpm@linux-foundation.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	cocci@systeme.lip6.fr, Dan Williams <dan.j.williams@intel.com>, 
	David Howells <dhowells@redhat.com>, "David S. Miller" <davem@davemloft.net>, 
	Ingo Molnar <mingo@kernel.org>, Johannes Weiner <hannes@cmpxchg.org>, 
	Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, Michael Ellerman <mpe@ellerman.id.au>, 
	Nicolas Ferre <nicolas.ferre@microchip.com>, Patrick Bellasi <patrick.bellasi@arm.com>, 
	Richard Guy Briggs <rgb@redhat.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jD9ZzgIf;       spf=pass
 (google.com: domain of 3ukpsxqgkaekxlpyytnsrzzrwp.nzx@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=3uKpSXQgKAEkxlpyytnsrzzrwp.nzx@flex--maennich.bounces.google.com;
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

As of Linux 5.3-rc4, there are 31203 [1] exported symbols in the kernel.
That is a growth of almost 1000 symbols since 4.17 (30206 [2]).  There
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

I continued the work mainly done by Martijn Coenen. In this v2 the
following changes have been introduced compared to v1 of this series:

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
  relaxing the enforcement of properly declared namespace imports at module
  loading time.
- Symbols can be collectively exported into a namespace by defining
  DEFAULT_SYMBOL_NAMESPACE in the corresponding Makefile.
- The requirement for a very recent coccinelle spatch has been lifted by
  simplifying the script.
- nsdeps does now ensures MODULE_IMPORT_NS statements are sorted when
  patching the module source files.
- Some minor bugs have been addressed in nsdeps to allow it to work with
  modules that have more than one source file.
- The RFC for the usb-storage symbols has been simplified by using
  DEFAULT_SYMBOL_NAMESPACE=USB_STORAGE rather than explicitly exporting each
  and every symbol into that new namespace.

This patch series was developed against v5.3-rc4.

[1] git grep "^EXPORT_SYMBOL\w*(" v5.3-rc4 | wc -l
[2] git grep "^EXPORT_SYMBOL\w*(" v4.17    | wc -l

Matthias Maennich (10):
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

 MAINTAINERS                                 |   5 +
 Makefile                                    |  12 ++
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
 include/linux/export.h                      |  92 +++++++++++--
 include/linux/module.h                      |   2 +
 init/Kconfig                                |  14 ++
 kernel/module.c                             |  67 ++++++++-
 scripts/Makefile.modpost                    |   4 +-
 scripts/coccinelle/misc/add_namespace.cocci |  23 ++++
 scripts/mod/modpost.c                       | 144 ++++++++++++++++++--
 scripts/mod/modpost.h                       |   9 ++
 scripts/nsdeps                              |  54 ++++++++
 30 files changed, 421 insertions(+), 40 deletions(-)
 create mode 100644 scripts/coccinelle/misc/add_namespace.cocci
 create mode 100644 scripts/nsdeps

-- 
2.23.0.rc1.153.gdeed80330f-goog

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190813121733.52480-1-maennich%40google.com.
