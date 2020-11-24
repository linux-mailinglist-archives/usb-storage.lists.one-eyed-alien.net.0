Return-Path: <usb-storage+bncBCILJWNIZYHBBQ5V6H6QKGQE4B5K2JY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x146.google.com (mail-il1-x146.google.com [IPv6:2607:f8b0:4864:20::146])
	by mail.lfdr.de (Postfix) with ESMTPS id 487952C1A45
	for <lists+usb-storage@lfdr.de>; Tue, 24 Nov 2020 01:58:45 +0100 (CET)
Received: by mail-il1-x146.google.com with SMTP id j8sf14736838ilr.11
        for <lists+usb-storage@lfdr.de>; Mon, 23 Nov 2020 16:58:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606179524; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZxQocqlUd81WNzfuoSEd00XvycARa1sZgue0qs18a+KnP2t5m9D86YASuogog7/lsi
         8WgfcW6Dmy3v1jwNM0EMSqv3OqKSGsWC2UBL+fREErS0+6+lhKNOhLBH4GIqdJBAKaWd
         rOAqihcVJYp80oXc9HyKlkTj/NBxdTWpjfA2HlIABc0tv1eDNctnwyNrm4ep2XE5DwRr
         Ldxoh07hMdbnhE2NNQWyf87vDzwxiQExErMy+pI2uup4ttYp2qAV/Uy6qKA3OGeCcAA5
         TmS33w7Q2GZNjfI7ooyZmaBeEhw7FhM6bz5sTy7FHaxdcVbHWbNK80ENZNFCLDztq3LH
         aOpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:sender:dkim-signature;
        bh=hFcGo0u50aDlvK7vuNt4kcw4ZFHgg3sFIXUeYxOF3i8=;
        b=RcEoj684LhHJonJhKEdlq/jo6LnSjC2mRa0GNi/6KLGjlpRx4UCsQ/95D605MlixfS
         93naBzBjFkyEN9//QTaktgmhHqt4hwdr1uwgMukPE9Vv4ILQ1NNes4T6Kt4EicSaRCmO
         ScFzgZQiVy/C/QLHC50mas4U3w39aPYMZjys5Zg4OrxuYmXwlQ13FaLPJX2jYAzxe2/Y
         BFtthJuaMaWd+UFxIqwdzF1Jq0zXLhatwPYJhY4PKBPhYd8veaIX/NQzNH3sVG0nKqXj
         /uS0pzzoaMXeLYtgCnZfmM1gcdho/+rCzV40jGxmS+6/lWBdA+DzdkcEt8IYvJdDK1lb
         NAGw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of fthain@telegraphics.com.au designates 98.124.60.144 as permitted sender) smtp.mailfrom=fthain@telegraphics.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hFcGo0u50aDlvK7vuNt4kcw4ZFHgg3sFIXUeYxOF3i8=;
        b=W9HsP2nKgkhktyGszGXPUXICE7lHL40/iGxMkhf5nD3X8zABhFoMxTVJSlPtWwzeqY
         QpHvUcn4CBp1iWx6kCIOY+Hmv/mZUYUgt0RNeGhiRJtbpMpBh8WA2mcYtNAV1oP4xapA
         2U08R/8DTRTC9ely+kWp8VXKyWhKfDI7rP7hc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hFcGo0u50aDlvK7vuNt4kcw4ZFHgg3sFIXUeYxOF3i8=;
        b=ZdAqKhno7NPE0ocBbTN1dEsUm/05B9Oqca9NEXnO5owPkwvz9j5T2mVJGEw0TEl+nb
         SMp46GzkvkfAet7IasbQ054qpD1YroolpjdOF40NVwp2dKOIqawdfT7LPIchWs4LbR9n
         puGBGAdek8EkrGuuF9XlMMsK9qmXKOaVU5LWn45PZ/KCs9grsyg2QngWfeBTZ9FM/fPj
         Nf3x0fH7q/rE+9UV8Jcc4wI+8OiJt/Sp9g7nkmk9QsEcDfV8YUeO0b5dE+8VpSuWEVlB
         pue1Pt39vVbFtuQPjpCh/LjfjZ4Zo/PMa+oCQzFKH1KbDMemOf11G+6h6Ne6RuZuZyts
         J58w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531J2PXv6rwd6oCdeNmj5kGxs7KAXg6P9adAkNWxRP7SCz597vAy
	M69m41S56oeuXdBBtiIniMg3Ag==
X-Google-Smtp-Source: ABdhPJyd3lTUUxG4jWMsGYXBlj4kffGoO1rMaiO8fDyZ3O6ahSR69ELjcr+jjiXtmNywGVXxJEGHQw==
X-Received: by 2002:a92:3403:: with SMTP id b3mr2257933ila.140.1606179524122;
        Mon, 23 Nov 2020 16:58:44 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6e02:d83:: with SMTP id i3ls4053293ilj.11.gmail; Mon, 23
 Nov 2020 16:58:43 -0800 (PST)
X-Received: by 2002:a92:85c5:: with SMTP id f188mr2240180ilh.173.1606179523595;
        Mon, 23 Nov 2020 16:58:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606179523; cv=none;
        d=google.com; s=arc-20160816;
        b=fC/0hZIAS7OlMBWFjpWv66sJ3NA0wxmxrblgx3pvYoA7pLoaV8R0Eh1sg3WP+ZPBGo
         ipfDe9r5Gh8urLg0sXN7dzUoNAMzMC7iOEG1ypstRLKVZ3wkhJdoIE079ivr3N99I2vo
         3czCZ364HI8sPCSp+bFFqLvWgAYpu2xt39HHU/wRnIPqqjA0VZmknZW/NUMZEXW5aBpj
         H7n73ONg25LzagYofMkjkiS1fWz5wIkxYbPAUh1vKo5g02VBpCDQsotj9zPEH6P8P5Nn
         +pkhl63lBdfyaVnHw2/btgyeVg153qAblTCfyYxj/XFaLcrt8xsPBg+syRTTgPWHc4Jy
         zzoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date;
        bh=FdEU7nZCu98SQ7lE1RE8YB5omj6Y9i/OlbQLfMcnWrM=;
        b=VVuMee3phxBdzg+vQk+2bzZmbseQFQ2ECcx8x+ZJBe0xUvykQcv85EplNIfKyHEAMn
         jh9Gw+tv04uDG7INo+aw0oKLzDiqliw63Qa0X/uerLi5DVoLT/u7QOyYPZJVSbX2D+3H
         nZmGs8JTlo90XWRqLMLnOZqfQdI2tloBzvMtnZNKcrdipYnN5lnMS93GhtlyvhdA39a/
         p+bcwVyXoelM7yKgd942Ya85ye7ZTgOALDnnXKjnrMQBqQjgo/HfXHstrw2PJ5uMEb0n
         62Q1S8HvpgXZ66FwZCvqm9ocEqVDzm1iDVhMWQh41nJ3quP7chkzQ/Jq5CgU3Yhw6DTg
         25BA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of fthain@telegraphics.com.au designates 98.124.60.144 as permitted sender) smtp.mailfrom=fthain@telegraphics.com.au
Received: from kvm5.telegraphics.com.au (kvm5.telegraphics.com.au. [98.124.60.144])
        by mx.google.com with ESMTP id o2si2672496ill.110.2020.11.23.16.58.43
        for <usb-storage@lists.one-eyed-alien.net>;
        Mon, 23 Nov 2020 16:58:43 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of fthain@telegraphics.com.au designates 98.124.60.144 as permitted sender) client-ip=98.124.60.144;
Received: from localhost (localhost.localdomain [127.0.0.1])
	by kvm5.telegraphics.com.au (Postfix) with ESMTP id 0EF842A8E0;
	Mon, 23 Nov 2020 19:58:39 -0500 (EST)
Date: Tue, 24 Nov 2020 11:58:37 +1100 (AEDT)
From: Finn Thain <fthain@telegraphics.com.au>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
cc: James Bottomley <James.Bottomley@hansenpartnership.com>, 
    Kees Cook <keescook@chromium.org>, Jakub Kicinski <kuba@kernel.org>, 
    "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
    linux-kernel <linux-kernel@vger.kernel.org>, alsa-devel@alsa-project.org, 
    amd-gfx@lists.freedesktop.org, bridge@lists.linux-foundation.org, 
    ceph-devel@vger.kernel.org, cluster-devel@redhat.com, 
    coreteam@netfilter.org, devel@driverdev.osuosl.org, dm-devel@redhat.com, 
    drbd-dev@lists.linbit.com, dri-devel@lists.freedesktop.org, 
    GR-everest-linux-l2@marvell.com, GR-Linux-NIC-Dev@marvell.com, 
    intel-gfx@lists.freedesktop.org, intel-wired-lan@lists.osuosl.org, 
    keyrings@vger.kernel.org, linux1394-devel@lists.sourceforge.net, 
    linux-acpi@vger.kernel.org, linux-afs@lists.infradead.org, 
    Linux ARM <linux-arm-kernel@lists.infradead.org>, 
    linux-arm-msm@vger.kernel.org, linux-atm-general@lists.sourceforge.net, 
    linux-block@vger.kernel.org, linux-can@vger.kernel.org, 
    linux-cifs@vger.kernel.org, 
    Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, 
    linux-decnet-user@lists.sourceforge.net, 
    Ext4 Developers List <linux-ext4@vger.kernel.org>, 
    linux-fbdev@vger.kernel.org, linux-geode@lists.infradead.org, 
    linux-gpio@vger.kernel.org, linux-hams@vger.kernel.org, 
    linux-hwmon@vger.kernel.org, linux-i3c@lists.infradead.org, 
    linux-ide@vger.kernel.org, linux-iio@vger.kernel.org, 
    linux-input <linux-input@vger.kernel.org>, linux-integrity@vger.kernel.org, 
    linux-mediatek@lists.infradead.org, 
    Linux Media Mailing List <linux-media@vger.kernel.org>, 
    linux-mmc@vger.kernel.org, Linux-MM <linux-mm@kvack.org>, 
    linux-mtd@lists.infradead.org, linux-nfs@vger.kernel.org, 
    linux-rdma@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
    linux-scsi@vger.kernel.org, linux-sctp@vger.kernel.org, 
    linux-security-module@vger.kernel.org, 
    linux-stm32@st-md-mailman.stormreply.com, linux-usb@vger.kernel.org, 
    linux-watchdog@vger.kernel.org, 
    linux-wireless <linux-wireless@vger.kernel.org>, 
    Network Development <netdev@vger.kernel.org>, 
    netfilter-devel@vger.kernel.org, nouveau@lists.freedesktop.org, 
    op-tee@lists.trustedfirmware.org, oss-drivers@netronome.com, 
    patches@opensource.cirrus.com, rds-devel@oss.oracle.com, 
    reiserfs-devel@vger.kernel.org, samba-technical@lists.samba.org, 
    selinux@vger.kernel.org, target-devel@vger.kernel.org, 
    tipc-discussion@lists.sourceforge.net, 
    usb-storage@lists.one-eyed-alien.net, 
    virtualization@lists.linux-foundation.org, wcn36xx@lists.infradead.org, 
    "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, 
    xen-devel@lists.xenproject.org, linux-hardening@vger.kernel.org, 
    Nick Desaulniers <ndesaulniers@google.com>, 
    Nathan Chancellor <natechancellor@gmail.com>, 
    Miguel Ojeda <ojeda@kernel.org>, Joe Perches <joe@perches.com>
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
In-Reply-To: <CANiq72=z+tmuey9wj3Kk7wX5s0hTHpsQdLhAqcOVNrHon6xn5Q@mail.gmail.com>
Message-ID: <alpine.LNX.2.23.453.2011241036520.7@nippy.intranet>
References: <cover.1605896059.git.gustavoars@kernel.org> <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com> <202011201129.B13FDB3C@keescook> <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com> <202011220816.8B6591A@keescook>
 <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com> <CANiq72nZrHWTA4_Msg6MP9snTyenC6-eGfD27CyfNSu7QoVZbw@mail.gmail.com> <alpine.LNX.2.23.453.2011230938390.7@nippy.intranet>
 <CANiq72=z+tmuey9wj3Kk7wX5s0hTHpsQdLhAqcOVNrHon6xn5Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: fthain@telegraphics.com.au
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 best guess record for domain of fthain@telegraphics.com.au designates
 98.124.60.144 as permitted sender) smtp.mailfrom=fthain@telegraphics.com.au
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


On Mon, 23 Nov 2020, Miguel Ojeda wrote:

> On Mon, 23 Nov 2020, Finn Thain wrote:
> 
> > On Sun, 22 Nov 2020, Miguel Ojeda wrote:
> > 
> > > 
> > > It isn't that much effort, isn't it? Plus we need to take into 
> > > account the future mistakes that it might prevent, too.
> > 
> > We should also take into account optimisim about future improvements 
> > in tooling.
> > 
> Not sure what you mean here. There is no reliable way to guess what the 
> intention was with a missing fallthrough, even if you parsed whitespace 
> and indentation.
> 

What I meant was that you've used pessimism as if it was fact.

For example, "There is no way to guess what the effect would be if the 
compiler trained programmers to add a knee-jerk 'break' statement to avoid 
a warning".

Moreover, what I meant was that preventing programmer mistakes is a 
problem to be solved by development tools. The idea that retro-fitting new 
language constructs onto mature code is somehow necessary to "prevent 
future mistakes" is entirely questionable.

> > > So even if there were zero problems found so far, it is still a 
> > > positive change.
> > > 
> > 
> > It is if you want to spin it that way.
> > 
> How is that a "spin"? It is a fact that we won't get *implicit* 
> fallthrough mistakes anymore (in particular if we make it a hard error).
> 

Perhaps "handwaving" is a better term?

> > > I would agree if these changes were high risk, though; but they are 
> > > almost trivial.
> > > 
> > 
> > This is trivial:
> > 
> >  case 1:
> >         this();
> > +       fallthrough;
> >  case 2:
> >         that();
> > 
> > But what we inevitably get is changes like this:
> > 
> >  case 3:
> >         this();
> > +       break;
> >  case 4:
> >         hmmm();
> > 
> > Why? Mainly to silence the compiler. Also because the patch author 
> > argued successfully that they had found a theoretical bug, often in 
> > mature code.
> > 
> If someone changes control flow, that is on them. Every kernel developer 
> knows what `break` does.
> 

Sure. And if you put -Wimplicit-fallthrough into the Makefile and if that 
leads to well-intentioned patches that cause regressions, it is partly on 
you.

Have you ever considered the overall cost of the countless 
-Wpresume-incompetence flags?

Perhaps you pay the power bill for a build farm that produces logs that 
no-one reads? Perhaps you've run git bisect, knowing that the compiler 
messages are not interesting? Or compiled software in using a language 
that generates impenetrable messages? If so, here's a tip:

# grep CFLAGS /etc/portage/make.conf 
CFLAGS="... -Wno-all -Wno-extra ..."
CXXFLAGS="${CFLAGS}"

Now allow me some pessimism: the hardware upgrades, gigawatt hours and 
wait time attributable to obligatory static analyses are a net loss.

> > But is anyone keeping score of the regressions? If unreported bugs 
> > count, what about unreported regressions?
> > 
> Introducing `fallthrough` does not change semantics. If you are really 
> keen, you can always compare the objects because the generated code 
> shouldn't change.
> 

No, it's not for me to prove that such patches don't affect code 
generation. That's for the patch author and (unfortunately) for reviewers.

> Cheers,
> Miguel
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/alpine.LNX.2.23.453.2011241036520.7%40nippy.intranet.
