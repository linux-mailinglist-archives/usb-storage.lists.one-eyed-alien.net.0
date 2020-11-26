Return-Path: <usb-storage+bncBCILJWNIZYHBBMPO7P6QKGQEYC2SY5Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x346.google.com (mail-ot1-x346.google.com [IPv6:2607:f8b0:4864:20::346])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E142C4C0A
	for <lists+usb-storage@lfdr.de>; Thu, 26 Nov 2020 01:30:43 +0100 (CET)
Received: by mail-ot1-x346.google.com with SMTP id e31sf90250ote.0
        for <lists+usb-storage@lfdr.de>; Wed, 25 Nov 2020 16:30:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606350642; cv=pass;
        d=google.com; s=arc-20160816;
        b=DzFxPy4rkQF+SUL7X2Ol2dQ1Nevuek5DeQNjp0bDwf4K5fYPJ8fmHO1yNS6Edcn7yp
         9WBe2fVltpLLnQ3WcSN1GVoCRHXeGSsdqbsjbRZqJQLtDMcWIfqWCslhI4GYepop56JO
         1/EHJ4UxJCLgPYj6oeZjAddCZL2oIFlzUqADpiYMu1igCIW+yqTpYNuy4NQJEW/FHwRc
         +t2b51KO+K3IchiBAtSJeQaeT0ZhZRh67CPMDwxC0HnsQV+Scp5hy62iscVR0wdInRmD
         3WNV37WIRiP9edt4MJEybiK3rVwbpyOXzv0rkc1rINGZs6MFeZzgTX7MtwTNOPgdVJDy
         NZZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:sender:dkim-signature;
        bh=+Xg2mmVnX1qL7bxtTWElFfAh/8FHZi1rzRHG5BDJfrE=;
        b=D23bSeb8vlWUOkfUzAQmpC140xsEyJlafeGJlmIiyusehZ4baYqrcMANeRL0xYH+2a
         0czZ73AdBP9Tg3cCCsfduYBzvUU84j7ZtPOZgJ2IQ0tddHQ7JWGGjTaAsMNJHdxPqeyT
         DnAjaF8nc6sV+d16knHfVR5+t820gmrDp6U7QIB1ClbgiLqeG/sZtAzwI6BTw8NueGZ0
         Fy71YUVf/PQ6U5KrK4ubL52DlGhyl03/TmhNd+krVFM1noQX1gG8JXRAJe8+dC+MjgyG
         DFEbRiEuX41qdTsOQgWRdMk8yEsv9f0H4K2zZmv8fomzLQIIA1pE+9a/1ETbo9O8Rd8U
         3nzQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of fthain@telegraphics.com.au designates 98.124.60.144 as permitted sender) smtp.mailfrom=fthain@telegraphics.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+Xg2mmVnX1qL7bxtTWElFfAh/8FHZi1rzRHG5BDJfrE=;
        b=GykSDxBX1L4z0hIQQNsCF86eXvblfhWjdI4o3IPDwz7B5/gEgu8C6etDGls9fpbXh2
         n9R6JIx+ylQa6RhEYdivkXY2nisQ3oX+0DTwFhXYyOLI8W9Zufk/Mc6SCDd43DZdHxD9
         SbA+KI1VpPggMa8ScqRL73YKul0e+NRFbgKcg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+Xg2mmVnX1qL7bxtTWElFfAh/8FHZi1rzRHG5BDJfrE=;
        b=S+bqIb4t1FUufmmpt+PFzk1l2wJw7pB2MA5NIpxWx4wlFvoRv1wIaIbCzNWCdC2278
         trmsxqwfbAXMShfdCg5ji1TFu/zerdmgaQUv9i5NuGGYWlEnqSiy6Cxuy7nj5LmdMxAJ
         Hu67g397j/qgrac+LTGhVq1mY4MS83l8vDLbM1fjF/jcDLx+AJYShhdjaknLW4idx3D/
         CQTA2IQnmxpT+68kFcF3YMH/CGvNUDb6J4wX/bGKfzlkVIK3K8JtkqU4fKvsBZtJmpv5
         C4Um9Ieqi1nSZLrvtZD4PH172j903cZEzJIX6n/VcTHSTX/B7XCth1noWu/M0lGtvX0F
         pllQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533AoiTbK5G9Q47wreLd7U5ws7FzJhTOGBhPXdoU4fugmMuWFgpE
	y0rV+CrdBANNhXyO9ufrUDDMvA==
X-Google-Smtp-Source: ABdhPJzI/OghxPnYQ5B0Y3XttyWpS5NyB79eSQ0zj6fT1NL/nKKPmLC+H9M+kwCuz88YyqTWvZDmBg==
X-Received: by 2002:aca:c208:: with SMTP id s8mr466224oif.49.1606350642356;
        Wed, 25 Nov 2020 16:30:42 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6830:1f59:: with SMTP id u25ls73400oth.1.gmail; Wed, 25
 Nov 2020 16:30:41 -0800 (PST)
X-Received: by 2002:a9d:6f0a:: with SMTP id n10mr606850otq.268.1606350641466;
        Wed, 25 Nov 2020 16:30:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606350641; cv=none;
        d=google.com; s=arc-20160816;
        b=Qen4hkTSba82s21UW0eXJl8nRopWLdCMfFsCNkotThjj+4WbNbKA4Fnsv9GiuCUD/m
         9R+i9AwqDNMlFv9zK0RSUP/zU3VRtjneWjvEwpPUKqcKbjcyDYs+O792NzRxrDg9Mzup
         gVJeGIUs4CAxcZDP8wiWaQ3R+WVhsgTbH9mvdMmGPOTmzfEPkjWk2u5ciP3ioTFbeXe6
         D2F8ZyM3T5A8rGkfpSV949LW19wrjs4hsFzXyORyvXmitpevjIGoilD0sP4ZGkWE7olU
         RbVy7ocmqArZ/BbPlp2IUYDehLgMbGSOY6xgtQHpi+jE3J20/gJaBjisYQ1a1f/KP9yz
         CeSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date;
        bh=M7UU1XruReqkgV2EZo8qKWtBkhyhIOgt13YiwD+M9q4=;
        b=QXHIZanMmUooAWljO4csPKoKHJi7kjHp1vk2lXEwF6zqKOQCFCaQalRS+OaHWVmh+c
         n5oZGbleLmL1zNLCa2MbRawU0756pZ46SyjPx8QahA4Wsx9P62rQ20Hj7SoXiPCG1V7G
         POlrwQloEFbwHySvn3B8dOLSNONY3Wryvj+/HffXUb3ALDyU4hm0/22WOCwjkvfAf1Jm
         Y90f7dCUx2PO3eASxuRP2KFtgo3dLVxETd9KKMtrNWd5pxT78VyqpRLp8QgOgauDZUcW
         rr5kFspDmrGFmtvuQ9FRfxRIZEYgfYbtv4ka7chI5dutIc1Ljr5sKH1goQMc4+1mEl3O
         XmUQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of fthain@telegraphics.com.au designates 98.124.60.144 as permitted sender) smtp.mailfrom=fthain@telegraphics.com.au
Received: from kvm5.telegraphics.com.au (kvm5.telegraphics.com.au. [98.124.60.144])
        by mx.google.com with ESMTP id x66si2300959ota.71.2020.11.25.16.30.41
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 25 Nov 2020 16:30:41 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of fthain@telegraphics.com.au designates 98.124.60.144 as permitted sender) client-ip=98.124.60.144;
Received: from localhost (localhost.localdomain [127.0.0.1])
	by kvm5.telegraphics.com.au (Postfix) with ESMTP id 742A42A495;
	Wed, 25 Nov 2020 19:30:37 -0500 (EST)
Date: Thu, 26 Nov 2020 11:30:36 +1100 (AEDT)
From: Finn Thain <fthain@telegraphics.com.au>
To: Nick Desaulniers <ndesaulniers@google.com>
cc: James Bottomley <James.Bottomley@hansenpartnership.com>, 
    Kees Cook <keescook@chromium.org>, 
    "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
    Joe Perches <joe@perches.com>, Jakub Kicinski <kuba@kernel.org>, 
    alsa-devel@alsa-project.org, linux-atm-general@lists.sourceforge.net, 
    reiserfs-devel@vger.kernel.org, linux-iio@vger.kernel.org, 
    linux-wireless <linux-wireless@vger.kernel.org>, 
    linux-fbdev@vger.kernel.org, dri-devel <dri-devel@lists.freedesktop.org>, 
    LKML <linux-kernel@vger.kernel.org>, 
    Nathan Chancellor <natechancellor@gmail.com>, linux-ide@vger.kernel.org, 
    dm-devel@redhat.com, keyrings@vger.kernel.org, 
    linux-mtd@lists.infradead.org, GR-everest-linux-l2@marvell.com, 
    wcn36xx@lists.infradead.org, samba-technical@lists.samba.org, 
    linux-i3c@lists.infradead.org, linux1394-devel@lists.sourceforge.net, 
    linux-afs@lists.infradead.org, usb-storage@lists.one-eyed-alien.net, 
    drbd-dev@lists.linbit.com, devel@driverdev.osuosl.org, 
    linux-cifs@vger.kernel.org, rds-devel@oss.oracle.com, 
    linux-scsi@vger.kernel.org, linux-rdma@vger.kernel.org, 
    oss-drivers@netronome.com, bridge@lists.linux-foundation.org, 
    linux-security-module@vger.kernel.org, 
    amd-gfx list <amd-gfx@lists.freedesktop.org>, 
    linux-stm32@st-md-mailman.stormreply.com, cluster-devel@redhat.com, 
    linux-acpi@vger.kernel.org, coreteam@netfilter.org, 
    intel-wired-lan@lists.osuosl.org, linux-input@vger.kernel.org, 
    Miguel Ojeda <ojeda@kernel.org>, tipc-discussion@lists.sourceforge.net, 
    linux-ext4@vger.kernel.org, linux-media@vger.kernel.org, 
    linux-watchdog@vger.kernel.org, selinux@vger.kernel.org, 
    linux-arm-msm <linux-arm-msm@vger.kernel.org>, 
    intel-gfx@lists.freedesktop.org, linux-geode@lists.infradead.org, 
    linux-can@vger.kernel.org, linux-block@vger.kernel.org, 
    linux-gpio@vger.kernel.org, op-tee@lists.trustedfirmware.org, 
    linux-mediatek@lists.infradead.org, xen-devel@lists.xenproject.org, 
    nouveau@lists.freedesktop.org, linux-hams@vger.kernel.org, 
    ceph-devel@vger.kernel.org, virtualization@lists.linux-foundation.org, 
    Linux ARM <linux-arm-kernel@lists.infradead.org>, 
    linux-hwmon@vger.kernel.org, 
    "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, 
    linux-nfs@vger.kernel.org, GR-Linux-NIC-Dev@marvell.com, 
    Linux Memory Management List <linux-mm@kvack.org>, 
    Network Development <netdev@vger.kernel.org>, 
    linux-decnet-user@lists.sourceforge.net, linux-mmc@vger.kernel.org, 
    Linux-Renesas <linux-renesas-soc@vger.kernel.org>, 
    linux-sctp@vger.kernel.org, linux-usb@vger.kernel.org, 
    netfilter-devel@vger.kernel.org, 
    "open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>, 
    patches@opensource.cirrus.com, linux-integrity@vger.kernel.org, 
    target-devel@vger.kernel.org, linux-hardening@vger.kernel.org, 
    Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
    Greg KH <gregkh@linuxfoundation.org>
Subject: [usb-storage] Re: [Intel-wired-lan] [PATCH 000/141] Fix fall-through
 warnings for Clang
In-Reply-To: <CAKwvOdna5Zj_O=sB7Q0jHZX0BJSaakX=ZyftwQ_3=L3-ZB54XQ@mail.gmail.com>
Message-ID: <alpine.LNX.2.23.453.2011261031290.6@nippy.intranet>
References: <202011201129.B13FDB3C@keescook> <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com> <202011220816.8B6591A@keescook> <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com> <ca071decb87cc7e905411423c05a48f9fd2f58d7.camel@perches.com>
 <0147972a72bc13f3629de8a32dee6f1f308994b5.camel@HansenPartnership.com> <d8d1e9add08cdd4158405e77762d4946037208f8.camel@perches.com> <dbd2cb703ed9eefa7dde9281ea26ab0f7acc8afe.camel@HansenPartnership.com> <20201123130348.GA3119@embeddedor>
 <8f5611bb015e044fa1c0a48147293923c2d904e4.camel@HansenPartnership.com> <202011241327.BB28F12F6@keescook> <a841536fe65bb33f1c72ce2455a6eb47a0107565.camel@HansenPartnership.com> <CAKwvOdkGBn7nuWTAqrORMeN1G+w3YwBfCqqaRD2nwvoAXKi=Aw@mail.gmail.com>
 <alpine.LNX.2.23.453.2011260750300.6@nippy.intranet> <CAKwvOdna5Zj_O=sB7Q0jHZX0BJSaakX=ZyftwQ_3=L3-ZB54XQ@mail.gmail.com>
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



On Wed, 25 Nov 2020, Nick Desaulniers wrote:

> On Wed, Nov 25, 2020 at 1:33 PM Finn Thain <fthain@telegraphics.com.au> wrote:
> >
> > Or do you think that a codebase can somehow satisfy multiple checkers 
> > and their divergent interpretations of the language spec?
> 
> Have we found any cases yet that are divergent? I don't think so. 

You mean, aside from -Wimplicit-fallthrough? I'm glad you asked. How about 
-Wincompatible-pointer-types and -Wframe-larger-than?

All of the following files have been affected by divergent diagnostics 
produced by clang and gcc.

arch/arm64/include/asm/neon-intrinsics.h
arch/powerpc/xmon/Makefile
drivers/gpu/drm/i915/Makefile
drivers/gpu/drm/i915/i915_utils.h
drivers/staging/media/atomisp/pci/atomisp_subdev.c
fs/ext4/super.c
include/trace/events/qla.h
net/mac80211/rate.c
tools/lib/string.c
tools/perf/util/setup.py
tools/scripts/Makefile.include

And if I searched for 'smatch' or 'coverity' instead of 'clang' I'd 
probably find more divergence.

Here are some of the relevant commits.

0738c8b5915c7eaf1e6007b441008e8f3b460443
9c87156cce5a63735d1218f0096a65c50a7a32aa
babaab2f473817f173a2d08e410c25abf5ed0f6b
065e5e559555e2f100bc95792a8ef1b609bbe130
93f56de259376d7e4fff2b2d104082e1fa66e237
6c4798d3f08b81c2c52936b10e0fa872590c96ae
b7a313d84e853049062011d78cb04b6decd12f5c
093b75ef5995ea35d7f6bdb6c7b32a42a1999813

And before you object, "but -Wconstant-logical-operand is a clang-only 
warning! it can't be divergent with gcc!", consider that the special cases 
added to deal with clang-only warnings have to be removed when gcc catches 
up, which is more churn. Now multiply that by the number of checkers you 
care about.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/alpine.LNX.2.23.453.2011261031290.6%40nippy.intranet.
