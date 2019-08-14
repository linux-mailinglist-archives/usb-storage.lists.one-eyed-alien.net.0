Return-Path: <usb-storage+bncBCNODNHUQUJBBWMM2HVAKGQEVILLOXA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x245.google.com (mail-oi1-x245.google.com [IPv6:2607:f8b0:4864:20::245])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A198DBF4
	for <lists+usb-storage@lfdr.de>; Wed, 14 Aug 2019 19:35:22 +0200 (CEST)
Received: by mail-oi1-x245.google.com with SMTP id l124sf2164558oih.12
        for <lists+usb-storage@lfdr.de>; Wed, 14 Aug 2019 10:35:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565804121; cv=pass;
        d=google.com; s=arc-20160816;
        b=QHrpY9LV5mydxEIblls4TWGFd11Ofiu91wFVK6hJFgJ343QRIGh5dHg8ssTUxn17mv
         EW4tCdJjGDOF4SfWOnQ+HEk9eBLj8YrSw0GXKusQASqFNXjfzjy457wi6MZE6GMkrEVt
         scgKDz7cMDF81h36IolUbTgEJoRAUSoNJ7Ob0w6AxmdF5hhkYjGFpOlR+BFbZpz3mY0m
         7mnDk7wh+0kWPncH6KzzyI9XVD98i9f/COce9e9im3lP7MNvPOIjhEycxqyvaExylMAa
         a4G/eNuCjBkggWXQTYJ5ys7j+Q15DMyBeGCxLNWCRig2fy/u/tbrC038vhJyDZ7iab++
         4C1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Fh4G5CZkiHOCWA/uj1Nb7O0iy7XYc2b1g8lOj1dDsGI=;
        b=ZKAx96adT4vFfaVYdDjlUeHTZ5rklZMkr3/Zc/l7Afe8FhxXgwT0cR2zGcFPMFKEjt
         kgDP+trNl2E2E2dX6b0+0vdaiJ2U4alY7eyYf4fbnXqS1IgO5x+BWketyx+zgvsSBOS0
         LoQlRIHbBTrLH5jovauvLz9KZyMvyt2fSMMgPcmO8yXbMAjGwByVEC5DBxjohVfNDAfw
         FE1a8I59sEQmf9Zas+7K/j0QPzKEYf+FhEefFm6SlcO6HbK1gX8UEf4eoKBOtRq5lrNf
         ZEe5YnO4BrivnZyGe1VCGYlsMiUOnD+PNmTQjpZR6AbBPK6saoZC2HGJPnptS40ECyeZ
         GVaA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="J/RX89Sf";
       spf=pass (google.com: domain of saravanak@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=saravanak@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Fh4G5CZkiHOCWA/uj1Nb7O0iy7XYc2b1g8lOj1dDsGI=;
        b=czetLZnPgGlGAg7xOzC8dAPqRNC2lobNvI9EXoPE3hBzwhl/cZzGN16heJNB9AQBq/
         AvPgIOf402tSt5rHH2zeBGJJ3eLaj7DQnhTzdLKAkzK2pKAHIXgr6fcEsJDwYVcl0Ynb
         Ryf9LmAbj+fXsmKhlYlaIbUqe47Qvz55VMuic=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Fh4G5CZkiHOCWA/uj1Nb7O0iy7XYc2b1g8lOj1dDsGI=;
        b=Ha8lPGnSsF2QnCrSuH4B40PXImRtYZvp4zThLXHNBHWYB+DN438Ys/fnOtqzqghHje
         OYzM52+SbvgIoP+sbDLtD2rViUop6tq+Tr6Ig4MP+8BN/ybh/o7hor8JFX2y49uzc1Et
         JCvc6qtzvBBRQV26TQI1GngVdn6rB9hKJkSIHt6NtzMTAnQQKUQa+6TG9i0+cHVXLloJ
         xF55kdLQjnQ8MVQVdCOKxBCI00r7bof9akFxZAbRaWFerzkw3vFn+Gf4p2w4oDwry1a8
         MIp4pEKqvHr86N7dSyX/PWBlQU5Q1P438MYUsKVwIikZLLlZqjriICEQsJ5qSuFpYDiW
         yCtw==
X-Gm-Message-State: APjAAAVVTBlDCG87AKi6Bh4IyRG1NFnfmAkV29wf1BB4AnrB48L+R/+4
	jDDeDNfdEuIbKDJXmtyP7oD2rQ==
X-Google-Smtp-Source: APXvYqzaCEOY5VloL8nmpvl9euYU2WrL2k3UUND1PTdfbbuib6iWHMLndKVmzweBFg4r93Qu+HRvaw==
X-Received: by 2002:a9d:6e95:: with SMTP id a21mr141070otr.367.1565804121422;
        Wed, 14 Aug 2019 10:35:21 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aca:4c9:: with SMTP id 192ls445202oie.8.gmail; Wed, 14 Aug
 2019 10:35:21 -0700 (PDT)
X-Received: by 2002:aca:df08:: with SMTP id w8mr712912oig.84.1565804120991;
        Wed, 14 Aug 2019 10:35:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565804120; cv=none;
        d=google.com; s=arc-20160816;
        b=XFG1kyYewsCgr4RN5IV9ZRm21G0yQaKxQ2oQ1TQRG2mTTM8D93HOTKsomvZ4EIPmXn
         KnANQjGKLAgs1ezhGFHN+z5tbDWi+NhnyhWbVWaMsFA8LqSsz6cI82iBmYcts5cs2jTf
         S+Vd3ZpeNKpYSfSGH0UpF0dAZzt3tZRFVHuVFqBt0Wg55TpSAGLYnLUjsyoG7SDo/j1s
         rO6mfalePgdQkeP6IXi7SHjYhgbow9XmRdBV4wYP6/4GMYsBEsfgjhlWmbjF93ZZPozT
         CRNl0q5a4q8kyHfPwGag5eT5Tq/SiXeyHggiXztaAgQn3EqWzoVk92MDuPJAbqvWVP26
         VX9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fOFmALBZr12NwAFqPH4bz0Snzh0MYv/4Oy/ALTRaZDA=;
        b=B/bbyFx/M2XsI0ZbuTtQKpINVklV0/IGiNV4pUfitG02t5WaQdPVgUcC5FAxUMaieA
         mcM9e3Yt+b56DVccmrMVWy4ZjYpwFxC4ZBi1fLo5aqFwyhxn1rbeZeQQ3I28oSoPqseg
         pqebH4bpTdpLhplTyIzH0Xw63XhV0sTPnGSYbESWHEataGo9ivx7BlQcIs/P1qZ/KSju
         Ar750V4bKyLL0FIB9e8aQ6zJcqmh182sxDpI6RqCSJpQzSe+dso6gNR9Bnq6F9pafsO3
         gm6VLLYS8aNCg0YXcESqTHpbh/ine3x11Ln9aE/izNQs7UwQ3Mai8uBbntMq/GfdDLt6
         W/MQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="J/RX89Sf";
       spf=pass (google.com: domain of saravanak@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=saravanak@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id w88sor344571otb.149.2019.08.14.10.35.20
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 14 Aug 2019 10:35:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of saravanak@google.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a05:6830:1e0f:: with SMTP id s15mr177324otr.231.1565804120275;
 Wed, 14 Aug 2019 10:35:20 -0700 (PDT)
MIME-Version: 1.0
References: <20180716122125.175792-1-maco@android.com> <20190813121733.52480-1-maennich@google.com>
 <20190813121733.52480-6-maennich@google.com> <CAGETcx_LQDdnaU+3JVGw+6=DJ8tRoQ00+3rD2gOiHHkWomt8jg@mail.gmail.com>
 <20190814125427.GA72826@google.com>
In-Reply-To: <20190814125427.GA72826@google.com>
From: "'Saravana Kannan' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Date: Wed, 14 Aug 2019 10:34:43 -0700
Message-ID: <CAGETcx99Xx7aRPS-2Pw8h7O5D_+3T+1hbqja=p-gLN2wXApaEQ@mail.gmail.com>
Subject: [usb-storage] Re: [PATCH v2 05/10] module: add config option MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS
To: Matthias Maennich <maennich@google.com>
Cc: LKML <linux-kernel@vger.kernel.org>, maco@android.com, 
	Android Kernel Team <kernel-team@android.com>, arnd@arndb.de, geert@linux-m68k.org, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, hpa@zytor.com, jeyu@kernel.org, 
	"Joel Fernandes (Google)" <joel@joelfernandes.org>, Kate Stewart <kstewart@linuxfoundation.org>, 
	linux-arch@vger.kernel.org, linux-kbuild@vger.kernel.org, 
	linux-m68k@lists.linux-m68k.org, linux-modules@vger.kernel.org, 
	linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org, 
	lucas.de.marchi@gmail.com, Martijn Coenen <maco@google.com>, michal.lkml@markovi.net, 
	mingo@redhat.com, oneukum@suse.com, 
	Philippe Ombredanne <pombredanne@nexb.com>, sam@ravnborg.org, Sandeep Patil <sspatil@google.com>, 
	stern@rowland.harvard.edu, tglx@linutronix.de, 
	usb-storage@lists.one-eyed-alien.net, x86@kernel.org, 
	yamada.masahiro@socionext.com, Andrew Morton <akpm@linux-foundation.org>, 
	Johannes Weiner <hannes@cmpxchg.org>, "Peter Zijlstra (Intel)" <peterz@infradead.org>, 
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, David Howells <dhowells@redhat.com>, 
	Patrick Bellasi <patrick.bellasi@arm.com>, Dan Williams <dan.j.williams@intel.com>, 
	Adrian Reber <adrian@lisas.de>, Richard Guy Briggs <rgb@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: saravanak@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="J/RX89Sf";       spf=pass
 (google.com: domain of saravanak@google.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=saravanak@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Saravana Kannan <saravanak@google.com>
Reply-To: Saravana Kannan <saravanak@google.com>
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

On Wed, Aug 14, 2019 at 5:54 AM 'Matthias Maennich' via kernel-team
<kernel-team@android.com> wrote:
>
> On Tue, Aug 13, 2019 at 01:15:44PM -0700, Saravana Kannan wrote:
> >On Tue, Aug 13, 2019 at 5:19 AM 'Matthias Maennich' via kernel-team
> ><kernel-team@android.com> wrote:
> >>
> >> If MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS is enabled (default=n), the
> >> requirement for modules to import all namespaces that are used by
> >> the module is relaxed.
> >>
> >> Enabling this option effectively allows (invalid) modules to be loaded
> >> while only a warning is emitted.
> >>
> >> Disabling this option keeps the enforcement at module loading time and
> >> loading is denied if the module's imports are not satisfactory.
> >>
> >> Reviewed-by: Martijn Coenen <maco@android.com>
> >> Signed-off-by: Matthias Maennich <maennich@google.com>
> >> ---
> >>  init/Kconfig    | 14 ++++++++++++++
> >>  kernel/module.c | 11 +++++++++--
> >>  2 files changed, 23 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/init/Kconfig b/init/Kconfig
> >> index bd7d650d4a99..b3373334cdf1 100644
> >> --- a/init/Kconfig
> >> +++ b/init/Kconfig
> >> @@ -2119,6 +2119,20 @@ config MODULE_COMPRESS_XZ
> >>
> >>  endchoice
> >>
> >> +config MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS
> >> +       bool "Allow loading of modules with missing namespace imports"
> >> +       default n
> >> +       help
> >> +         Symbols exported with EXPORT_SYMBOL_NS*() are considered exported in
> >> +         a namespace. A module that makes use of a symbol exported with such a
> >> +         namespace is required to import the namespace via MODULE_IMPORT_NS().
> >> +         This option relaxes this requirement when loading a module.
> >
> >> While
> >> +         technically there is no reason to enforce correct namespace imports,
> >> +         it creates consistency between symbols defining namespaces and users
> >> +         importing namespaces they make use of.
> >
> >I'm confused by this sentence. It sounds like it's the opposite of
> >what the config is doing? Can you please reword it for clarify?
>
> How about:
>
>   Symbols exported with EXPORT_SYMBOL_NS*() are considered exported in
>   a namespace. A module that makes use of a symbol exported with such a
>   namespace is required to import the namespace via MODULE_IMPORT_NS().
>   There is no technical reason to enforce correct namespace imports,
>   but it creates consistency between symbols defining namespaces and
>   users importing namespaces they make use of. This option relaxes this
>   requirement and lifts the enforcement when loading a module.

That's a lot better. Especially moving the "This option relaxes..." to
the bottom. Thanks.

-Saravana

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CAGETcx99Xx7aRPS-2Pw8h7O5D_%2B3T%2B1hbqja%3Dp-gLN2wXApaEQ%40mail.gmail.com.
