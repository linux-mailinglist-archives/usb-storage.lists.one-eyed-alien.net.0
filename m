Return-Path: <usb-storage+bncBCNODNHUQUJBB64SZXVAKGQEHO6XSCA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x248.google.com (mail-oi1-x248.google.com [IPv6:2607:f8b0:4864:20::248])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4C08C4D4
	for <lists+usb-storage@lfdr.de>; Wed, 14 Aug 2019 01:36:28 +0200 (CEST)
Received: by mail-oi1-x248.google.com with SMTP id u202sf714741oia.1
        for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 16:36:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565739387; cv=pass;
        d=google.com; s=arc-20160816;
        b=F6seRu/PHrtVsT1RqL8XHbac3I9dtMzUWsR7NBVJsEHkaPc1RoyHhYZA7YcYgEasxf
         lRituPbp735T389P1mM/ui4ae19yd4pc297mxx5PH07V/FDBNy0u0vyqLppTm4T8WU7q
         wL+ENQazvGNWN/ol1cfKkBnveoOdrmM7JLk4cIljP1Pn/Rifn222JJWXaco55kciFKp/
         W4IJcTSJShyHpzsTIduSpZ7t9DUc/alheFimAiOBf2+D0Vn8EX9AnsznJ7lGyaNI8cis
         DbT32CR7KcP2q6RKVpb5e9ysAOjOQ6h+Vt/omaUq+yb9BY2OEx4QiG9kPHQk64EuelLg
         VplA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=FFR4Wz4SXWV1KB4xy9nZIEBF2RaUq3FAJ4X4QDG5xaA=;
        b=AXZ9qLr0LrUvNalBn8TFdaFm/YPOjDJ5xsg0gqpCxCpTPwMdSvlnif8QYwkc+sQ7rZ
         BvWUezp0Uqm+3kRVgWoqoFHZCnVbWXfDBxqrDwjCa7htAq4p9iXtlZrWJpNDVVTZa60d
         aeEdrJxuX90DdhKgq/98/vs0DZoEbAKG8GRMD/YeLYv+NyT7IEB44fXDEjUMb1bJbake
         B2sf0fuGDmHs8LxBoF3iCHSQsqG8vh8T26wToxxxTFobr1BcPk92U6xQ1CkzbLLQa44B
         BYckB400BtvxpvImvw1ndPio7e7RDKUpK6tqWUFt62E6MM5dHNTHxZwOyCbVBq0sVwU4
         pBLA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=u5tsb3tT;
       spf=pass (google.com: domain of saravanak@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=saravanak@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FFR4Wz4SXWV1KB4xy9nZIEBF2RaUq3FAJ4X4QDG5xaA=;
        b=JC49dtIiuCboTxUhKbm0FRQ+KjMIsUvc7+ZjXHLHvNSun1vs6wOUgvzkMOXc7GEakV
         zOJg7aPM1EDZCGk6kPujZ/nDAIpw9wB0x5JSaP1TWJLwwApNkWAc6lyXglveq6Y2LeEQ
         PCRAf5TL6K6vJftrzUIdtvKcyYinRlyQVzIQY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=FFR4Wz4SXWV1KB4xy9nZIEBF2RaUq3FAJ4X4QDG5xaA=;
        b=OI4uZw0pbq8QwXNb99XLLfxPADFhYDNZ2vzGWB3yTlyIYxeaH/Ig6nL+b8vJkFjIkI
         G4gDYEyhcItYxZwB6fJR7RIVmmeU40cXu1M13KIBB7qCGNb2SdhJC3ULgP4akkYRt1ba
         8m6G3I4SKppTapFkVnQhYm2E6cXpkRliI9dfcvGjWgXhD+uJATPl8h+XaJL4OpwOYwGg
         XPHR/vT62s/7QJduBCJlYtNQQ7tv1LN4n/NYG5iN3ZxMWtwstNuSbhIgr/gO5/7VxIWx
         eaHkpRod7bP4WPf6iTGGw2U2sklEhj+PT0AZrtK5byck957Lj4XYBS8rzkejMUtkkvDH
         1WgA==
X-Gm-Message-State: APjAAAVh0+L3Ue7coZmH+c2gtuMdCHyOVzPfwY1omMoLdIzav+Vic/7A
	gRhtbZ4BUlxdWaRdGL9TV012AQ==
X-Google-Smtp-Source: APXvYqxcrL+OJDVVZN42YgADys+oqmkQbvINCSi0GvdQAKmcBU8hOCq3h1aePjTFmMIe1ZLsPXL3IA==
X-Received: by 2002:aca:f08a:: with SMTP id o132mr3034138oih.101.1565739387734;
        Tue, 13 Aug 2019 16:36:27 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a54:4411:: with SMTP id k17ls44867oiw.11.gmail; Tue, 13 Aug
 2019 16:36:27 -0700 (PDT)
X-Received: by 2002:aca:57ce:: with SMTP id l197mr3368286oib.121.1565739387374;
        Tue, 13 Aug 2019 16:36:27 -0700 (PDT)
Received: by 2002:a05:6808:3cc:0:0:0:0 with SMTP id o12msoie;
        Tue, 13 Aug 2019 13:16:21 -0700 (PDT)
X-Received: by 2002:aca:fc43:: with SMTP id a64mr2751588oii.57.1565727380992;
        Tue, 13 Aug 2019 13:16:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565727380; cv=none;
        d=google.com; s=arc-20160816;
        b=sPX0kglQyAUgkfGhhbyNXaWD3Jm+F0NwTY6krD+Cw6x/LzK5kVLKv75+fDniL+KLRt
         oclh3b0lOruxVFdXfgLGIaHuuWwf+/HUtFaRxLnaMaHWCL+hycgJaHAvTj4zBB4dtWOM
         M2Z0CftNZdhoFvix6G9fH/3bALziAMhQz/kRcmVfgzMm8Yze7hWsaDdFxSwqllI/lgtf
         1XG8h9UGpK8GMH2dvBSv3S8AXFH5LDVJhvsK1f0XqVA+qcQX9oWLl/QyR9B6gXL+FGC+
         L5sbsZ6T3aeCBqlxmcI82rU0vHm7eDY8twYankRcU1p98BX9HaYvMCvTtAQM8GB4bvLW
         MxSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=UyUp+OqYNvHr6I8YI09IZ2rFvtcmnaGq+Mw13M6jPN8=;
        b=kmDOgepx28bQMcWPkPFDpJFuKYB66tt7mADXYDWwVObTRGyRZU9uzOxMiPBzL0PErW
         X8FPDroy1/9m76SZ3n/YVQ6S39ExM/DVkB+8aa3MJEogJETZuLEfEa0qNHimrAwoWRdL
         KH1cRBZd7bONAdTj2hPf5Ya6G3+eAHxmcnrQUu+jt9eGz7HucqBvABA084RrFTPVy2Up
         PSlWKw4CgrJ8a9ZugABZapTFTi51/QGgHrMnD7ttDJuE63BCt7TbCRQpdSMHlmjfCMeU
         plpVtlG5MzYgO0cCw590e0F6WZjdwqHycUsT6LrC0ICIUkaGsJAFoX5KJLuqTiACNq+t
         UN+Q==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=u5tsb3tT;
       spf=pass (google.com: domain of saravanak@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=saravanak@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id e66sor8062029ote.154.2019.08.13.13.16.20
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 13 Aug 2019 13:16:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of saravanak@google.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a9d:6d06:: with SMTP id o6mr33264410otp.225.1565727380422;
 Tue, 13 Aug 2019 13:16:20 -0700 (PDT)
MIME-Version: 1.0
References: <20180716122125.175792-1-maco@android.com> <20190813121733.52480-1-maennich@google.com>
 <20190813121733.52480-6-maennich@google.com>
In-Reply-To: <20190813121733.52480-6-maennich@google.com>
From: "'Saravana Kannan' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Date: Tue, 13 Aug 2019 13:15:44 -0700
Message-ID: <CAGETcx_LQDdnaU+3JVGw+6=DJ8tRoQ00+3rD2gOiHHkWomt8jg@mail.gmail.com>
Subject: [usb-storage] Re: [PATCH v2 05/10] module: add config option MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS
To: Matthias Maennich <maennich@google.com>
Cc: LKML <linux-kernel@vger.kernel.org>, maco@android.com, 
	Android Kernel Team <kernel-team@android.com>, arnd@arndb.de, geert@linux-m68k.org, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, hpa@zytor.com, jeyu@kernel.org, 
	"Joel Fernandes (Google)" <joel@joelfernandes.org>, kstewart@linuxfoundation.org, 
	linux-arch@vger.kernel.org, linux-kbuild@vger.kernel.org, 
	linux-m68k@lists.linux-m68k.org, linux-modules@vger.kernel.org, 
	linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org, 
	lucas.de.marchi@gmail.com, maco@google.com, michal.lkml@markovi.net, 
	mingo@redhat.com, oneukum@suse.com, pombredanne@nexb.com, sam@ravnborg.org, 
	sboyd@codeaurora.org, Sandeep Patil <sspatil@google.com>, stern@rowland.harvard.edu, 
	tglx@linutronix.de, usb-storage@lists.one-eyed-alien.net, x86@kernel.org, 
	yamada.masahiro@socionext.com, Andrew Morton <akpm@linux-foundation.org>, 
	Johannes Weiner <hannes@cmpxchg.org>, "Peter Zijlstra (Intel)" <peterz@infradead.org>, 
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, David Howells <dhowells@redhat.com>, 
	Patrick Bellasi <patrick.bellasi@arm.com>, Dan Williams <dan.j.williams@intel.com>, 
	Adrian Reber <adrian@lisas.de>, Richard Guy Briggs <rgb@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: saravanak@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=u5tsb3tT;       spf=pass
 (google.com: domain of saravanak@google.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=saravanak@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Saravana Kannan <saravanak@google.com>
Reply-To: Saravana Kannan <saravanak@google.com>
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

On Tue, Aug 13, 2019 at 5:19 AM 'Matthias Maennich' via kernel-team
<kernel-team@android.com> wrote:
>
> If MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS is enabled (default=n), the
> requirement for modules to import all namespaces that are used by
> the module is relaxed.
>
> Enabling this option effectively allows (invalid) modules to be loaded
> while only a warning is emitted.
>
> Disabling this option keeps the enforcement at module loading time and
> loading is denied if the module's imports are not satisfactory.
>
> Reviewed-by: Martijn Coenen <maco@android.com>
> Signed-off-by: Matthias Maennich <maennich@google.com>
> ---
>  init/Kconfig    | 14 ++++++++++++++
>  kernel/module.c | 11 +++++++++--
>  2 files changed, 23 insertions(+), 2 deletions(-)
>
> diff --git a/init/Kconfig b/init/Kconfig
> index bd7d650d4a99..b3373334cdf1 100644
> --- a/init/Kconfig
> +++ b/init/Kconfig
> @@ -2119,6 +2119,20 @@ config MODULE_COMPRESS_XZ
>
>  endchoice
>
> +config MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS
> +       bool "Allow loading of modules with missing namespace imports"
> +       default n
> +       help
> +         Symbols exported with EXPORT_SYMBOL_NS*() are considered exported in
> +         a namespace. A module that makes use of a symbol exported with such a
> +         namespace is required to import the namespace via MODULE_IMPORT_NS().
> +         This option relaxes this requirement when loading a module.

> While
> +         technically there is no reason to enforce correct namespace imports,
> +         it creates consistency between symbols defining namespaces and users
> +         importing namespaces they make use of.

I'm confused by this sentence. It sounds like it's the opposite of
what the config is doing? Can you please reword it for clarify?

-Saravana

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CAGETcx_LQDdnaU%2B3JVGw%2B6%3DDJ8tRoQ00%2B3rD2gOiHHkWomt8jg%40mail.gmail.com.
