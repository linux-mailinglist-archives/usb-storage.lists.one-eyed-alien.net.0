Return-Path: <usb-storage+bncBDRZHGH43YJRB5OA776QKGQEHEH6EWA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb46.google.com (mail-yb1-xb46.google.com [IPv6:2607:f8b0:4864:20::b46])
	by mail.lfdr.de (Postfix) with ESMTPS id D71442C5A0B
	for <lists+usb-storage@lfdr.de>; Thu, 26 Nov 2020 18:05:58 +0100 (CET)
Received: by mail-yb1-xb46.google.com with SMTP id n62sf3533735ybf.19
        for <lists+usb-storage@lfdr.de>; Thu, 26 Nov 2020 09:05:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606410358; cv=pass;
        d=google.com; s=arc-20160816;
        b=XbLMEI7wQ+yyufEW3HJpsrRTFtSrHVmJbo34kD4IXGgR7ZEdN4Ipi3q/TQ+qm+uPon
         0h0TbbPZ3lx9FCgI8oLC3iO9It7Qctxi8hIKvkdkQ4DkXk53W/rEFbKiNtUicfxe8U4g
         aFGlokLMGBDn5m8hwPFhaW/7/dfvyeiM1n2STc13Vpa914rDcSlTiG2WM8PWN85Whico
         2xO+UrHq6puFXCfqTmSJF2auWmvwMPRBbh3xyotvDf+Fuoq3pPJp481DTHJyYJIzRJto
         2A5gt5O8gnci2sA8a6QPlKxdIWNgofXgS4vSP8+rKqWOYlgu1UtZXHPUbWE+tH/KRXCx
         Yu3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=PzUHnnAABOzlYXI6CmHRk07y5NijqyYjpirLiqwr6aQ=;
        b=grANBz6mHLUKz5DnrLy3rj32flgaKzotz6lJv66tcwDnuMhFuljkjfQ+EJuYEhUPXM
         eK2WRbAvLDvJJN3fw6aRMiSYEJfD2Nhd5pOW4QG3Yk/0eynJacWY4LLXbGSCV10YeiiU
         lm0v0npsUYvC48ZdtPzmxlEzgsqsgac2lAktFqOsqEtlVJh8F5tB5czzjIAT6j/lgUSk
         jMOfvfn2KQ5YNsNLsX3xvrz0ZWTQpJIRPBw6BleV32BEt5H8SzBQ03G3dDzqqbugac7J
         jU1D/8NrNOlxPBGSLuQfEb6pukfkFqtqnmF3CDKap4DbcPe4w6eLpzJSnyayBXcDzfNb
         +LoA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YymqsvqK;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PzUHnnAABOzlYXI6CmHRk07y5NijqyYjpirLiqwr6aQ=;
        b=dZVPoWTl9xfixKmSMfECsBqiaOGuM5LeXmxOydwfloO+n/3w38jHwEOw2xB3Wvj+Dw
         k7JWTzRLGDZij4Fc4fN490Q2GC9eSY+j1rRuQ1s5SkyPEh12fTRSyP3ozP8qW2nzU05j
         UQtug7f4EhLuF6Iv9PCsiyElQCGCaPBQ+1aL8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PzUHnnAABOzlYXI6CmHRk07y5NijqyYjpirLiqwr6aQ=;
        b=J73vZi7rGfu0himRyG35R9axxZnnE3GtP3ea40m3T69pP0sKXvpCFWKurd+NdUhf0C
         cfRwDmosqgPyufK/VLO/jOIiVRG+PcRIEYfldKqTh075GEc7h+iyYMCGbjP1Y5XOJRaw
         K3RKENBZczsAUZ+4w8R4Xd2jDvxZkmedIzpnSbavPEfYz4ySXobZpTGxT1t+QuZDfD5b
         m9Hhh+GKAAYFtHBY93VqXOyAHxGdCwfJ9ooxM1qkcHcLdzUAJ3joOfhQq9K5MCkcK8KB
         muQW+cdjUWn3TRyYw8pR44urBV0XF5flnnsfwxmHzodYI3J2XiQKtTsYA6bV7gEMvnZv
         D6jQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530ueS9v5t7QWkqPW6jf7CoU8Ne9SJ8QubyR10loill4ZGagrqps
	EbvmIAOHCAFZ2Nx36kal4mKcPg==
X-Google-Smtp-Source: ABdhPJxAyosWUYtq51OVajC3Ns+xEpuf/f4FQm1GhU00Om/uO453E64suSljawubFOPXxeXgwXLE8w==
X-Received: by 2002:a25:3a86:: with SMTP id h128mr4325068yba.401.1606410357876;
        Thu, 26 Nov 2020 09:05:57 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a5b:7cd:: with SMTP id t13ls1374269ybq.8.gmail; Thu, 26 Nov
 2020 09:05:57 -0800 (PST)
X-Received: by 2002:a25:c0cf:: with SMTP id c198mr4547744ybf.468.1606410357343;
        Thu, 26 Nov 2020 09:05:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606410357; cv=none;
        d=google.com; s=arc-20160816;
        b=WGIbKWdL91u5NoiV4RNlLu1gt1B4/iScXGBubnCV5BA0mGDL/8LHhOGzlYZpozpx4R
         pT239Ab3iUE6nXNSAK9dNC7SI7GeQ7LKjmZzegG6XDNUtWI5F4HSpcr2FL/fpcvK+XeF
         NrH9pFDA6qC7ScSYk4AednL0JYdVztQqnlrPXVjd5WEN7yTUIISsxyEMXolO1LI3fzIR
         mVn1sv8Gp4VfD+RPMJsLNqlbPW+vkgwOqgF7FQNWyczLZy37TrdSaYrr5m7IGIAydutd
         3phLaVZ6lc/hZIw2K/qD+W0Qv6c0ghvrGAVstoND97rzx4veh63QXr2uJK+M1RCNFA/a
         wCJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=O/jaIJrbif54isUECHds/J8Ujq0NdoNxUTCCwJWwQ80=;
        b=JZE1KPm8Rd45e56pkeZI6qgL9Ysn+nXIrVJPFSUNX7xtgG45uCAFLkLH7JCQWtIb8y
         +PjD0j9W1hvqjoVePEHAiDWl7IdQY3wEiTq84xI3V9V8qb97xOfFSiV36kRficnnlUxc
         kZrKVx6joPE46Yy4nBi3miCUWyol0xsjbj582n890IS3AT9a2tsmLC4Jtoryn43yTPiq
         nYY0JGNeMFcFgNQutt/I1UAqom0uQndYeg+5JrL2TLHhmY+hcL78BEY8WPAiwcHHaIhs
         ad8HHDSamj71RL+dTVD9wGDgs/Zh5riwkXrc4/0AehAbE50tE8ZXnYzBZs9itSXOpRki
         qsRg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YymqsvqK;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id x17sor1879770ybr.52.2020.11.26.09.05.57
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 26 Nov 2020 09:05:57 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a5b:40e:: with SMTP id m14mr4835621ybp.33.1606410357153;
 Thu, 26 Nov 2020 09:05:57 -0800 (PST)
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
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 26 Nov 2020 18:05:45 +0100
Message-ID: <CANiq72=n4rVvmKt0RCb5aOfQydA8bgDxfntRLDieV8Q2efP8Zg@mail.gmail.com>
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
To: Geert Uytterhoeven <geert@linux-m68k.org>
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
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=YymqsvqK;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 209.85.220.41 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Nov 26, 2020 at 4:28 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> The maintainer is not necessarily the owner/author of the code, and
> thus may not know the intent of the code.

Agreed, I was not blaming maintainers -- just trying to point out that
the problem is there :-)

In those cases, it is still very useful: we add the `fallthrough` and
a comment saying `FIXME: fallthrough intended? Figure this out...`.
Thus a previous unknown unknown is now a known unknown. And no new
unknown unknowns will be introduced since we enabled the warning
globally.

> BTW, you cannot mindlessly fix the latter, as you cannot know if
> "(a == b)" or "((a = b))" was intended, without understanding the code
> (and the (possibly unavailable) data sheet, and the hardware, ...).

That's right, I was referring to the cases where the compiler saves
someone time from a typo they just made.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CANiq72%3Dn4rVvmKt0RCb5aOfQydA8bgDxfntRLDieV8Q2efP8Zg%40mail.gmail.com.
