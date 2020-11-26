Return-Path: <usb-storage+bncBDM75F6QTAPBBEWR776QKGQE4CFDXFA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x845.google.com (mail-qt1-x845.google.com [IPv6:2607:f8b0:4864:20::845])
	by mail.lfdr.de (Postfix) with ESMTPS id D457C2C5AC8
	for <lists+usb-storage@lfdr.de>; Thu, 26 Nov 2020 18:40:35 +0100 (CET)
Received: by mail-qt1-x845.google.com with SMTP id d9sf1609429qtr.5
        for <lists+usb-storage@lfdr.de>; Thu, 26 Nov 2020 09:40:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606412434; cv=pass;
        d=google.com; s=arc-20160816;
        b=OIfB1nkKuv2YuOhwU3jqou8pVcnsZndHtn0HRHy2PqvUUgITt7NPUjv0qB+Y5IFHiu
         q9fS2Wrqsan+BSjpvUCucs+8F6FB1ReC0+QeVcmor1Ijsm2FmUTTEte0bc5c2ZiSgDVR
         eobj55zU49xjPy7VMjOknFM3fNswIHPKag+Tt0pjYa9Kb9cT/69VdSJdFwS/ferp4qmT
         uwDlZw0lgYlws17qNL6o0YPkXWXBqoFQ+FwebVe18EwO88Xgz2zdd+SiJAE+851xW4Jz
         GNSn45f2PKfblkCQRitAJaVfHoRUKt/yTYTKEz6UWTgy2MAhZNipu2Prd9OlOLntc7bj
         ggHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=XD0a19qyYJ+1BUfV3EYeP3PkQm+UIY1mqDl3xDB3sKA=;
        b=SdFuyGtoZAl9GRJUFQe0cYjmHXkN/cbPH/+FeUB/7vFAFAa34rSSusNw6C2bIrTdjE
         4/4MTeoPMmtSvePV4Ond569O6DlqvSzVOOHjAB/3u+QXOkzrTpI5PF+RjpCgQ2BOWwNX
         Z/yeShobJHHb6Vt7ztC036F6sbOWPZ3EezCnDUWchdCkhDk3aVPcjugq2MQDUqphIaiu
         FEk6j5s2/23ny9THxFJfjumDj9bydJt674eEp93B4rBmOZuNShqlThu48F1Scd8Rx/3k
         IGpm9Rk1pGwxibvmRYcLQ6N7aVdDrRaRskHWAjfZeHw+XduBChsys8gkAhOF3B1oV5dK
         c7og==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=AT6WJNqi;
       spf=pass (google.com: domain of kherbst@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=kherbst@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XD0a19qyYJ+1BUfV3EYeP3PkQm+UIY1mqDl3xDB3sKA=;
        b=J6WZx/ndXdxCb2tds529Y3U6hemCi0TUYXEzfk3WsP9aSOhEGw6Fm2V/hMhrqEy+6f
         bW5UBxCG+D6itzslC3rDKFieNRUcvHQlyY5FnGOo/GEcQ4nlceZ+pILbU73P6rtPgM+1
         SHfht3CbpagaXlJaDu2ud26q5M1/Zynt6dXVg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XD0a19qyYJ+1BUfV3EYeP3PkQm+UIY1mqDl3xDB3sKA=;
        b=DPhZCOkmdGpIeumNDu21uRGo6McOg7pN1K5UpYPbJ9O9SrYO+znLCclVIYRb21ff0u
         1EMBPOLlzbUqDafZfJ1sAyqJJRecJ/h696GI3bonLO73NLKgno0eWnb+kGF7qxZtnl3z
         uarsg9c9iul+0k14qwrd5N4xIwQEyqSuubRqZwoXV31iP3J92iXsP56VPqg2mo8LjghC
         sh35ZMNXG9gM5Diiamc5pO+85s8KreTpN6GGqclzs3mW4AJntnw3oTSi1+Jf0yvJRsD5
         vZB3x/K9cF+shbshYMg0a27eU03sD+FhyaPaPTKyJ+bgn4X3b2oW1baYmnygBfVIlTyY
         4FLQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533eanCSKUE4B/KrD8Ueel9lEco3wvZpwZ90p/2C2YCjpWX4vTeK
	lYHdTsJFjTXXQNxXtPEfOErbCw==
X-Google-Smtp-Source: ABdhPJx8cIQeye1e6cCcM3kgJeqjK8KE9sjxQff1QQCwqWEotHGa4gj5Bnfw/Du+1uyT4K450DTfcQ==
X-Received: by 2002:ac8:5196:: with SMTP id c22mr4212212qtn.387.1606412434736;
        Thu, 26 Nov 2020 09:40:34 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:620a:572:: with SMTP id p18ls1339881qkp.0.gmail; Thu, 26
 Nov 2020 09:40:34 -0800 (PST)
X-Received: by 2002:a37:6143:: with SMTP id v64mr4415157qkb.490.1606412434373;
        Thu, 26 Nov 2020 09:40:34 -0800 (PST)
Received: by 2002:a37:9182:0:b029:174:a595:cb53 with SMTP id t124-20020a3791820000b0290174a595cb53msqkd;
        Thu, 26 Nov 2020 08:18:29 -0800 (PST)
X-Received: by 2002:a25:5007:: with SMTP id e7mr5276886ybb.124.1606407509519;
        Thu, 26 Nov 2020 08:18:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606407509; cv=none;
        d=google.com; s=arc-20160816;
        b=wmUEXunx1d90SpTebC2W99dD/r/yuswzp05xmvfNc06ojSNV4y5Z06pw7C4SnnHbIi
         rZMI+KLfrf77XHG3qlRIpSJptkbqR80WM/7QoAePYK6MvAYOiwhgRPIm2JUlroclOkEs
         0CTE1DuEH5KqsuqwLMqxR7quhMGKbmE8lN1bYdEEaFUOQYCMe5AWn51dubRSBmoaW2nN
         l5A/dGTzoRS4zffaY5/+jP5etfs590T6ptomnUWGEErDMo6ip4KaIk+cbxjWmr/vit+i
         QGbISaCbyjqLfJCOLzMr0hLUNI7dYsQBxnnz+7fmsLCpWdSGNStaZGZkjIakr3CQQYnh
         PAdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IL7sPB68gF1YeWIUFuBJ//YIBDjI3bDL6qHHKubt/Z0=;
        b=MM9xH1OzzRwG/AWAbpZPng+R+3kXhbM0PSgchKmcDanOZLXeZqy4O7UJ4dysIZsCsk
         NDWGaZ23LbObtE6esHcuKSJTsLoOTlsJv8n5Mx7Z6aSVUOEr3dV4ybO2my/Psqsy2LXf
         BDcmeCbWwXwl0XuNF1HQa9ICIQ9PAZf57Q5Kuu+dNfDjLF27psFvD0rzKvUeUcHojcas
         EO9AACquJ2OaTqoV89RH3+S3jzq9yXzBkiZhqwZZSFx3liJqgZAODuoe1K6OHE19WwZK
         zBYjVWKdqgzV/b/TmieyxbEnH3GLD5RLgvPV+tEuIfQaGY8kFrkSrfYeoCeQKY20aRL+
         d9Ig==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=AT6WJNqi;
       spf=pass (google.com: domain of kherbst@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=kherbst@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by mx.google.com with ESMTPS id d23si5778511yba.87.2020.11.26.08.18.29
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Nov 2020 08:18:29 -0800 (PST)
Received-SPF: pass (google.com: domain of kherbst@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-126-YaPJcVtWPki_35zOvfS_8A-1; Thu, 26 Nov 2020 11:18:27 -0500
X-MC-Unique: YaPJcVtWPki_35zOvfS_8A-1
Received: by mail-qt1-f199.google.com with SMTP id t17so1509560qtp.3
        for <usb-storage@lists.one-eyed-alien.net>; Thu, 26 Nov 2020 08:18:27 -0800 (PST)
X-Received: by 2002:a37:ac8:: with SMTP id 191mr3793936qkk.381.1606407504814;
        Thu, 26 Nov 2020 08:18:24 -0800 (PST)
X-Received: by 2002:a37:ac8:: with SMTP id 191mr3793888qkk.381.1606407504531;
 Thu, 26 Nov 2020 08:18:24 -0800 (PST)
MIME-Version: 1.0
References: <cover.1605896059.git.gustavoars@kernel.org> <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011201129.B13FDB3C@keescook> <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011220816.8B6591A@keescook> <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
 <CANiq72nZrHWTA4_Msg6MP9snTyenC6-eGfD27CyfNSu7QoVZbw@mail.gmail.com>
 <1c7d7fde126bc0acf825766de64bf2f9b888f216.camel@HansenPartnership.com>
 <CANiq72m22Jb5_+62NnwX8xds2iUdWDMAqD8PZw9cuxdHd95W0A@mail.gmail.com>
 <fc45750b6d0277c401015b7aa11e16cd15f32ab2.camel@HansenPartnership.com>
 <CANiq72k5tpDoDPmJ0ZWc1DGqm+81Gi-uEENAtvEs9v3SZcx6_Q@mail.gmail.com>
 <4993259d01a0064f8bb22770503490f9252f3659.camel@HansenPartnership.com>
 <CANiq72kqO=bYMJnFS2uYRpgWATJ=uXxZuNUsTXT+3aLtrpnzvQ@mail.gmail.com>
 <44005bde-f6d4-5eaa-39b8-1a5efeedb2d3@gmail.com> <CANiq72nobq=ptWK-qWxU91JHqkKhMcRtJNnw2XJd5-vSJWZd8Q@mail.gmail.com>
 <CAMuHMdV5kOakvZJMWLxbpigFPS+Xuw6DVYsWCWZy7wGsv3idcw@mail.gmail.com>
In-Reply-To: <CAMuHMdV5kOakvZJMWLxbpigFPS+Xuw6DVYsWCWZy7wGsv3idcw@mail.gmail.com>
From: Karol Herbst <kherbst@redhat.com>
Date: Thu, 26 Nov 2020 17:18:13 +0100
Message-ID: <CACO55tsBj3gLECoMWtViDitd7fVTnW+Cp0LVmqYkR=QFBJkEmQ@mail.gmail.com>
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	ALSA Development Mailing List <alsa-devel@alsa-project.org>, bridge@lists.linux-foundation.org, 
	target-devel <target-devel@vger.kernel.org>, linux-iio@vger.kernel.org, 
	linux-wireless <linux-wireless@vger.kernel.org>, Linux MMC List <linux-mmc@vger.kernel.org>, 
	Linux Fbdev development list <linux-fbdev@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, 
	virtualization@lists.linux-foundation.org, 
	James Bottomley <James.Bottomley@hansenpartnership.com>, linux-ide@vger.kernel.org, 
	dm-devel@redhat.com, keyrings@vger.kernel.org, 
	MTD Maling List <linux-mtd@lists.infradead.org>, GR-everest-linux-l2@marvell.com, 
	wcn36xx@lists.infradead.org, linux-i3c@lists.infradead.org, 
	linux1394-devel@lists.sourceforge.net, linux-afs@lists.infradead.org, 
	Lars Ellenberg <drbd-dev@lists.linbit.com>, driverdevel <devel@driverdev.osuosl.org>, 
	linux-cifs@vger.kernel.org, rds-devel@oss.oracle.com, 
	scsi <linux-scsi@vger.kernel.org>, 
	ACPI Devel Maling List <linux-acpi@vger.kernel.org>, linux-rdma <linux-rdma@vger.kernel.org>, 
	oss-drivers@netronome.com, linux-atm-general@lists.sourceforge.net, 
	ceph-devel <ceph-devel@vger.kernel.org>, amd-gfx list <amd-gfx@lists.freedesktop.org>, 
	linux-stm32@st-md-mailman.stormreply.com, cluster-devel@redhat.com, 
	usb-storage@lists.one-eyed-alien.net, coreteam@netfilter.org, 
	intel-wired-lan@lists.osuosl.org, linux-input <linux-input@vger.kernel.org>, 
	Miguel Ojeda <ojeda@kernel.org>, Jakub Kicinski <kuba@kernel.org>, 
	Ext4 Developers List <linux-ext4@vger.kernel.org>, NetFilter <netfilter-devel@vger.kernel.org>, 
	Linux Media Mailing List <linux-media@vger.kernel.org>, Kees Cook <keescook@chromium.org>, 
	selinux@vger.kernel.org, linux-arm-msm <linux-arm-msm@vger.kernel.org>, 
	Intel Graphics Development <intel-gfx@lists.freedesktop.org>, linux-sctp@vger.kernel.org, 
	reiserfs-devel@vger.kernel.org, linux-geode@lists.infradead.org, 
	linux-block@vger.kernel.org, 
	"open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, op-tee@lists.trustedfirmware.org, 
	linux-mediatek@lists.infradead.org, xen-devel@lists.xenproject.org, 
	Nouveau Dev <nouveau@lists.freedesktop.org>, linux-hams@vger.kernel.org, 
	Nathan Chancellor <natechancellor@gmail.com>, linux-can@vger.kernel.org, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-hwmon@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	Linux Watchdog Mailing List <linux-watchdog@vger.kernel.org>, GR-Linux-NIC-Dev@marvell.com, 
	Linux-MM <linux-mm@kvack.org>, Network Development <netdev@vger.kernel.org>, 
	linux-decnet-user@lists.sourceforge.net, samba-technical@lists.samba.org, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>, Edward Cree <ecree.xilinx@gmail.com>, 
	linux-security-module <linux-security-module@vger.kernel.org>, 
	USB list <linux-usb@vger.kernel.org>, tipc-discussion@lists.sourceforge.net, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, patches@opensource.cirrus.com, 
	Joe Perches <joe@perches.com>, linux-integrity <linux-integrity@vger.kernel.org>, 
	"open list:NFS, SUNRPC, AND..." <linux-nfs@vger.kernel.org>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, linux-hardening@vger.kernel.org
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kherbst@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=AT6WJNqi;
       spf=pass (google.com: domain of kherbst@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=kherbst@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Thu, Nov 26, 2020 at 4:28 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Hi Miguel,
>
> On Thu, Nov 26, 2020 at 3:54 PM Miguel Ojeda
> <miguel.ojeda.sandonis@gmail.com> wrote:
> > On Wed, Nov 25, 2020 at 11:44 PM Edward Cree <ecree.xilinx@gmail.com> wrote:
> > > To make the intent clear, you have to first be certain that you
> > >  understand the intent; otherwise by adding either a break or a
> > >  fallthrough to suppress the warning you are just destroying the
> > >  information that "the intent of this code is unknown".
> >
> > If you don't know what the intent of your own code is, then you
> > *already* have a problem in your hands.
>
> The maintainer is not necessarily the owner/author of the code, and
> thus may not know the intent of the code.
>
> > > or does it flag up code
> > >  that can be mindlessly "fixed" (in which case the warning is
> > >  worthless)?  Proponents in this thread seem to be trying to
> > >  have it both ways.
> >
> > A warning is not worthless just because you can mindlessly fix it.
> > There are many counterexamples, e.g. many
> > checkpatch/lint/lang-format/indentation warnings, functional ones like
> > the `if (a = b)` warning...
>
> BTW, you cannot mindlessly fix the latter, as you cannot know if
> "(a == b)" or "((a = b))" was intended, without understanding the code
> (and the (possibly unavailable) data sheet, and the hardware, ...).
>

to allow assignments in if statements was clearly a mistake and if you
need outside information to understand the code, your code is the
issue already.

> P.S. So far I've stayed out of this thread, as I like it if the compiler
>      flags possible mistakes.  After all I was the one fixing new
>      "may be used uninitialized" warnings thrown up by gcc-4.1, until
>      (a bit later than) support for that compiler was removed...
>
> Gr{oetje,eeting}s,
>
>                         Geert
>
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
>
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel
>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CACO55tsBj3gLECoMWtViDitd7fVTnW%2BCp0LVmqYkR%3DQFBJkEmQ%40mail.gmail.com.
