Return-Path: <usb-storage+bncBD2NT6VEXYMRBVN44D6QKGQES3D67KY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x546.google.com (mail-pg1-x546.google.com [IPv6:2607:f8b0:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id D1CFA2BB5E8
	for <lists+usb-storage@lfdr.de>; Fri, 20 Nov 2020 20:51:50 +0100 (CET)
Received: by mail-pg1-x546.google.com with SMTP id 22sf7533783pge.7
        for <lists+usb-storage@lfdr.de>; Fri, 20 Nov 2020 11:51:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605901909; cv=pass;
        d=google.com; s=arc-20160816;
        b=l6ai8/MbWU1A+ghxH3b8Fbybz6gCb+JtBJ4SEku+OZTK+FntAhAz5W7kEAHmHRoK+U
         +v5H9kBjUNedN4Q2O0xmZNFIYwUIb0N3i83VqOX8W3nBr8hDXlgC6etzDKWQJfQ83wJ9
         FkdwHKFXAj5MzbolG/Svb+eX6zQhRJR34sAXV/AFhzi9DhazSvRfUvhe/rNhYEJ3rzW5
         da6g45Wi/oD6caTmX9YParU/b/8ZCV6VnWA8o+Xgc3MUyTOnUgOmkv5ezrLiLHOMYAwl
         YxVehvkDivyDOoOW63Gel95GsS58Ocl8sgoQKo4ZPiJ+qGO+Px2q+hIEWE8VjOzHskBx
         osLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=BwHKnm19VnV6KQDg6dwyYcYmDQG5BXzajpzog05IhQA=;
        b=j7XFnvSBFG0BqmR4z1vR2PWBoOIuYv/+Z6n4vfIP7waqeZSPySMMV5tiKnA9pLlayI
         3FMkyCqGuLHamGrYNucHExO/rE9k8efHxv2MVhsxM9zCU/Nfveh9V2U1oX1G3yuncaPE
         hKMaVq17NF7ZbsoK4Bdwztj5Zw+qgPwIwl+IYFo/a8AV9FnKm93II1RIj1mGV47UPdo2
         7iY+CphAIf9K304L/1cUCiAe8f6eu/UPyZa0z04dxSHwL0PKKslr7KoBH7Iwp9ipyiAZ
         x4epiAsyWvi9xUywNLT4QB1neMU9JMF/ih/DrSVAJ6D6upIJTk9Jgme0yUdntF+sZ1qA
         CGMQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0HJ898xk;
       spf=pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BwHKnm19VnV6KQDg6dwyYcYmDQG5BXzajpzog05IhQA=;
        b=Ej1Sp/ohcTMv0e94tlJ7DeistZGuKDG1eRw5OiHIXNxYn7Gh43DcPl5tDPKXEoOtIm
         hXFc9BYSwyJVvAo1n2SY7iujAUdUnxwQMUUD8GA1WycUNjY2z5B+M4xwoKmk4F1HTb+Y
         evQXJiMKQDaYZMg7RCB9Xjb9B9gniwTV0YX3c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BwHKnm19VnV6KQDg6dwyYcYmDQG5BXzajpzog05IhQA=;
        b=XtdihVOtTeGgmtFwT2NDC7cpkgDRM9eH/p5SZPbm/1k92YGpyv0PnBZJHsATcnjpRo
         9i4VurbVoFZHKVZdMgffei0YYVamS0sSBdPH8uO+jTmQg1jyA6nTb4pA3PAGFt2p/Gp9
         3K77oeYdrhMfHTISx5V6hCzUxZ/LyKadg0p9mFeBhatmJ7p4m0+Eaf4+xZeDkj73FjL/
         xx1hE7ulo0xSQYg6RMzil81UMGBBNxBvmdkepv+QpPcqeR9D7O0FuEj1pR3FWSaRt2QM
         lJUxeBlAqzZHAhgQM2gV3lWHP52Y84FGmwZ1tQISg7+5bjl6ZIfYX4UKSwOJzqjgjMm8
         Iq5w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533kfnTG7iYB14NhTPByxhSy3mnM67dlgMkKaVTYOPgE5ZhAy7J4
	WlcUBZJTs6DSXylSJpnmN/HXVg==
X-Google-Smtp-Source: ABdhPJwyxhUEXT7YNNJnx0tsieK2SM5XcU0w+2Z3QEZgTJf3IN6oGNDaHRx0nkYKwWUR4kXZXhGUuA==
X-Received: by 2002:a63:2026:: with SMTP id g38mr18545776pgg.30.1605901909339;
        Fri, 20 Nov 2020 11:51:49 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a62:15ca:: with SMTP id 193ls2088731pfv.5.gmail; Fri, 20 Nov
 2020 11:51:48 -0800 (PST)
X-Received: by 2002:aa7:985b:0:b029:197:e5a1:a317 with SMTP id n27-20020aa7985b0000b0290197e5a1a317mr891406pfq.10.1605901908681;
        Fri, 20 Nov 2020 11:51:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605901908; cv=none;
        d=google.com; s=arc-20160816;
        b=jxHYvX2T1IPsXs+o7EqxMCaFNp8Ze1JJx3MMia4oMXPBMgvn8aRljR11R7AGBN2dDr
         Qt3a3BsCCW5npR5mcZJKPm6h7HiAv96IOrsqPWK1c+bjkAeTdw8xHXZZ44n9gVvmZOjF
         sAX5AyO1YftvzC0JuWE7wOQm4Twtd7gFp9HULWLZRWr/SsihuMj0GZ+ZaPNGKfSnLhjA
         G9cN0pb2AcJwMmQHRxyZgkvgUUCBpXHuz8bAwsoecWI5GsQ1h77sEded2uR9PlZdgOI/
         iQBG0ZI+BD2UTvFCACGv7y4swfKsnbbDZezOFgTMbfn+eZpySBSZfmg8LcjUGfKY1T0e
         nclw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=RgGQcRPC4ri9ezJTblJehSxw5L00L/N08ksS480DCoM=;
        b=kPYhG1swohi/i5czYcXKToPasrhLJnzrQGjw1wi58Wl7/Lc78PA5DTtEBR+H4IXrK7
         JxkEAM57G2hfWknKizaTpQFpwviapgmyBLY7MKvR68tnetNpoZyH99xMZntd8A+woCVW
         aC5fh2gkojXeN1Wb/O31DPXoqWqZ/vKzXmU69ANxAC8/J8rkneHWAg5NYMhkVMu/ur6r
         t7m6eVrFatT7MDa578taXe0rH8o7/HAwGe9T0QpPaxwa6C0tYtReJ8BNRz7iB+eY0o08
         HUiQul4ONimgvxO4xbLXIVyzJZ7l5/gGi9SRQ7y5Mnr42BHYpwb1/cu7w9a4O5sP4aKn
         Z6oQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0HJ898xk;
       spf=pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id f26si3373033pgf.549.2020.11.20.11.51.48
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Nov 2020 11:51:48 -0800 (PST)
Received-SPF: pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown [163.114.132.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id ADA4D206B6;
	Fri, 20 Nov 2020 19:51:43 +0000 (UTC)
Date: Fri, 20 Nov 2020 11:51:42 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Kees Cook <keescook@chromium.org>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
 amd-gfx@lists.freedesktop.org, bridge@lists.linux-foundation.org,
 ceph-devel@vger.kernel.org, cluster-devel@redhat.com,
 coreteam@netfilter.org, devel@driverdev.osuosl.org, dm-devel@redhat.com,
 drbd-dev@lists.linbit.com, dri-devel@lists.freedesktop.org,
 GR-everest-linux-l2@marvell.com, GR-Linux-NIC-Dev@marvell.com,
 intel-gfx@lists.freedesktop.org, intel-wired-lan@lists.osuosl.org,
 keyrings@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 linux-acpi@vger.kernel.org, linux-afs@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-atm-general@lists.sourceforge.net, linux-block@vger.kernel.org,
 linux-can@vger.kernel.org, linux-cifs@vger.kernel.org,
 linux-crypto@vger.kernel.org, linux-decnet-user@lists.sourceforge.net,
 linux-ext4@vger.kernel.org, linux-fbdev@vger.kernel.org,
 linux-geode@lists.infradead.org, linux-gpio@vger.kernel.org,
 linux-hams@vger.kernel.org, linux-hwmon@vger.kernel.org,
 linux-i3c@lists.infradead.org, linux-ide@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-input@vger.kernel.org,
 linux-integrity@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-media@vger.kernel.org, linux-mmc@vger.kernel.org, linux-mm@kvack.org,
 linux-mtd@lists.infradead.org, linux-nfs@vger.kernel.org,
 linux-rdma@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-sctp@vger.kernel.org,
 linux-security-module@vger.kernel.org,
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
 linux-hardening@vger.kernel.org, Nick Desaulniers
 <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>,
 Miguel Ojeda <ojeda@kernel.org>, Joe Perches <joe@perches.com>
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
Message-ID: <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <202011201129.B13FDB3C@keescook>
References: <cover.1605896059.git.gustavoars@kernel.org>
	<20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
	<202011201129.B13FDB3C@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kuba@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=0HJ898xk;       spf=pass
 (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=kuba@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Fri, 20 Nov 2020 11:30:40 -0800 Kees Cook wrote:
> On Fri, Nov 20, 2020 at 10:53:44AM -0800, Jakub Kicinski wrote:
> > On Fri, 20 Nov 2020 12:21:39 -0600 Gustavo A. R. Silva wrote:  
> > > This series aims to fix almost all remaining fall-through warnings in
> > > order to enable -Wimplicit-fallthrough for Clang.
> > > 
> > > In preparation to enable -Wimplicit-fallthrough for Clang, explicitly
> > > add multiple break/goto/return/fallthrough statements instead of just
> > > letting the code fall through to the next case.
> > > 
> > > Notice that in order to enable -Wimplicit-fallthrough for Clang, this
> > > change[1] is meant to be reverted at some point. So, this patch helps
> > > to move in that direction.
> > > 
> > > Something important to mention is that there is currently a discrepancy
> > > between GCC and Clang when dealing with switch fall-through to empty case
> > > statements or to cases that only contain a break/continue/return
> > > statement[2][3][4].  
> > 
> > Are we sure we want to make this change? Was it discussed before?
> > 
> > Are there any bugs Clangs puritanical definition of fallthrough helped
> > find?
> > 
> > IMVHO compiler warnings are supposed to warn about issues that could
> > be bugs. Falling through to default: break; can hardly be a bug?!  
> 
> It's certainly a place where the intent is not always clear. I think
> this makes all the cases unambiguous, and doesn't impact the machine
> code, since the compiler will happily optimize away any behavioral
> redundancy.

If none of the 140 patches here fix a real bug, and there is no change
to machine code then it sounds to me like a W=2 kind of a warning.

I think clang is just being annoying here, but if I'm the only one who
feels this way chances are I'm wrong :)

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20201120115142.292999b2%40kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com.
