Return-Path: <usb-storage+bncBDYJPJO25UGBBUWF6H6QKGQENISGP5Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x448.google.com (mail-pf1-x448.google.com [IPv6:2607:f8b0:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id 934AD2C1AD9
	for <lists+usb-storage@lfdr.de>; Tue, 24 Nov 2020 02:33:07 +0100 (CET)
Received: by mail-pf1-x448.google.com with SMTP id u3sf14218788pfm.22
        for <lists+usb-storage@lfdr.de>; Mon, 23 Nov 2020 17:33:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606181586; cv=pass;
        d=google.com; s=arc-20160816;
        b=c7lbNnDDvPPoVtAwVtlYRxDfHK9AKGP2VcnSKOjqVb3PACAfynr6dkK0rql/N77KKl
         TwtzIdnWv20Or/aSqV8R86D2PaGPBfuvp5TL82Uz1EaUGccsT9vN1/AQUmd5Ti3wTiyD
         jsOXDdcRUw7k7eKnygYGsOld2NfSpy3gCWe3GpSZsLkHZ09qR5Vee+8mgBCQgHMtT612
         bk++aRPb/Mhua6MMM//yjugtGV7ZYBWY6PjWAaL6Xmn626uhS/afOSy+0MfhQ09gfhMr
         pc/VoSccMIcgjrnByH0I5ZOLXFpEPYndWE302yhefKzL3IjWZ440uDR31beZ0/Mq9tbS
         CJ3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=2hZOLPYCLHoPF2/UQHaMzWdXcTd8os2NxYyzUXdjBCM=;
        b=oK0YBKHedrDXhTCBw2L8w0Vlod1YDGf+q+ev4WJ0b8qrgsE4bTA3Vf8hKITLZ/u5y+
         3gfH+W0oqvDiBQqNi+u/VFfdWyYRcrFbo3HKQ3uZfWk4EHy2Y3QJe5cKtUcBVbs7IRXc
         eJLCN1CEXEBCjOB4X9AQWbCHV/bpTMZin4k1kxu1UuKP9NDbA/IeEFqAglNe/xwUooag
         pWoe2pwFIFVwDv3nTBReQNlzaOwdTnSVoaxEJ7/hA++FmH/APSvCDnl+jUXOYvTrvOdA
         /ZQ7c16CO1M12QBZTh1i2JuB9xVNnigdw5LONKL36s7/psTWSuNCln13VX2lhdBSjRIE
         kiMw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mZ10EKN9;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2hZOLPYCLHoPF2/UQHaMzWdXcTd8os2NxYyzUXdjBCM=;
        b=c2RXJkN3VGDLCoIp07S8jRaqTwxGewQYFlFJVRr3+SJktl4Res5rAKz7Lx7+K5tkpL
         y0ckjgEqHyz+DdiET9NlaiPZ/KSXbBsjPIy69sZLhqxkLLl3w0k0IF+BIZR/nNpwS5mz
         qR/P0LOD674kuqLeNVRWByRDsXqLsnVxJiFG0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2hZOLPYCLHoPF2/UQHaMzWdXcTd8os2NxYyzUXdjBCM=;
        b=MeTgjqa/lrRCKgzUOJgbl1lkSP6mIapaAwj8Emj/BWS79kR+E+enlw63OQFVBgpqHj
         G7/HQ735z+8vcKV2SSuTXDAHAzfXjDs4n7fYcpQk2cnqR/iGsSXCdHHRu2Rv2sLCgI3E
         J1Iw9VFwdjl3Gtp0BvyoFsZyBXeNjxGK8xXmOwn1KDHld1Fdi0ZrIJylvRU0mf36QnM8
         64LhJidJi7/QIxDpKqWjRheHByruVMdwECUwkg/6SKrBkK6uC0FdB+Yx3Mq9ASsDREgV
         Q1alZRC/ycAtrN5IGlqeTdCMqi5TbFH0SUsMuD15yhKb6oOqiR/trX1nWzqb1FELc8a0
         Z8lg==
X-Gm-Message-State: AOAM532lfWX3uVThe1G3PAjtpVy2qJ0xu5W1WcN+4G3o0QE+CXtdb9tA
	y4QN9D+gANrUnuziVkcXnboaVg==
X-Google-Smtp-Source: ABdhPJwyLJggJ3KXseUJ+nNFysyZYDLgF54JBivra3OAyRWZjP0M7P+m35p4UA1t24TVViUy09Fmjg==
X-Received: by 2002:a17:902:bc4a:b029:d6:d985:29cf with SMTP id t10-20020a170902bc4ab02900d6d98529cfmr2046266plz.62.1606181586209;
        Mon, 23 Nov 2020 17:33:06 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:cf08:: with SMTP id h8ls685351pju.3.gmail; Mon, 23
 Nov 2020 17:33:05 -0800 (PST)
X-Received: by 2002:a17:902:ff16:b029:d8:d74d:2e3c with SMTP id f22-20020a170902ff16b02900d8d74d2e3cmr1996649plj.62.1606181585601;
        Mon, 23 Nov 2020 17:33:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606181585; cv=none;
        d=google.com; s=arc-20160816;
        b=i+fR9Kyi4j6R/hDm+A+iQe3/rQNu2g+rupsrcg72vs2l070SvvMcVOT++UbLueAQ3X
         ZGo4v+1qxI00gMNoSfENgVYAnkvH9GJLJkicC98Bz/Z2pYXwWdHdWvwy0rAtyKhOQENk
         T66eFOcOcX5ref4L9vS8qUZUAJTCVypCLsNR94U/EE8GTDDbwYBhLSdgX6UqKSqIlKFx
         LZRReuImG33soz5j/arETuw5hu9onoOPy7KOuA9CDZnKVbl003nwWNJ4OAypDy/3D+Il
         1Mpj2XP5o+dN5vVt1XBj+Tv5iXu9eInfBpEHDyADrv0OnmZITfXkodvANWwAhFjaw8rQ
         xzRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1Fpt+3NGNjcuXPoKd+YKzvfWCCI+i2QS11ln4xb/K2c=;
        b=XEgw42+Ws8Kib+DaE7MQyQNoT450hxwCzfcVZXbjX4zmFfZ3yUH7k16UhEPPbP1PkT
         /H/qZr3HOZFbaci+S9AHtqy+14A6k3RIl0+YtQ2iZhGDjqieKH4J8eGItH4tOJNcphtf
         xHO0MfCAcGNbvS53pOOe5MjunDftIU3dXTt1CNayOdoE4KzBsLTcPGl3FYd6FDTgr1Az
         i8XtqNFDyQIkc6FhJgOyTkRyZQB3xRuZBntXbMhTw5bTEsk5W7YmwhpPfABr7B1CQigC
         24t7n/ozffeqW0m72/uDURUwetM2RA3K5eF60PFeHv7KYOE1bULh2MYgKVhmOW945p91
         QcxQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mZ10EKN9;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id 130sor5205215pgg.51.2020.11.23.17.33.05
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 23 Nov 2020 17:33:05 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a65:6a4e:: with SMTP id o14mr1859973pgu.263.1606181584110;
 Mon, 23 Nov 2020 17:33:04 -0800 (PST)
MIME-Version: 1.0
References: <cover.1605896059.git.gustavoars@kernel.org> <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011201129.B13FDB3C@keescook> <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011220816.8B6591A@keescook>
In-Reply-To: <202011220816.8B6591A@keescook>
From: "'Nick Desaulniers' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Date: Mon, 23 Nov 2020 17:32:51 -0800
Message-ID: <CAKwvOdntVfXj2WRR5n6Kw7BfG7FdKpTeHeh5nPu5AzwVMhOHTg@mail.gmail.com>
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
To: Kees Cook <keescook@chromium.org>
Cc: Jakub Kicinski <kuba@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, alsa-devel@alsa-project.org, 
	amd-gfx list <amd-gfx@lists.freedesktop.org>, bridge@lists.linux-foundation.org, 
	ceph-devel@vger.kernel.org, cluster-devel@redhat.com, coreteam@netfilter.org, 
	devel@driverdev.osuosl.org, dm-devel@redhat.com, drbd-dev@lists.linbit.com, 
	dri-devel <dri-devel@lists.freedesktop.org>, GR-everest-linux-l2@marvell.com, 
	GR-Linux-NIC-Dev@marvell.com, intel-gfx@lists.freedesktop.org, 
	intel-wired-lan@lists.osuosl.org, keyrings@vger.kernel.org, 
	linux1394-devel@lists.sourceforge.net, linux-acpi@vger.kernel.org, 
	linux-afs@lists.infradead.org, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	linux-arm-msm <linux-arm-msm@vger.kernel.org>, linux-atm-general@lists.sourceforge.net, 
	linux-block@vger.kernel.org, linux-can@vger.kernel.org, 
	linux-cifs@vger.kernel.org, 
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>, linux-decnet-user@lists.sourceforge.net, 
	linux-ext4@vger.kernel.org, linux-fbdev@vger.kernel.org, 
	linux-geode@lists.infradead.org, linux-gpio@vger.kernel.org, 
	linux-hams@vger.kernel.org, linux-hwmon@vger.kernel.org, 
	linux-i3c@lists.infradead.org, linux-ide@vger.kernel.org, 
	linux-iio@vger.kernel.org, linux-input@vger.kernel.org, 
	linux-integrity@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	linux-media@vger.kernel.org, linux-mmc@vger.kernel.org, 
	Linux Memory Management List <linux-mm@kvack.org>, linux-mtd@lists.infradead.org, 
	linux-nfs@vger.kernel.org, linux-rdma@vger.kernel.org, 
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>, linux-scsi@vger.kernel.org, 
	linux-sctp@vger.kernel.org, linux-security-module@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-usb@vger.kernel.org, 
	linux-watchdog@vger.kernel.org, 
	linux-wireless <linux-wireless@vger.kernel.org>, 
	Network Development <netdev@vger.kernel.org>, netfilter-devel@vger.kernel.org, 
	nouveau@lists.freedesktop.org, op-tee@lists.trustedfirmware.org, 
	oss-drivers@netronome.com, patches@opensource.cirrus.com, 
	rds-devel@oss.oracle.com, reiserfs-devel@vger.kernel.org, 
	samba-technical@lists.samba.org, selinux@vger.kernel.org, 
	target-devel@vger.kernel.org, tipc-discussion@lists.sourceforge.net, 
	usb-storage@lists.one-eyed-alien.net, 
	virtualization@lists.linux-foundation.org, wcn36xx@lists.infradead.org, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, xen-devel@lists.xenproject.org, 
	linux-hardening@vger.kernel.org, Nathan Chancellor <natechancellor@gmail.com>, 
	Miguel Ojeda <ojeda@kernel.org>, Joe Perches <joe@perches.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=mZ10EKN9;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Sun, Nov 22, 2020 at 8:17 AM Kees Cook <keescook@chromium.org> wrote:
>
> On Fri, Nov 20, 2020 at 11:51:42AM -0800, Jakub Kicinski wrote:
> > If none of the 140 patches here fix a real bug, and there is no change
> > to machine code then it sounds to me like a W=2 kind of a warning.
>
> FWIW, this series has found at least one bug so far:
> https://lore.kernel.org/lkml/CAFCwf11izHF=g1mGry1fE5kvFFFrxzhPSM6qKAO8gxSp=Kr_CQ@mail.gmail.com/

So looks like the bulk of these are:
switch (x) {
  case 0:
    ++x;
  default:
    break;
}

I have a patch that fixes those up for clang:
https://reviews.llvm.org/D91895

There's 3 other cases that don't quite match between GCC and Clang I
observe in the kernel:
switch (x) {
  case 0:
    ++x;
  default:
    goto y;
}
y:;

switch (x) {
  case 0:
    ++x;
  default:
    return;
}

switch (x) {
  case 0:
    ++x;
  default:
    ;
}

Based on your link, and Nathan's comment on my patch, maybe Clang
should continue to warn for the above (at least the `default: return;`
case) and GCC should change?  While the last case looks harmless,
there were only 1 or 2 across the tree in my limited configuration
testing; I really think we should just add `break`s for those.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CAKwvOdntVfXj2WRR5n6Kw7BfG7FdKpTeHeh5nPu5AzwVMhOHTg%40mail.gmail.com.
