Return-Path: <usb-storage+bncBDXO746SYYBRBFFY576QKGQECXQNR5Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd46.google.com (mail-io1-xd46.google.com [IPv6:2607:f8b0:4864:20::d46])
	by mail.lfdr.de (Postfix) with ESMTPS id AC4162C0F75
	for <lists+usb-storage@lfdr.de>; Mon, 23 Nov 2020 16:58:13 +0100 (CET)
Received: by mail-io1-xd46.google.com with SMTP id q187sf13196001iod.6
        for <lists+usb-storage@lfdr.de>; Mon, 23 Nov 2020 07:58:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606147092; cv=pass;
        d=google.com; s=arc-20160816;
        b=iknJS3dmthg89KRy63ULVlc4Mzp/BTZBByIlRk5VQRFYRtk/HXJxrY57zMOWkK0tPW
         EK5acP/eEIcOyjy251blciyu8Ee7tiUNgKliEVwRZ2tVTs4qa1Xks4O6jDi0wDXOa7Nd
         cQrNGuI+dcw0tGkF1XDpU8y0ZymMuRdMjxOc8dKldnKFFhO0B55bQP5/3cMamfsfkMSv
         11SJTYvSSnFOSYhyeeTS/XrWZk854oNlFdsE6jzGZ/t4VS47F6fBxcht0FozEeDLlx/A
         Dwgx7PDpBCiguP3WK/VyS7UwMsv2q2jyfUgIqOkLkzNmQbbVBpO9C1UKQpOe6ErwRxN6
         KAFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=+WN2RsIR24lGjTglR/qDrlwOQgLvZC6ef/cw+nVQJAQ=;
        b=aicWfTJPX2sdCDnKTyiD/d8oXwCd2DRl35tDboZ5VsSwxc8CYb5DEjr2N/8CLjgsA5
         KrDnOKaMtkWYxsO/7rgyiiHkOfmnOfzLBMeDwaz/Th1bUrA8IGajrMFI+iSfad1sSvYO
         O1W8HY8fOvUymttAJVJ1Bwk0NhDckPUbS9jubE0CRdPtI5H1kNZZYsP/6H+4H7X8Imx1
         ffeolbJVBFfrxY77x4Ixbp9BtViDAoZchpQ3XVqa3yNi05FOgidAYMQGhbW0MZx7Ui+l
         5xlodWV5lQrnPO+fXn3f+76z4Ms0GIgcrUmOKyNEewSkhXzTXF9zSD6gPkrwlCDnmmQh
         vyNw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=tw2BKkTz;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=tw2BKkTz;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 2607:fcd0:100:8a00::2 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+WN2RsIR24lGjTglR/qDrlwOQgLvZC6ef/cw+nVQJAQ=;
        b=kyRYlwcsrvviOGEWnMnznmjJWFuaXSdpYJh10k+fiABj2kToLkw9NQT6LrWQPum4N0
         UlKPdtscKKNRTqsDEe6wbW19KyK+KorsNl5c4l/HCuBcTJmgbiWCTIBXjRooP6sMB1QM
         Tj2/qM1dlJlosPteYCOQ0hJmEu+7I5YglHJ3U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+WN2RsIR24lGjTglR/qDrlwOQgLvZC6ef/cw+nVQJAQ=;
        b=SHbK53qM/cSPWz0VmfITaNpDcZGsjT97G2vwD3iIT6yzPUMxKlwNurL9K6kXlbH17e
         d6G14vRtOKtf7Az+j6Qx89/ksKfx3/nSTufvKYOCFW4AiITc6oUlCx1qfgerSt9vHDkv
         UkZHcQ13WIK8+kjUCCXyicJQxdhLI9Y3WpXV7fBgtBZe9mFkedL36ON3kH3CpvK2WVxH
         gagejumMw7vWoiDaoN1KpPaEkFK/SGqi1CuCZIi+0jkT6VKse0rxuJdM0qqHJmXJAFen
         dxJhj8QmVoLywSo4OM59NMXRyHbg5fvFO2VcH9GDAWnEq6r2H4oGnWIQx7LrutxRKsgB
         1NXg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530I6Xi0jxhx9R24YAjCuk6cwY3eIld1EzVNCF/LtUw63EFy5oEq
	58xabtj29IHDZDm/g+I8OevKhQ==
X-Google-Smtp-Source: ABdhPJwyLA0fQ9H5403Gl8rSWWfiZzsAWJMPLe0x1zqbl+aJNyxfEfuF3m4msHkPc2ShlGpxD5KliA==
X-Received: by 2002:a02:2e54:: with SMTP id u20mr151961jae.142.1606147092130;
        Mon, 23 Nov 2020 07:58:12 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a5d:914f:: with SMTP id y15ls1539958ioq.5.gmail; Mon, 23 Nov
 2020 07:58:11 -0800 (PST)
X-Received: by 2002:a6b:6217:: with SMTP id f23mr291775iog.201.1606147091636;
        Mon, 23 Nov 2020 07:58:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606147091; cv=none;
        d=google.com; s=arc-20160816;
        b=uM8V8qkh9ULWa3kHHFrlUhwA/dvUx+KAP8p4yI/eoElro5eTwGD+MX/ew9t+Dl7Jjz
         Ikm9PH23AAm8CH98n7TboYDH9QKheGDNt55otig1ee14vXnzKHNYA32IBWSaSP4+TPIc
         oMEweTHKDroWBj4THF47QzJosV5AAzJsytuIt1AkGFFQFrbHVaCRSNjfz7g/k9zHAJ8u
         I7u26AIYctLQX5owA/NTXctwKi3Hw+dqpxqrg/tHvDkIBPzIv/z81HGS6lNXp3Eqdpsu
         zeqtbSM0xmBCh2lzQdjDBsgNP2YLFBMLeaelb4QffnN9QlWiaVRAZ1QH/LrqpTBNETTW
         9Dkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature
         :dkim-signature;
        bh=Bd95FmqLjlGKJ5mJ+42xxqAj2DLZo1+mdh6XcRNzPNM=;
        b=OQ4cl2hpQHPDvrKboRR2UzzprCl2JUCxiXTtyqcHB6IwUnfhqyLqFnXQXoEEq9KcBH
         7exSFXKpMF/yDbX17XDWzprM5f8yR+I9PFxse1uHj0xK9qGwlSUEz8BVxZWE6iV+LeHa
         EA8iizryNX/JnW3dFuigZfsVSsug9Q7xZDYQsFDAbHa3bMxsjwlwN4BpkNd//UAVyEQk
         9u0JYLZIKtLyGbS0MNvaUDXQBud8Pb0O57NMx10Sajv9kVE+m9zvIneZI4vTUVR5kXRH
         ORzyfe+H3tgVTZgouh+Slmq4QGS1RXbDc+4MwsAf8H+HZGSiAV9HWLxt2OaTcwJRlBvo
         hUzA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=tw2BKkTz;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=tw2BKkTz;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 2607:fcd0:100:8a00::2 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com. [2607:fcd0:100:8a00::2])
        by mx.google.com with ESMTPS id v10si9118715jas.45.2020.11.23.07.58.11
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 23 Nov 2020 07:58:11 -0800 (PST)
Received-SPF: pass (google.com: domain of james.bottomley@hansenpartnership.com designates 2607:fcd0:100:8a00::2 as permitted sender) client-ip=2607:fcd0:100:8a00::2;
Received: from localhost (localhost [127.0.0.1])
	by bedivere.hansenpartnership.com (Postfix) with ESMTP id 8958812803A6;
	Mon, 23 Nov 2020 07:58:10 -0800 (PST)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
	by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pNOg0X0CRuCM; Mon, 23 Nov 2020 07:58:10 -0800 (PST)
Received: from jarvis.int.hansenpartnership.com (unknown [IPv6:2601:600:8280:66d1::527])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 1690C12802D9;
	Mon, 23 Nov 2020 07:58:07 -0800 (PST)
Message-ID: <fc45750b6d0277c401015b7aa11e16cd15f32ab2.camel@HansenPartnership.com>
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Kees Cook <keescook@chromium.org>, Jakub Kicinski <kuba@kernel.org>, 
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, linux-kernel
 <linux-kernel@vger.kernel.org>,  alsa-devel@alsa-project.org,
 amd-gfx@lists.freedesktop.org,  bridge@lists.linux-foundation.org,
 ceph-devel@vger.kernel.org,  cluster-devel@redhat.com,
 coreteam@netfilter.org, devel@driverdev.osuosl.org,  dm-devel@redhat.com,
 drbd-dev@lists.linbit.com, dri-devel@lists.freedesktop.org, 
 GR-everest-linux-l2@marvell.com, GR-Linux-NIC-Dev@marvell.com, 
 intel-gfx@lists.freedesktop.org, intel-wired-lan@lists.osuosl.org, 
 keyrings@vger.kernel.org, linux1394-devel@lists.sourceforge.net, 
 linux-acpi@vger.kernel.org, linux-afs@lists.infradead.org, Linux ARM
 <linux-arm-kernel@lists.infradead.org>, linux-arm-msm@vger.kernel.org, 
 linux-atm-general@lists.sourceforge.net, linux-block@vger.kernel.org, 
 linux-can@vger.kernel.org, linux-cifs@vger.kernel.org, Linux Crypto Mailing
 List <linux-crypto@vger.kernel.org>,
 linux-decnet-user@lists.sourceforge.net,  Ext4 Developers List
 <linux-ext4@vger.kernel.org>, linux-fbdev@vger.kernel.org,
 linux-geode@lists.infradead.org,  linux-gpio@vger.kernel.org,
 linux-hams@vger.kernel.org,  linux-hwmon@vger.kernel.org,
 linux-i3c@lists.infradead.org,  linux-ide@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-input <linux-input@vger.kernel.org>,
 linux-integrity@vger.kernel.org,  linux-mediatek@lists.infradead.org, Linux
 Media Mailing List <linux-media@vger.kernel.org>,
 linux-mmc@vger.kernel.org, Linux-MM <linux-mm@kvack.org>,
 linux-mtd@lists.infradead.org, linux-nfs@vger.kernel.org, 
 linux-rdma@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
 linux-scsi@vger.kernel.org, linux-sctp@vger.kernel.org, 
 linux-security-module@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, linux-usb@vger.kernel.org, 
 linux-watchdog@vger.kernel.org, linux-wireless
 <linux-wireless@vger.kernel.org>,  Network Development
 <netdev@vger.kernel.org>, netfilter-devel@vger.kernel.org,
 nouveau@lists.freedesktop.org,  op-tee@lists.trustedfirmware.org,
 oss-drivers@netronome.com,  patches@opensource.cirrus.com,
 rds-devel@oss.oracle.com,  reiserfs-devel@vger.kernel.org,
 samba-technical@lists.samba.org,  selinux@vger.kernel.org,
 target-devel@vger.kernel.org,  tipc-discussion@lists.sourceforge.net,
 usb-storage@lists.one-eyed-alien.net, 
 virtualization@lists.linux-foundation.org, wcn36xx@lists.infradead.org, 
 "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
 xen-devel@lists.xenproject.org,  linux-hardening@vger.kernel.org, Nick
 Desaulniers <ndesaulniers@google.com>,  Nathan Chancellor
 <natechancellor@gmail.com>, Miguel Ojeda <ojeda@kernel.org>, Joe Perches
 <joe@perches.com>
Date: Mon, 23 Nov 2020 07:58:06 -0800
In-Reply-To: <CANiq72m22Jb5_+62NnwX8xds2iUdWDMAqD8PZw9cuxdHd95W0A@mail.gmail.com>
References: <cover.1605896059.git.gustavoars@kernel.org>
	 <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
	 <202011201129.B13FDB3C@keescook>
	 <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
	 <202011220816.8B6591A@keescook>
	 <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
	 <CANiq72nZrHWTA4_Msg6MP9snTyenC6-eGfD27CyfNSu7QoVZbw@mail.gmail.com>
	 <1c7d7fde126bc0acf825766de64bf2f9b888f216.camel@HansenPartnership.com>
	 <CANiq72m22Jb5_+62NnwX8xds2iUdWDMAqD8PZw9cuxdHd95W0A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.4
MIME-Version: 1.0
X-Original-Sender: James.Bottomley@hansenpartnership.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@hansenpartnership.com header.s=20151216 header.b=tw2BKkTz;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216
 header.b=tw2BKkTz;       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com
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

On Mon, 2020-11-23 at 15:19 +0100, Miguel Ojeda wrote:
> On Sun, Nov 22, 2020 at 11:36 PM James Bottomley
> <James.Bottomley@hansenpartnership.com> wrote:
> > Well, it seems to be three years of someone's time plus the
> > maintainer review time and series disruption of nearly a thousand
> > patches.  Let's be conservative and assume the producer worked
> > about 30% on the series and it takes about 5-10 minutes per patch
> > to review, merge and for others to rework existing series.  So
> > let's say it's cost a person year of a relatively junior engineer
> > producing the patches and say 100h of review and application
> > time.  The latter is likely the big ticket item because it's what
> > we have in least supply in the kernel (even though it's 20x vs the
> > producer time).
> 
> How are you arriving at such numbers? It is a total of ~200 trivial
> lines.

Well, I used git.  It says that as of today in Linus' tree we have 889
patches related to fall throughs and the first series went in in
october 2017 ... ignoring a couple of outliers back to February.

> > It's not about the risk of the changes it's about the cost of
> > implementing them.  Even if you discount the producer time (which
> > someone gets to pay for, and if I were the engineering manager, I'd
> > be unhappy about), the review/merge/rework time is pretty
> > significant in exchange for six minor bug fixes.  Fine, when a new
> > compiler warning comes along it's certainly reasonable to see if we
> > can benefit from it and the fact that the compiler people think
> > it's worthwhile is enough evidence to assume this initially.  But
> > at some point you have to ask whether that assumption is supported
> > by the evidence we've accumulated over the time we've been using
> > it.  And if the evidence doesn't support it perhaps it is time to
> > stop the experiment.
> 
> Maintainers routinely review 1-line trivial patches, not to mention
> internal API changes, etc.

We're also complaining about the inability to recruit maintainers:

https://www.theregister.com/2020/06/30/hard_to_find_linux_maintainers_says_torvalds/

And burn out:

http://antirez.com/news/129

The whole crux of your argument seems to be maintainers' time isn't
important so we should accept all trivial patches ... I'm pushing back
on that assumption in two places, firstly the valulessness of the time
and secondly that all trivial patches are valuable.

> If some company does not want to pay for that, that's fine, but they
> don't get to be maintainers and claim `Supported`.

What I'm actually trying to articulate is a way of measuring value of
the patch vs cost ... it has nothing really to do with who foots the
actual bill.

One thesis I'm actually starting to formulate is that this continual
devaluing of maintainers is why we have so much difficulty keeping and
recruiting them.

James



-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/fc45750b6d0277c401015b7aa11e16cd15f32ab2.camel%40HansenPartnership.com.
