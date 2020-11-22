Return-Path: <usb-storage+bncBDXO746SYYBRBCW55P6QKGQEQDPWBCY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x148.google.com (mail-il1-x148.google.com [IPv6:2607:f8b0:4864:20::148])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FA4B2BFCBD
	for <lists+usb-storage@lfdr.de>; Mon, 23 Nov 2020 00:04:44 +0100 (CET)
Received: by mail-il1-x148.google.com with SMTP id t9sf12511188ilp.20
        for <lists+usb-storage@lfdr.de>; Sun, 22 Nov 2020 15:04:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606086283; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZHWFcm3gaTp3MDTTYEQYejr9NxQ1pAybKNQSDBzI7JOlydwt+kqyXT8bfblwMEVMqV
         HCMIPYeT2TsXt5qkcEbx/7Ld3x4C76qfhSQvoyHeEm6N1ySE2/OnVojgUywmRPYtIyZ5
         ulxRlRtaTYShd/aeYMtQDs3NsqC7BvHQ71+TE9WW5rnZJ5c5XzTgwCOV+AJ5bHsz+HRX
         Bn5KkZLhfO3XAGiJn/WVrhL26GuROHn+Vt8G+3P76MVcZ+O8sFTSLK/dUDhz5o9Bl9AO
         bwhyE5m6FIOyDtcblGhg8FbeR9qSzMmcvFMqkNaAJ148AUgbkMT2VlS643NaFsSiqHqH
         PrRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=kEgpdddB32bJ22Ml8aqI13Jx9GyXvr/3ziXh2Xkn/Jc=;
        b=DixW7DCKhlnlhUJOzFC+vphvilcsiKW/jLVQ5Cjsl9YBA0WxWphY8bIU+W6CejueAk
         wva/MeVld3vDrV7bcWJlRElef9ZR2oDHHUCc1098rSYyXWI7VGvLdaLqsSAt7uMsV2R1
         QL/EeoGMfzD06DX56je7UWjzv3t2COlKZz5Pv8mzlPY7MsEp/z/9EoIrdb8nbgWjNjdv
         ngGM90BYKwRW6AneR+KaRUl+QseYH7zP2AYg/RbkG+Nyv1h6J2k9zr6kxSZPDoQYBtx4
         YSnOwONduNr+UaGKxw+7uL1YrqXe43X4hXlbUkXRpYgglM9rmbL7brmoLeUva5C+A2GJ
         qxzg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=WmZvrZ8S;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=WmZvrZ8S;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 96.44.175.130 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kEgpdddB32bJ22Ml8aqI13Jx9GyXvr/3ziXh2Xkn/Jc=;
        b=j+2TMSB7Bs3PLZGg8vGcARFYwp1vS3lZk7tUOHdRquhGlztMAUypMz8liqK3YfwIz+
         vU/bGd4WC9o5vAr5OfebSQjxCX0zjJLWNMnbx7408hLOeJDhhf+xgpR7fzQAEiwgtzW1
         M7zP8yuju9hZX8Up+NYpzF5h/uk7TbS2ZsYqo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kEgpdddB32bJ22Ml8aqI13Jx9GyXvr/3ziXh2Xkn/Jc=;
        b=HmSx4m63XM12NaXs5/Xpy7AtDHuKM1faSLEVwG05cefiWTEzs/M7HbfV2pNM0UkUOS
         xkNAtMLORRfliVvuq+6FjRxjcQEkK0139kutk5vKd/ap8qlzemTYgh+HwWry42Xm2BGv
         4fk6Jdp+geAj00Yb4PQQRFsfjcb+AM7+6kmow1E4dEiUEL4BkigQF96LiULIldo33Un8
         JSrhi4ZgcS/pTsmvxb1/8z2dE7SExgnJYKIJP49GyZm30RThcSm0YhMJJL98QrQ6Oa27
         CLnhL3wsTaBl9/7LCpSOJQuV2UID+hmknjrblL/hmNdPjTNq2coVPwey5ff2uDhIW8I8
         Jg5w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533dZHI3DE1TAgQUdmUb5fXRzP5zsbE4moaLxcb8/I+YeU3fRo3H
	CTEjSbPcVQcy5E1N/mr5yVMcBA==
X-Google-Smtp-Source: ABdhPJyXlPlucN3gXlTveT/tV5gbFw9UOpBgctIOpug6Dqq4LcqfD/wksmh78QyuH1ghLjDA74bjwQ==
X-Received: by 2002:a92:85c5:: with SMTP id f188mr34403217ilh.173.1606086282921;
        Sun, 22 Nov 2020 15:04:42 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a92:bb4b:: with SMTP id w72ls354013ili.9.gmail; Sun, 22 Nov
 2020 15:04:42 -0800 (PST)
X-Received: by 2002:a92:358e:: with SMTP id c14mr17628208ilf.69.1606086282539;
        Sun, 22 Nov 2020 15:04:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606086282; cv=none;
        d=google.com; s=arc-20160816;
        b=A5iflteIKs2LAoa3gcjmxCbQta6dung4SKubxAHUIhOkRNmrHfjo88Fm12KubNnIb3
         /MvgOWqNTb6sy5o3v7+qRPI6/nw5w+Wb776ijmdst4Gblm5mDswT2WUOP6KFUuOjGaPT
         V0xawHtKJoCYxzWt2UClkoOhrjo7UT4U5w+O4gxM86yg2W8RCVe8fkSmtxCfrNWgA1vF
         2OSKpch1oANNEcpwmwZ6FUzk2kGjBzQGamJrRX/3o/mwjyGTHRzzbhQw6OpHUHt7ZoLj
         stofu3z/h0UIF1wgWZK/AM1Jtmz5uRz6YBdXx3ZQAAv/0v9zkiHixmjcTViZ6IdotVAP
         G3Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature
         :dkim-signature;
        bh=ampKVWKUqLiKYyObj0dhEgltdPGbsuliUrstEBadWMw=;
        b=uVkKJPoIVVD1ObruZBWFXtRA6Zny/MKi3yL3+J4o22kQix8zmFr4+qp3yUEZj2D9fe
         YulogclSUAveZJ4yuwTlYhfJKUo7p0ScIEzWd3rLoh43jzAX2v8JrD76JVZ3J99bdtx5
         6g5suE4gw3X0cfplG0XAMkt9YPtuWW1LU0oJxpl9SedubkAiZjOLaEP5SU7746IlGU3z
         3isKXZbpr1x9sDjDSuttrC0GMR0JXohJ1zet/tvQ2dcjYglIGUaEYR6WGniUyr9ViNpP
         Cg5EO/yTQiYGSbLtYfnbFkDTxxqz8BlZmN1wKg0BLL+qAjyenjF0O9thGecTbba2xdKj
         orDg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=WmZvrZ8S;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=WmZvrZ8S;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 96.44.175.130 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com. [96.44.175.130])
        by mx.google.com with ESMTPS id z10si8325682jat.35.2020.11.22.15.04.42
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 22 Nov 2020 15:04:42 -0800 (PST)
Received-SPF: pass (google.com: domain of james.bottomley@hansenpartnership.com designates 96.44.175.130 as permitted sender) client-ip=96.44.175.130;
Received: from localhost (localhost [127.0.0.1])
	by bedivere.hansenpartnership.com (Postfix) with ESMTP id 5C1741280900;
	Sun, 22 Nov 2020 15:04:41 -0800 (PST)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
	by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PvG_3ynFL_Uj; Sun, 22 Nov 2020 15:04:41 -0800 (PST)
Received: from jarvis.int.hansenpartnership.com (unknown [IPv6:2601:600:8280:66d1::527])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 9178D12808F6;
	Sun, 22 Nov 2020 15:04:37 -0800 (PST)
Message-ID: <c3371b7c15ed30b92e9bb8609ff65bdaa0ef61fa.camel@HansenPartnership.com>
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Finn Thain <fthain@telegraphics.com.au>, Miguel Ojeda
	 <miguel.ojeda.sandonis@gmail.com>
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
Date: Sun, 22 Nov 2020 15:04:36 -0800
In-Reply-To: <alpine.LNX.2.23.453.2011230938390.7@nippy.intranet>
References: <cover.1605896059.git.gustavoars@kernel.org>
	 <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
	 <202011201129.B13FDB3C@keescook>
	 <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
	 <202011220816.8B6591A@keescook>
	 <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
	 <CANiq72nZrHWTA4_Msg6MP9snTyenC6-eGfD27CyfNSu7QoVZbw@mail.gmail.com>
	 <alpine.LNX.2.23.453.2011230938390.7@nippy.intranet>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.4
MIME-Version: 1.0
X-Original-Sender: James.Bottomley@hansenpartnership.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@hansenpartnership.com header.s=20151216 header.b=WmZvrZ8S;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216
 header.b=WmZvrZ8S;       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com
 designates 96.44.175.130 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
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

On Mon, 2020-11-23 at 09:54 +1100, Finn Thain wrote:
> But is anyone keeping score of the regressions? If unreported bugs
> count, what about unreported regressions?

Well, I was curious about the former (obviously no tool will tell me
about the latter), so I asked git what patches had a fall-through
series named in a fixes tag and these three popped out:

9cf51446e686 bpf, powerpc: Fix misuse of fallthrough in bpf_jit_comp()
6a9dc5fd6170 lib: Revert use of fallthrough pseudo-keyword in lib/
91dbd73a1739 mips/oprofile: Fix fallthrough placement

I don't think any of these is fixing a significant problem, but they
did cause someone time and trouble to investigate.

James


-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/c3371b7c15ed30b92e9bb8609ff65bdaa0ef61fa.camel%40HansenPartnership.com.
