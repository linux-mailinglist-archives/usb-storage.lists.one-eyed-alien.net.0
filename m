Return-Path: <usb-storage+bncBDPYNU65Q4NRBYNZ6T6QKGQEX7D7IUI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x546.google.com (mail-pg1-x546.google.com [IPv6:2607:f8b0:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id D0AA32C2A01
	for <lists+usb-storage@lfdr.de>; Tue, 24 Nov 2020 15:46:58 +0100 (CET)
Received: by mail-pg1-x546.google.com with SMTP id f19sf15251236pgm.4
        for <lists+usb-storage@lfdr.de>; Tue, 24 Nov 2020 06:46:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606229217; cv=pass;
        d=google.com; s=arc-20160816;
        b=LK1FiSRbqVw4WAnUG0TWMEjiQzUbDE3qQZyZZJfNEzqxkFFksWbSl95/fgqRY0Cmab
         G82JCV4v4mdaPJi7JhM38q8TBmWco3gz+2aLQuV/1Eg7Xr/Vc2eVSKGlIHUGT/zA/e6W
         DDpFWsw9UEnxV2zGmOwHYj0S+fgqsVJprCxT5ZyUM7yledZJBNcjgrCJaY2VCM/quipG
         z6qVPbih49dct9yzGpHkiETHK6Ohfg/On82s9XbsR3TgqVmucHtc5uHRetuHDERJbFde
         F8HquKpbOYJ7dKtMaEYKzOYCkw8QT/e+S2aErB3CTAr3+vVGExhw9sBE71naDFXrV+Qd
         MBGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=svg+JhoM62XrQJZLN/FPMK29/dUAvYxm+R+IDGOS6cc=;
        b=iI2RdPocwOPSxWQ4MVrmVPe3QidgLsA5vdAhUYRJw3Mqn1lhoiQkV19vhqCkEjTTCJ
         iyk0gQSsnVdyU4oOt5iloPOdKNZ2aRtssfnI7IFxSyJhhoi5uNj2hAcu4+CUd5y2ogqS
         +vzyxvCoYlT8AERqYb9uT/DWMAP9Ra1UP9XTOTxUA6BZ18QMrwfnKzRiSlohHBXf9YCr
         rSA9yc5nngxe3/JlxOd4mU18eXfDThSoulRbkyjquQPSL9edZGByjHvu3JNWVA0q1/AX
         9p+OcSpJ5umhQbZS7tq4NcFCxAsrM4zOV8wUJR2R1qBoNPVt6jymENhN6l3OrbXry4A1
         kMAw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Nf940VeI;
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=svg+JhoM62XrQJZLN/FPMK29/dUAvYxm+R+IDGOS6cc=;
        b=A/Nn+M1CPkU7e2S5vp3bAcUkoYw8+MQSqa8VdE0XUHK8VUGuEcTGkpHWnuoWDEjIjw
         68LTgjb4v0vnp/y6TAIYBV5sQdY7qPFXjxTz+uSRZFFlR16q/0Q+J7azznnY62H6ZHhL
         EfN0FJAC/xNYG2av9PJXBXfDzwaYRnkeIbgXw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=svg+JhoM62XrQJZLN/FPMK29/dUAvYxm+R+IDGOS6cc=;
        b=TX8Za1yecL0koXG8YV6vhHX+2VbZk40QvIrN0V9W1lEscKwipgv4+6hoMEZ0R4bN0D
         P2bNlCWB6NutbTHDrWnBq3FS015oPA50KOOSJiRK969yJRGt+YJwkljB6AVmIi9zymNK
         XvkBAS5xgNlREuIXvggvNduHuKAADecydj/SBl9DkZ2bklxlLXPwxDiKVtkvuIT/2VDL
         x/yo2rcvGacKSd4mo6GHN1oYuPZ67ATNOKiBaJ51BL13eeeUHStspWZ0/DuLCVOMP5WB
         kzw4hk3dBmyrk8gKPQUckKpRtXU0q+chhvzbEFTD668wyzdvwuXZmWDoqrW4h179soEy
         KNlA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531nvNRg4IzdQGWDozsFHucodVkKpjpYurbeXplsyRcGueY9wS6z
	uOm+7D9Joe570u3tjtMxgMJsIQ==
X-Google-Smtp-Source: ABdhPJwgoyaT+kS10f4etXL35rEnfdZonrY4kO8tFyKMYjS3bJB4P7T6fIjbDfe3rdN12P7XQc1IEQ==
X-Received: by 2002:a63:797:: with SMTP id 145mr4116583pgh.264.1606229217317;
        Tue, 24 Nov 2020 06:46:57 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:a503:: with SMTP id a3ls2129379pjq.2.gmail; Tue, 24
 Nov 2020 06:46:56 -0800 (PST)
X-Received: by 2002:a17:90b:4c41:: with SMTP id np1mr5245642pjb.186.1606229216737;
        Tue, 24 Nov 2020 06:46:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606229216; cv=none;
        d=google.com; s=arc-20160816;
        b=s4xuSVukE2tzsgevaWtKpPj8VSjfP5W3gbnCEJ9uRgicbDQEa4iNDBedNNsgFh3UxY
         N1ffUOYaeQBj2o0DBt8lNhAvWaQkFEGBHK7zcWKiL4SOf32LksQuJTILpQbZMsF7CBAG
         YR80wkoh+ft5m4STAJrUl3iTm5EjtG4znrRgfbag6aT2BhdsEmO+i6Hyq2d0qZUAdUzQ
         5yN1e8xlePT5HOjx0rKSZR2Q2hShtnns7TAeoE9+g6d1158sEbMG3VicVOOgv5NOoHbu
         gwpcLnTNFr4TZj9LjR7JCxaYwKIa+i7CigMzYmcAQhj/QSPzL9+2EqcvY+hHwtax/wR/
         9IXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=8EqYYB6TiATY3AWwyx345lwZAUoEQQ35ov7q3nD4eCg=;
        b=N5Kf6GyGbVsf+dGeRF3nAAZ7I72jp6VsmbY3RUpU673wU8Q9Zcs/uFZMgcwgw4D1v3
         XNUhvgZDc5q1SiaeTwEjbom7bBqp4Mk38l3hHB9rcJuEPU2gQiWQcDQmbPIDPZ8kNrop
         vx7nkZ9ntGiSJBzj7CI0b3oWkB1raEbuFTSEn9G+vis0ewAAC//VeyaJdNZYuGwzKkXd
         dKgDlFjJCGvIVBe9381v9JY6T5WpleBGiTSEIkqUf1iLAkqVWqr5soUmg0Cwm5YG3CSu
         2QeDoXRQT08yN0xvpHFbEJ3bzxb31qs/AG4BcwqYrtgVrihjEelmHw86qX/ypMz+GWW7
         b7Yw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Nf940VeI;
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id w69si9502011pff.250.2020.11.24.06.46.56
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Nov 2020 06:46:56 -0800 (PST)
Received-SPF: pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from embeddedor (187-162-31-110.static.axtel.net [187.162.31.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 296CF206F9;
	Tue, 24 Nov 2020 14:46:49 +0000 (UTC)
Date: Tue, 24 Nov 2020 08:47:05 -0600
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
	amd-gfx@lists.freedesktop.org, bridge@lists.linux-foundation.org,
	ceph-devel@vger.kernel.org, cluster-devel@redhat.com,
	coreteam@netfilter.org, devel@driverdev.osuosl.org,
	dm-devel@redhat.com, drbd-dev@lists.linbit.com,
	dri-devel@lists.freedesktop.org, GR-everest-linux-l2@marvell.com,
	GR-Linux-NIC-Dev@marvell.com, intel-gfx@lists.freedesktop.org,
	intel-wired-lan@lists.osuosl.org, keyrings@vger.kernel.org,
	linux1394-devel@lists.sourceforge.net, linux-acpi@vger.kernel.org,
	linux-afs@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	linux-atm-general@lists.sourceforge.net,
	linux-block@vger.kernel.org, linux-can@vger.kernel.org,
	linux-cifs@vger.kernel.org, linux-crypto@vger.kernel.org,
	linux-decnet-user@lists.sourceforge.net, linux-ext4@vger.kernel.org,
	linux-fbdev@vger.kernel.org, linux-geode@lists.infradead.org,
	linux-gpio@vger.kernel.org, linux-hams@vger.kernel.org,
	linux-hwmon@vger.kernel.org, linux-i3c@lists.infradead.org,
	linux-ide@vger.kernel.org, linux-iio@vger.kernel.org,
	linux-input@vger.kernel.org, linux-integrity@vger.kernel.org,
	linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org,
	linux-mmc@vger.kernel.org, linux-mm@kvack.org,
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
	virtualization@lists.linux-foundation.org,
	wcn36xx@lists.infradead.org, x86@kernel.org,
	xen-devel@lists.xenproject.org, linux-hardening@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Miguel Ojeda <ojeda@kernel.org>, Joe Perches <joe@perches.com>,
	Kees Cook <keescook@chromium.org>
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
Message-ID: <20201124144705.GK16084@embeddedor>
References: <cover.1605896059.git.gustavoars@kernel.org>
 <20201123200345.GA38546@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201123200345.GA38546@nvidia.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: gustavoars@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Nf940VeI;       spf=pass
 (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gustavoars@kernel.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Mon, Nov 23, 2020 at 04:03:45PM -0400, Jason Gunthorpe wrote:
> On Fri, Nov 20, 2020 at 12:21:39PM -0600, Gustavo A. R. Silva wrote:
> 
> >   IB/hfi1: Fix fall-through warnings for Clang
> >   IB/mlx4: Fix fall-through warnings for Clang
> >   IB/qedr: Fix fall-through warnings for Clang
> >   RDMA/mlx5: Fix fall-through warnings for Clang
> 
> I picked these four to the rdma tree, thanks

Awesome. :)

Thank you, Jason.
--
Gustavo

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20201124144705.GK16084%40embeddedor.
