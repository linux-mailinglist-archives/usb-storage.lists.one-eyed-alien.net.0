Return-Path: <usb-storage+bncBD45FSE2XIORBVE53DVQKGQETRMX6YQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x446.google.com (mail-pf1-x446.google.com [IPv6:2607:f8b0:4864:20::446])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E95AD4EE
	for <lists+usb-storage@lfdr.de>; Mon,  9 Sep 2019 10:35:34 +0200 (CEST)
Received: by mail-pf1-x446.google.com with SMTP id v3sf3436994pff.4
        for <lists+usb-storage@lfdr.de>; Mon, 09 Sep 2019 01:35:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568018133; cv=pass;
        d=google.com; s=arc-20160816;
        b=XoqMrOxxmI0rndCv8kg9pcSQNLKee+SfOjSsmu2eHuEzqJ+ocJXovg+xxGfoKsz8il
         12s/d68CRE/RyfQVT/GDV5GpIH/KwLZQFYB0lyLuPD8D5+TsZks9NuEexYvZzNqcxtqN
         I/OrzisKaurCvN3OF+0MinwrxNpCrXjiJ11xldtPNXmTD9HqXtHpk6pGafFkmKfwTWqH
         e2eWLVt9Z2bcTRjjoFwZZEOxjQPhiE9yfNXCaL55xp46s92J4FA/f9x7GMkUj6b2nXKq
         l8s4n4yWuZbSgUgpbAvBfxfDcm4XTAkf0zjtMaYD9S9yKHLN73JgH0NHaJdTerxDv6YG
         XI9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=qPhX8GR3neuR/hkouMRWAhI2edkVf8b5AMLLhpx/y/0=;
        b=zodqz2NKLSp8T6Z1hPv7BtTNsrJc98RnSljXKP1nJbHFMcxlG8cxz2qkJDDHtviXiK
         HIyc1iZrtUtGtGqgQbW8O/sBZQEGNqp6yi3oI8u0o3G62+W8rj46K/D1pdu9XCoZnjCk
         L8kHQU0qiAO4pfTwNjiR01JI2+iV88nrP/l4HoxH9z6BqATtx5Po0xUtQ3ddSxagHP1/
         vuT1O45hGsIVLdGYfSpUT96TVFVVyAhrmvnTygJdBq7/LfkWzRQblU3tNEkz2s4Jy4qB
         NInkbAO3ZKXU6wdV4n2ZGi+rHsp6J+ZOiNcZ+bqGkHiacwu8AVunkKojfx4I3RWBYNkX
         Huqg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=TZcrEX8X;
       spf=pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jeyu@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qPhX8GR3neuR/hkouMRWAhI2edkVf8b5AMLLhpx/y/0=;
        b=T3SvriQvA7SVfdMUPTsjV7NmmCBdhRxwgEADmGiMfWemJiFnAeBBGnmpk2y5LZ+zVp
         QUARmZaML1Aoacq1/24HTiEdVVpq/+daDtJKgSEvNBqKOBXbuQrGS1Z5NzwRdzSh2aJr
         VI8Lbb80Q9mvR9v8TaHkLoe8Dg3JNTK+l+Wv8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qPhX8GR3neuR/hkouMRWAhI2edkVf8b5AMLLhpx/y/0=;
        b=mMolYmBNVw+uKubNxMU6Ixcc3PauQynftiOkDepTZUfXeBxL7w0OWqUJMfIEVO1SSe
         0YG5Cu/yv6iFzNjWxSowNOPxUQ1XA4JZyTYWfQ5AAxjnJOynbhTJqryk8uiPLBdpSvxR
         nZG+nn6rGkF9fD5IZNd+Z8wzOGlD6WDfcO8skjgAXnrofot+RdElP1rE+OxY5Irpg3W0
         jLyWxNy9uKol7gYTUSi7T1WVexV6dcIlXRHIOiA2KIWM53mOtoGZtAFHvLJ9OF59dvNF
         HvSOiyB+cZZZ0GpPVuxIMp0lQ3HVqRl8IWPesgI4jQ7JuUyB4Acp13rzy8ECSbQfem38
         ishg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUy1QGr/LXf+SpWlStJQN+rQGjFbhdRoSfhHcxlbAJEMIrgRJn1
	w4cJhMA8ZLdhiBKtpzw77dP6ag==
X-Google-Smtp-Source: APXvYqwpF8tQ3eDHYcQX67I3DNgcA3DiJFukJHFqEorlY3MQtIvpc68dsOGmYPqB1xDw+FfkFwhNBw==
X-Received: by 2002:a17:90a:af81:: with SMTP id w1mr24432020pjq.143.1568018133038;
        Mon, 09 Sep 2019 01:35:33 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:d80c:: with SMTP id a12ls1974798plz.15.gmail; Mon,
 09 Sep 2019 01:35:32 -0700 (PDT)
X-Received: by 2002:a17:902:a70c:: with SMTP id w12mr23293901plq.288.1568018132518;
        Mon, 09 Sep 2019 01:35:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568018132; cv=none;
        d=google.com; s=arc-20160816;
        b=rQ8Cd034t1mWBVOc+RAXnDp0YteqRi2kyQN1tNPjX5yIXQwrGnV+ryNsyw9rSgSqkh
         GxIbghKcpufv7ESB+z+G/SZeWT/ekhQGiJHUplDLxnMqcfcKmymHO5YHCofnupWY75TG
         /djojqzncd8aKQcPXV9vUqeb68oYhe9fPzhVgaF/zIPWi7pLm/f5yvHtq3YjWcgerfns
         IIrQy/4vSgd7ovz6AgisyNwwfUCPPZm/dKWngDg/iqlciguGsMViv0AIZsfD2aIKaTNn
         MxyzOCRVO9hCeIBsXg8VrW3hmHwsXi9pPRa6nLm/Sedc5ymhe2CwbNAVai1/Jzc5ocMl
         +44A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=n/qjhiipEM5tCGVGDX5eBSt/b72CbeN0kIugBe0l64g=;
        b=suLq/KeDW3AR0T6KWqF5V4KKov56ImeGdItO1fJ5uNaZLPRHOsr+t8xcVJjPDfpHFb
         nenoiIVwrflFI7oAqVG4Ayr82vlG4unm52+8cyO6vILqipOFVTEQC4d7YRExjqazgO+r
         U5RZpU6Zapp7vVQlXDVy4zQz1lax9S/KMuF2DUj+Ukg1chQ7/nqR6pbodBdORhslpx8R
         tSyUg010HMC2GGG2JkczDe/VuJrLYBZdksGcs6MOEbB5ScAj+0BBg9uW6ygCtu/22JFb
         S82iSpYpYLf1G4Ig2fWKJ78E2OHaFoqqOBq3Wmuqwci1VpWpTMzSMvzfUiwe6Wf+t55Y
         NI6A==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=TZcrEX8X;
       spf=pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jeyu@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id g7si15232126pfr.4.2019.09.09.01.35.32
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Sep 2019 01:35:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from linux-8ccs (ip5f5ade63.dynamic.kabel-deutschland.de [95.90.222.99])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2587E218AC;
	Mon,  9 Sep 2019 08:35:27 +0000 (UTC)
Date: Mon, 9 Sep 2019 10:35:23 +0200
From: Jessica Yu <jeyu@kernel.org>
To: Matthias Maennich <maennich@google.com>
Cc: linux-kernel@vger.kernel.org, kernel-team@android.com, arnd@arndb.de,
	gregkh@linuxfoundation.org, joel@joelfernandes.org,
	lucas.de.marchi@gmail.com, maco@android.com, sspatil@google.com,
	will@kernel.org, yamada.masahiro@socionext.com,
	linux-kbuild@vger.kernel.org, linux-modules@vger.kernel.org,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH v5 00/11] Symbol Namespaces
Message-ID: <20190909083522.GA446@linux-8ccs>
References: <20180716122125.175792-1-maco@android.com>
 <20190906103235.197072-1-maennich@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20190906103235.197072-1-maennich@google.com>
X-OS: Linux linux-8ccs 4.12.14-lp150.12.61-default x86_64
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: jeyu@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=TZcrEX8X;       spf=pass
 (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=jeyu@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

+++ Matthias Maennich [06/09/19 11:32 +0100]:
>As of Linux 5.3-rc7, there are 31207 [1] exported symbols in the kernel.
>That is a growth of roughly 1000 symbols since 4.17 (30206 [2]). There
>seems to be some consensus amongst kernel devs that the export surface
>is too large, and hard to reason about.
>
>Generally, these symbols fall in one of these categories:
>1) Symbols actually meant for drivers
>2) Symbols that are only exported because functionality is split over
>   multiple modules, yet they really shouldn't be used by modules outside
>   of their own subsystem
>3) Symbols really only meant for in-tree use
>
>When module developers try to upstream their code, it regularly turns
>out that they are using exported symbols that they really shouldn't be
>using. This problem is even bigger for drivers that are currently
>out-of-tree, which may be using many symbols that they shouldn't be
>using, and that break when those symbols are removed or modified.
>
>This patch allows subsystem maintainers to partition their exported
>symbols into separate namespaces, and module authors to import such
>namespaces only when needed.
>
>This allows subsystem maintainers to more easily limit availability of
>these namespaced symbols to other parts of the kernel. It can also be
>used to partition the set of exported symbols for documentation
>purposes; for example, a set of symbols that is really only used for
>debugging could be in a "SUBSYSTEM_DEBUG" namespace.
>
>I continued the work mainly done by Martijn Coenen.
>
>Changes in v2:
>- Rather than adding and evaluating separate sections __knsimport_NS,
>  use modinfo tags to declare the namespaces a module introduces.
>  Adjust modpost and the module loader accordingly.
>- Also add support for reading multiple modinfo values for the same tag
>  to allow list-like access to modinfo tags.
>- The macros in export.h have been cleaned up to avoid redundancy in the
>  macro parameters (ns, nspost, nspost2).
>- The introduction of relative references in the ksymtab entries caused
>  a rework of the macros to accommodate that configuration as well.
>- Alignment of kernel_symbol in the ksymtab needed to be fixed to allow
>  growing the kernel_symbol struct.
>- Modpost does now also append the namespace suffix to the symbol
>  entries in Module.symvers.
>- The configuration option MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS allows
>  relaxing the enforcement of properly declared namespace imports at
>  module loading time.
>- Symbols can be collectively exported into a namespace by defining
>  DEFAULT_SYMBOL_NAMESPACE in the corresponding Makefile.
>- The requirement for a very recent coccinelle spatch has been lifted by
>  simplifying the script.
>- nsdeps does now ensures MODULE_IMPORT_NS statements are sorted when
>  patching the module source files.
>- Some minor bugs have been addressed in nsdeps to allow it to work with
>  modules that have more than one source file.
>- The RFC for the usb-storage symbols has been simplified by using
>  DEFAULT_SYMBOL_NAMESPACE=USB_STORAGE rather than explicitly exporting
>  each and every symbol into that new namespace.
>
>Changes in v3:
>- Reword the documentation for the
>  MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS option for clarification.
>- Fix printed required version of spatch in coccinelle script.
>- Adopt kbuild changes for modpost: .mod files are no longer generated
>  in .tmp_versions. Similarely, generate the .ns_deps files in the tree
>  along with the .mod files. Also, nsdeps now uses modules.order as
>  source for the list modules to consider.
>- Add an RFC patch to introduce the namespace WATCHDOG_CORE for symbols
>  exported in watchdog_core.c.
>
>Changes in v4:
>- scripts/nsdeps:
>  - exit on first error
>  - support out-of-tree builds O=...
>- scripts/export_report.pl: update for new Module.symvers format
>- scripts/mod/modpost: make the namespace a separate field when
>  exporting to Module.symvers (rather than symbol.NS)
>- include/linux/export.h: fixed style nits
>- kernel/module.c: ensure namespaces are imported before taking a
>  reference to the owner module
>- Documentation: document the Symbol Namespace feature and update
>  references to Module.symvers and EXPORT_SYMBOL*
>
>Changes in v5:
>- Makefile: let 'nsdeps' depend on 'modules' to allow
>  `make clean; make nsdeps` to work
>- scripts/nsdeps: drop 'exit on first error' again as it just makes more
>  problems than it solves
>- drop the watchdog RFC patch for now
>
>This patch series was developed against v5.3-rc7.

Great work Matthias!

I think this patchset is shaping up nicely. As the merge window is
coming up soon, I'd like to queue this up in modules-next by the end
of today to allow for some testing and "soak" time in linux-next. If
there are any more complaints, please speak up.

Thanks!

Jessica

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190909083522.GA446%40linux-8ccs.
