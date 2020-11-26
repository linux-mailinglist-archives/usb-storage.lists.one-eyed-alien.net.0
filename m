Return-Path: <usb-storage+bncBDLIRC6U5UNBBEWR776QKGQE2BVRNNI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc47.google.com (mail-oo1-xc47.google.com [IPv6:2607:f8b0:4864:20::c47])
	by mail.lfdr.de (Postfix) with ESMTPS id 231412C5AC9
	for <lists+usb-storage@lfdr.de>; Thu, 26 Nov 2020 18:40:37 +0100 (CET)
Received: by mail-oo1-xc47.google.com with SMTP id y3sf1310865oom.17
        for <lists+usb-storage@lfdr.de>; Thu, 26 Nov 2020 09:40:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606412434; cv=pass;
        d=google.com; s=arc-20160816;
        b=JrhYU5dJ76mFx3UFEGjK2WiM+DSMt61BJpx9cUyTsvW9ZT1RL3dOSVT6ezYcTjtlXm
         PIktsoovYl86AIu56IcUVJkMyc53vQiNAI1/Nz4lrEcCyxLFgsu7JLs1XADVjcQg5xZ8
         l+kQvX86uZrunVT7hO3Vo0mH8MOztzGYRmvvVo2tQRJ8m23uV4SdUsyfiJstt239oVft
         pKQsYGVf7YHYVxvPGSJbv07Kn5eQbupKOESit2gBHHqzUca7oQiBxdTWuDSIFlqnjKv5
         uYbDSPwF7d9hHaJJxATx8I9fh4d7zt8vKNEkXzZMlq6M6eWGJI5SeUeETsWNoukikmZM
         EeMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=6bRKMJmrevjAUFhWruG9bvMgsjPV7ejsorgwLH4vcyY=;
        b=Ed9q1dbqRYd4Bky5vzbOnDwCTVGQphBUyQms1E0PkBZHMzSzdEgcIeUMLj6+MCr6NN
         o8ordDzoG7iTwYNTv1H/ssvLghYBKmbKHAiYXH/s0IhkvIcOjDiVjq/xaS2toYuxXDnw
         ADu27NoXS5XRU9I8EktdXbxi7yN7UI7SI3XRq2aA6neV7Mc/Zk/bINXYSlLg/jKshCDn
         Gij5MlPMssoWmDBMlAmDPoh1xzHndxhHzdCKkmAVL1EUaBbZszoWVu2NO4Gkxa4IVYDN
         b+BSf9LZk0MxGgsk7mhHV53Vzld5xd2kVNkLvlk1L+/YKMBv2WXoXj0UWmz9Z1g7wA+N
         cgJw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6bRKMJmrevjAUFhWruG9bvMgsjPV7ejsorgwLH4vcyY=;
        b=h0FWG4Z3Z0ZNMFsZIACp4cUIofcjk5FrOUHPwHBV7Rn7Rznjo3zs8rGB3UD4XOdatE
         3O00A9pFjNh1FKbu9Dk0IyUfTm4n4VqqjeODRl3o97jRFdMcU3iIKkor5ihCMxXNBr2X
         mRipdWfJGU3KXbEPd1md8Lorst/YwgLR1sBto=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6bRKMJmrevjAUFhWruG9bvMgsjPV7ejsorgwLH4vcyY=;
        b=Tm+OwuXN4VLT1456Xwgjl3G/00hCu13Jqq2aqHqmyxLme6sfIGsQDgugFYlwdnYtPB
         1vmsZQpS3BvHSd8DJzFGFe/9AkQAC6cVrZrNMUQV0O9DUxz9kX1BJzq6a5lu3F+9WMw7
         jXeTPwZ/okRuQuIvuAMz5wxBsGNsiBvSjNG0xTWhcrbmLIqHc+cOGrD4ORjZLZPTCsLO
         ZdRdBmPn4AhWPbTP8y0OXRYfXadd364kH8x+C3KGmgMXmzUTrgm9yyp1ZYGrWNBEeG+e
         DUWqazfuiOKKcGmmdsect4ZMqsq7bgPxTsyd5gWZZbvAybm1mL7wA0CRUtx8en3pGNA8
         XDpQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533i0Ip3m5PDvNWnMIZKpFqRk3gTxyAnR8O83APZmMylynk8BOgq
	lRB2GSGRc9cOOwHvr8U8YSmolQ==
X-Google-Smtp-Source: ABdhPJx9aFhyqnTXCUOgcQBu83w1tKeaJIiEtIHdgFsz8Iu/L9JYDEKgg2nSZ6s/KTiwqjD5ZLz6ow==
X-Received: by 2002:a05:6830:4d6:: with SMTP id s22mr3123573otd.30.1606412434745;
        Thu, 26 Nov 2020 09:40:34 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aca:5214:: with SMTP id g20ls616708oib.9.gmail; Thu, 26 Nov
 2020 09:40:34 -0800 (PST)
X-Received: by 2002:aca:34d4:: with SMTP id b203mr2690362oia.69.1606412434346;
        Thu, 26 Nov 2020 09:40:34 -0800 (PST)
Received: by 2002:aca:c4ca:0:b029:e9:bdca:7849 with SMTP id u193-20020acac4ca0000b02900e9bdca7849msoif;
        Thu, 26 Nov 2020 07:28:24 -0800 (PST)
X-Received: by 2002:a9d:3d8b:: with SMTP id l11mr2583448otc.182.1606404504350;
        Thu, 26 Nov 2020 07:28:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606404504; cv=none;
        d=google.com; s=arc-20160816;
        b=el4bICrHqoZKNbAAvNPC1qMtngxz1tUmT7tDILreWteAZAolqFeXWHWYAk7GyD+zRD
         hLxt9lJDWH44REXzCtjyCa0zIpDd3CvGc5mH1cm4l1viU/m2JmFsEONl7Ayi9cQcH4rj
         uMliZb3732mqVJEotDJyTNgtqwO8Uvn1GdM0IuTBAhf/qvUjWij+iZNmI0EDFt+eiaug
         iUIlYpHYxyLcXDpIExnV+Gz8fEU3E4yd2cZwfJQqR2hs2BsxnS46a7Xe32Lcfkd1MHyM
         poxap3DtAS3TKtc27wcU1PkInrJ9dQaR5rGjrV6sZviM+XZcm/DatVWiUcYGUiPS9woD
         Ngqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=kP9MspVOPl/NnVl8oGn1EIC/+F8CcK5+OXo+jY56Nno=;
        b=TiQta1awiJLm2Ex2jffW+aR0P2U1ks1b82xIDm6Bn7iuy/j6o2tLRrVVG0tQtfFBy8
         eAxLqLQ2OZkpJYpVhohyVftXlNNK36Lv+uMB2pZ0gGGr6jzWxEWT0rhlP9QLGuwg+5RI
         cOXwrXmcujYPbGN3be2z2dsXRGe1E0ocW3tgXq3TPGS7pRFI/eB4x+L63Pqwbg1gpYcX
         sncEbZFe3mWS6yT+qAmhSOI70peDO6JMyuJ2XG3zGMgi+ZuM6Lt9zociEf1w8s7asZmB
         RPFSmihOnJjvdO49+gD1L2Ru9VQRK9b1fwFcsr02kIyZXn4sWlNaepOEjUDYzJVM7eiH
         G4Iw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id t1sor1285688otk.70.2020.11.26.07.28.24
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 26 Nov 2020 07:28:24 -0800 (PST)
Received-SPF: pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a05:6830:210a:: with SMTP id i10mr2551843otc.145.1606404504116;
 Thu, 26 Nov 2020 07:28:24 -0800 (PST)
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
In-Reply-To: <CANiq72nobq=ptWK-qWxU91JHqkKhMcRtJNnw2XJd5-vSJWZd8Q@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 26 Nov 2020 16:28:12 +0100
Message-ID: <CAMuHMdV5kOakvZJMWLxbpigFPS+Xuw6DVYsWCWZy7wGsv3idcw@mail.gmail.com>
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Edward Cree <ecree.xilinx@gmail.com>, 
	ALSA Development Mailing List <alsa-devel@alsa-project.org>, linux-atm-general@lists.sourceforge.net, 
	reiserfs-devel@vger.kernel.org, linux-iio@vger.kernel.org, 
	linux-wireless <linux-wireless@vger.kernel.org>, 
	Linux Fbdev development list <linux-fbdev@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, 
	James Bottomley <James.Bottomley@hansenpartnership.com>, linux-ide@vger.kernel.org, 
	dm-devel@redhat.com, keyrings@vger.kernel.org, 
	MTD Maling List <linux-mtd@lists.infradead.org>, GR-everest-linux-l2@marvell.com, 
	wcn36xx@lists.infradead.org, samba-technical@lists.samba.org, 
	linux-i3c@lists.infradead.org, linux1394-devel@lists.sourceforge.net, 
	linux-afs@lists.infradead.org, usb-storage@lists.one-eyed-alien.net, 
	Lars Ellenberg <drbd-dev@lists.linbit.com>, driverdevel <devel@driverdev.osuosl.org>, 
	linux-cifs@vger.kernel.org, rds-devel@oss.oracle.com, 
	Nick Desaulniers <ndesaulniers@google.com>, scsi <linux-scsi@vger.kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, linux-rdma <linux-rdma@vger.kernel.org>, 
	oss-drivers@netronome.com, bridge@lists.linux-foundation.org, 
	linux-security-module <linux-security-module@vger.kernel.org>, 
	amd-gfx list <amd-gfx@lists.freedesktop.org>, linux-stm32@st-md-mailman.stormreply.com, 
	cluster-devel@redhat.com, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, 
	coreteam@netfilter.org, intel-wired-lan@lists.osuosl.org, 
	linux-input <linux-input@vger.kernel.org>, Miguel Ojeda <ojeda@kernel.org>, 
	Jakub Kicinski <kuba@kernel.org>, Ext4 Developers List <linux-ext4@vger.kernel.org>, 
	Linux Media Mailing List <linux-media@vger.kernel.org>, Kees Cook <keescook@chromium.org>, 
	selinux@vger.kernel.org, linux-arm-msm <linux-arm-msm@vger.kernel.org>, 
	Intel Graphics Development <intel-gfx@lists.freedesktop.org>, linux-geode@lists.infradead.org, 
	linux-can@vger.kernel.org, linux-block@vger.kernel.org, 
	"open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, op-tee@lists.trustedfirmware.org, 
	linux-mediatek@lists.infradead.org, xen-devel@lists.xenproject.org, 
	Nouveau Dev <nouveau@lists.freedesktop.org>, linux-hams@vger.kernel.org, 
	ceph-devel <ceph-devel@vger.kernel.org>, virtualization@lists.linux-foundation.org, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-hwmon@vger.kernel.org, 
	Linux Watchdog Mailing List <linux-watchdog@vger.kernel.org>, 
	"open list:NFS, SUNRPC, AND..." <linux-nfs@vger.kernel.org>, GR-Linux-NIC-Dev@marvell.com, 
	tipc-discussion@lists.sourceforge.net, Linux-MM <linux-mm@kvack.org>, 
	Network Development <netdev@vger.kernel.org>, linux-decnet-user@lists.sourceforge.net, 
	Linux MMC List <linux-mmc@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Linux-Renesas <linux-renesas-soc@vger.kernel.org>, 
	linux-sctp@vger.kernel.org, USB list <linux-usb@vger.kernel.org>, 
	NetFilter <netfilter-devel@vger.kernel.org>, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, patches@opensource.cirrus.com, 
	Joe Perches <joe@perches.com>, linux-integrity <linux-integrity@vger.kernel.org>, 
	target-devel <target-devel@vger.kernel.org>, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: geert.uytterhoeven@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of geert.uytterhoeven@gmail.com designates 209.85.220.65 as permitted
 sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
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

Hi Miguel,

On Thu, Nov 26, 2020 at 3:54 PM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
> On Wed, Nov 25, 2020 at 11:44 PM Edward Cree <ecree.xilinx@gmail.com> wrote:
> > To make the intent clear, you have to first be certain that you
> >  understand the intent; otherwise by adding either a break or a
> >  fallthrough to suppress the warning you are just destroying the
> >  information that "the intent of this code is unknown".
>
> If you don't know what the intent of your own code is, then you
> *already* have a problem in your hands.

The maintainer is not necessarily the owner/author of the code, and
thus may not know the intent of the code.

> > or does it flag up code
> >  that can be mindlessly "fixed" (in which case the warning is
> >  worthless)?  Proponents in this thread seem to be trying to
> >  have it both ways.
>
> A warning is not worthless just because you can mindlessly fix it.
> There are many counterexamples, e.g. many
> checkpatch/lint/lang-format/indentation warnings, functional ones like
> the `if (a = b)` warning...

BTW, you cannot mindlessly fix the latter, as you cannot know if
"(a == b)" or "((a = b))" was intended, without understanding the code
(and the (possibly unavailable) data sheet, and the hardware, ...).

P.S. So far I've stayed out of this thread, as I like it if the compiler
     flags possible mistakes.  After all I was the one fixing new
     "may be used uninitialized" warnings thrown up by gcc-4.1, until
     (a bit later than) support for that compiler was removed...

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CAMuHMdV5kOakvZJMWLxbpigFPS%2BXuw6DVYsWCWZy7wGsv3idcw%40mail.gmail.com.
