Return-Path: <usb-storage+bncBDXO746SYYBRBTWY5L6QKGQE34D47KY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd45.google.com (mail-io1-xd45.google.com [IPv6:2607:f8b0:4864:20::d45])
	by mail.lfdr.de (Postfix) with ESMTPS id 973402BC7B5
	for <lists+usb-storage@lfdr.de>; Sun, 22 Nov 2020 19:22:07 +0100 (CET)
Received: by mail-io1-xd45.google.com with SMTP id z7sf11097114iom.14
        for <lists+usb-storage@lfdr.de>; Sun, 22 Nov 2020 10:22:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606069326; cv=pass;
        d=google.com; s=arc-20160816;
        b=WAeKINhTKKz2CNyn4zN8dwtRNXbooY67tyqT6K6t7OiTzmr+uhhIIv/X0usK48Kp7q
         EiMLtmmnBe//6l7noNrJJe5FxQv6KfvSG4/MAlbAQswfh2wDxzhz0F6eNfG5atC17pEd
         RYMcnYFzjHCVcEx36YWOiQ8JlvwAk6aXLpGvIhsprtpnx6f5AijOVVLBmkoWgFZMThpV
         k/DiXdQ5vzy+jx5wa3aIKC98lUj9Lc+j49UdPq9XysAL/IJHxE7sbq3HQ0hta5OzpZKH
         Sa7k14NugcTHb1GcKgThelKwc3ferlVOzEprIWYBabKGw58Z+Bs/P/YB6HlogjKgi09C
         4wEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=Vs6E/iEao2zs8OpTj3raOaS0ndFaGSqdMYRXlZdxyG4=;
        b=D5NPjeWkv9XqCDhFJHYgj9NL7smHSV4WpKI5ZTvMa8gtBmiQiAkJHqZs1dQR+rfrdn
         dnVjjLkO4Ey0zGwtf9C31cIU6nd9iQoyQDkOCgMcY4ep0qL5JlQeVY16Ta32bArPzLZn
         v8bFoQq4AHLmeqXjgRPZIUMFmC66wAeHvEn9011BGMd/3ZeinToLl4NFNI5RvgrBRWC+
         uG/UOaO1k7lTl71Mgrn/Ua2CXCDrD8athsX+3Kty4uoFD11cd9EmoZfTAeChRlzU0R27
         SVSKQl62D8Us4FandsZZXyy/d0RQ/BEM0RqtOTjrNmJflbcOW/g6HrDJl+HxHglls9eJ
         tkrQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=rW4pDHaL;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=rW4pDHaL;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 2607:fcd0:100:8a00::2 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Vs6E/iEao2zs8OpTj3raOaS0ndFaGSqdMYRXlZdxyG4=;
        b=YnrMHnAzUsIfD9LPWfL5f8MMu8x+xTBrQvJzJTENDt1yJxCfzTjYQtsM0Cf1TidOAH
         wO+K40VTYYoznylrYkb7avuu3hhln6zqIEHe1Qw4ltbqNncIITN/PDISENRFjt6Dp+3B
         PAofNl92j6jiyVuoPqhzt1IAEoDqa+OqvnH+w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Vs6E/iEao2zs8OpTj3raOaS0ndFaGSqdMYRXlZdxyG4=;
        b=U5QRU1r68AP/Xl1TfzZPDPVBFK3n7loi6Dod1m4vAVWyKrcu5AlR0Fjjbwrdt1FZHk
         H2Bx0MB1BzMabzlGlQ+qTF/lB64moeCkToTxCzDy2MP1Y9xrj0XM2qCfmxfXmUF+UlJ+
         TjkANiIYuHcVJNAdLWhBHW+5tWIOzBGdAV+ZdO7I7x9kDKXvpDSWeOkNZfEOg7VnG3Ki
         KoLWEPNqgTbmFxVTyKB56IhsFVWGNcSu+zBu2Bz/A+DTGlZzzvvY03rVQH+W2nJAKKWi
         tnLO5vcZ65o8e4g6CNfRicQQiF2JNSZ5879NMD9qSbo/6EcxGjqAO/8cZo9o9O1JGGLO
         Q4iA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532b18VxHEDRIi6tUYmzyeXbQFb9IInpvAlKkXqqpggFzdQM9YJf
	poUuX156Y1uGH154Fe8IcP+7/g==
X-Google-Smtp-Source: ABdhPJy22QiYX67v8am4r3zfBOSgGQ8V3ivPqli914lF0BLPsAU5u7fQOaY484bnV12NdU3i6aKSNA==
X-Received: by 2002:a02:944c:: with SMTP id a70mr13185550jai.138.1606069326539;
        Sun, 22 Nov 2020 10:22:06 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6e02:16cf:: with SMTP id 15ls502389ilx.10.gmail; Sun, 22
 Nov 2020 10:22:06 -0800 (PST)
X-Received: by 2002:a92:9f42:: with SMTP id u63mr34289857ili.146.1606069326086;
        Sun, 22 Nov 2020 10:22:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606069326; cv=none;
        d=google.com; s=arc-20160816;
        b=OU7MIYH9RcD/aB6LzyEKyXO1njq760RrTJ5LgSpOI/MPJGEIjxrfC87pHowNGC8Dd6
         h7yeuzg1UbQmZ7EQqW2W3/SLiAEvepCtbzzIG/YLq4j9rVPurvQYZRgDqt+GmKTqFt9W
         AbsTg0t/mB1C+v/GLmQTYWeaMPS1I+t/ygbqY+WU7OZz/kslw7GsktUlYEa04B0dPINx
         lQCEZVSdkcv98CoqAg3xTO53CScL/tE8duFxgd9rrddjRtWANJwg/rUcDKYXWRmrq16q
         pFdCfMkJ/ANRxREx2ErPHtgQ9l1s4jl+NSnmqbX/0L/42YdFys6kaB5g733dtVgBrCh9
         QzPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature
         :dkim-signature;
        bh=2HqRcsaNCzZ1X6gj2ie/EBsyVR/YqtvG9bPeZKa24lQ=;
        b=gcAxWt32aBOhbQU+65Tpq08eW2gs72QhlVSEY65CZTt2G3tjFUpNqD6zvu/wlaCpOM
         t8VWfqZCAP/uKAT1DSlVgDUb5Eq2znNo23v1DmYSF8m9ciaC45NoPZrGu64n+pBxvc4q
         MnZCS1ZwMJvyaiYYqVsseIWD6xqTYd4u2H5CWV2eKWkOync/uKJnyH6N9YmPAON3CKMS
         mtTcR62m2LlYMBJ/uW7O1e3foC4SaVEjGmxUIPuo2Ypo0I9l4T9MgLBSAnzmyvF1Y8s/
         RsXMcJxiz2V+hT2oCsH6K0pJtuDDFMapSVtc6SV2Z0yZnf9ExEZzUJ18jOYoYJMccIgP
         VpLQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=rW4pDHaL;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=rW4pDHaL;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 2607:fcd0:100:8a00::2 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com. [2607:fcd0:100:8a00::2])
        by mx.google.com with ESMTPS id b8si5989468ile.42.2020.11.22.10.22.06
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 22 Nov 2020 10:22:06 -0800 (PST)
Received-SPF: pass (google.com: domain of james.bottomley@hansenpartnership.com designates 2607:fcd0:100:8a00::2 as permitted sender) client-ip=2607:fcd0:100:8a00::2;
Received: from localhost (localhost [127.0.0.1])
	by bedivere.hansenpartnership.com (Postfix) with ESMTP id 5BB5B128028F;
	Sun, 22 Nov 2020 10:22:04 -0800 (PST)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
	by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nGXBdIQjsZJa; Sun, 22 Nov 2020 10:22:04 -0800 (PST)
Received: from jarvis.int.hansenpartnership.com (unknown [IPv6:2601:600:8280:66d1::527])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id DB46B1280287;
	Sun, 22 Nov 2020 10:22:00 -0800 (PST)
Message-ID: <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Kees Cook <keescook@chromium.org>, Jakub Kicinski <kuba@kernel.org>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
 linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org, 
 amd-gfx@lists.freedesktop.org, bridge@lists.linux-foundation.org, 
 ceph-devel@vger.kernel.org, cluster-devel@redhat.com,
 coreteam@netfilter.org,  devel@driverdev.osuosl.org, dm-devel@redhat.com,
 drbd-dev@lists.linbit.com,  dri-devel@lists.freedesktop.org,
 GR-everest-linux-l2@marvell.com,  GR-Linux-NIC-Dev@marvell.com,
 intel-gfx@lists.freedesktop.org,  intel-wired-lan@lists.osuosl.org,
 keyrings@vger.kernel.org,  linux1394-devel@lists.sourceforge.net,
 linux-acpi@vger.kernel.org,  linux-afs@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,  linux-arm-msm@vger.kernel.org,
 linux-atm-general@lists.sourceforge.net,  linux-block@vger.kernel.org,
 linux-can@vger.kernel.org,  linux-cifs@vger.kernel.org,
 linux-crypto@vger.kernel.org,  linux-decnet-user@lists.sourceforge.net,
 linux-ext4@vger.kernel.org,  linux-fbdev@vger.kernel.org,
 linux-geode@lists.infradead.org,  linux-gpio@vger.kernel.org,
 linux-hams@vger.kernel.org,  linux-hwmon@vger.kernel.org,
 linux-i3c@lists.infradead.org,  linux-ide@vger.kernel.org,
 linux-iio@vger.kernel.org,  linux-input@vger.kernel.org,
 linux-integrity@vger.kernel.org,  linux-mediatek@lists.infradead.org,
 linux-media@vger.kernel.org,  linux-mmc@vger.kernel.org,
 linux-mm@kvack.org, linux-mtd@lists.infradead.org, 
 linux-nfs@vger.kernel.org, linux-rdma@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, linux-scsi@vger.kernel.org, 
 linux-sctp@vger.kernel.org, linux-security-module@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, linux-usb@vger.kernel.org, 
 linux-watchdog@vger.kernel.org, linux-wireless@vger.kernel.org, 
 netdev@vger.kernel.org, netfilter-devel@vger.kernel.org, 
 nouveau@lists.freedesktop.org, op-tee@lists.trustedfirmware.org, 
 oss-drivers@netronome.com, patches@opensource.cirrus.com, 
 rds-devel@oss.oracle.com, reiserfs-devel@vger.kernel.org, 
 samba-technical@lists.samba.org, selinux@vger.kernel.org, 
 target-devel@vger.kernel.org, tipc-discussion@lists.sourceforge.net, 
 usb-storage@lists.one-eyed-alien.net, 
 virtualization@lists.linux-foundation.org, wcn36xx@lists.infradead.org, 
 x86@kernel.org, xen-devel@lists.xenproject.org,
 linux-hardening@vger.kernel.org,  Nick Desaulniers
 <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>,
 Miguel Ojeda <ojeda@kernel.org>, Joe Perches <joe@perches.com>
Date: Sun, 22 Nov 2020 10:21:59 -0800
In-Reply-To: <202011220816.8B6591A@keescook>
References: <cover.1605896059.git.gustavoars@kernel.org>
	 <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
	 <202011201129.B13FDB3C@keescook>
	 <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
	 <202011220816.8B6591A@keescook>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.4
MIME-Version: 1.0
X-Original-Sender: James.Bottomley@hansenpartnership.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@hansenpartnership.com header.s=20151216 header.b=rW4pDHaL;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216
 header.b=rW4pDHaL;       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com
 designates 2607:fcd0:100:8a00::2 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
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

On Sun, 2020-11-22 at 08:17 -0800, Kees Cook wrote:
> On Fri, Nov 20, 2020 at 11:51:42AM -0800, Jakub Kicinski wrote:
> > On Fri, 20 Nov 2020 11:30:40 -0800 Kees Cook wrote:
> > > On Fri, Nov 20, 2020 at 10:53:44AM -0800, Jakub Kicinski wrote:
> > > > On Fri, 20 Nov 2020 12:21:39 -0600 Gustavo A. R. Silva wrote:  
> > > > > This series aims to fix almost all remaining fall-through
> > > > > warnings in order to enable -Wimplicit-fallthrough for Clang.
> > > > > 
> > > > > In preparation to enable -Wimplicit-fallthrough for Clang,
> > > > > explicitly add multiple break/goto/return/fallthrough
> > > > > statements instead of just letting the code fall through to
> > > > > the next case.
> > > > > 
> > > > > Notice that in order to enable -Wimplicit-fallthrough for
> > > > > Clang, this change[1] is meant to be reverted at some point.
> > > > > So, this patch helps to move in that direction.
> > > > > 
> > > > > Something important to mention is that there is currently a
> > > > > discrepancy between GCC and Clang when dealing with switch
> > > > > fall-through to empty case statements or to cases that only
> > > > > contain a break/continue/return statement[2][3][4].  
> > > > 
> > > > Are we sure we want to make this change? Was it discussed
> > > > before?
> > > > 
> > > > Are there any bugs Clangs puritanical definition of fallthrough
> > > > helped find?
> > > > 
> > > > IMVHO compiler warnings are supposed to warn about issues that
> > > > could be bugs. Falling through to default: break; can hardly be
> > > > a bug?!  
> > > 
> > > It's certainly a place where the intent is not always clear. I
> > > think this makes all the cases unambiguous, and doesn't impact
> > > the machine code, since the compiler will happily optimize away
> > > any behavioral redundancy.
> > 
> > If none of the 140 patches here fix a real bug, and there is no
> > change to machine code then it sounds to me like a W=2 kind of a
> > warning.
> 
> FWIW, this series has found at least one bug so far:
> https://lore.kernel.org/lkml/CAFCwf11izHF=g1mGry1fE5kvFFFrxzhPSM6qKAO8gxSp=Kr_CQ@mail.gmail.com/


Well, it's a problem in an error leg, sure, but it's not a really
compelling reason for a 141 patch series, is it?  All that fixing this
error will do is get the driver to print "oh dear there's a problem"
under four more conditions than it previously did.

We've been at this for three years now with nearly a thousand patches,
firstly marking all the fall throughs with /* fall through */ and later
changing it to fallthrough.  At some point we do have to ask if the
effort is commensurate with the protection afforded.  Please tell me
our reward for all this effort isn't a single missing error print.

James


-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/9b57fd4914b46f38d54087d75e072d6e947cb56d.camel%40HansenPartnership.com.
