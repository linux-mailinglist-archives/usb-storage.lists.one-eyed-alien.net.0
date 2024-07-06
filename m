Return-Path: <usb-storage+bncBCUJ7YGL3QFBBIMQUS2AMGQEEOYDHUY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x46.google.com (mail-oa1-x46.google.com [IPv6:2001:4860:4864:20::46])
	by mail.lfdr.de (Postfix) with ESMTPS id C0329929217
	for <lists+usb-storage@lfdr.de>; Sat,  6 Jul 2024 11:02:26 +0200 (CEST)
Received: by mail-oa1-x46.google.com with SMTP id 586e51a60fabf-25e06a13216sf2035445fac.3
        for <lists+usb-storage@lfdr.de>; Sat, 06 Jul 2024 02:02:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1720256545; cv=pass;
        d=google.com; s=arc-20160816;
        b=EQLRwRAEEuJLkNoZB42nvne45vcJhHKuCxTiklKM4F1F0Lb+bwsiotJkAKZ1F+Jh0V
         BYYJOPqdmV+mkee+TS6UH3vAzZYj7dLwk6RIriMCklwmHopUnQwin2In+YL4BNj4UCFx
         XCAlHwwqUWEYAt0mAPvIhuC0xVvFttccNoGwR+GkvA5eWR0wNu0jXn2sfNSonyys9hyz
         No4EidorJI3Sx8lqiDO9i4MYDNcmBR1WmoMMQBbZg26EBQzPxe6A0eCeLiETihaLCyzT
         zHkNdEBGYR7t1YCoKtW0N0bpdCKreBrGTSjQkbLyo1FusTLD1XMGeypV9Cdgpou2ANuh
         6I+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=yndygSJBdhMNDQhrwM6Ao+/G1LrpIVqFnjv/Ti+zoaU=;
        fh=1zoikQB24G8++kfdw+x5wZTUBypnTwSRkp25hH2TqlM=;
        b=EwmAoTl9EgsIKEoj3WIhrFEjAVG2e64kqBg3H/qxssAozi7vFucCbTgoZWQk4/JFKl
         7yrpW4LA6TefkWvbY4Qb4jDWXEFpr30j9RoAlpL/toKy/k1gW1qsiv69kXnA4l9dxZE/
         5NEK8PJynJT7eqgV04aFxaknLmSAMCOM/WmRyaN7l9xetQFoSUcoEudsLptZ+PKVcGHH
         og+abcvYdVXXYrP5APjuA1H4ZexRxRmoioIFg0hQfremKksz0KHvXe/c3UhH0nIrhePu
         inHsAHSSUw5V6OwuKLlJt/ur5O9cGEP33Yrhsr9DbyeduBR92hF8fg0+1iCpZHWecAI8
         17FA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=RITWw7jX;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1720256545; x=1720861345; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=yndygSJBdhMNDQhrwM6Ao+/G1LrpIVqFnjv/Ti+zoaU=;
        b=XM6I0Gbg18auFH116th6MmPTOib0vp5F/uHSlwcMlgeIDQitXr8B8SHo7FT4rkKDRM
         +pfPP9XHitiupcRDmEPJIIhaBapsUCyQmAT/vdvFXOaMNAVXMWjHQeupICn/XDYzTiri
         FFREcMskl5WZJZJkZjyy0jY0kEY3am7wn1pwg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720256545; x=1720861345;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yndygSJBdhMNDQhrwM6Ao+/G1LrpIVqFnjv/Ti+zoaU=;
        b=uvH+59iNQICXsLAbDF3qRUOh7nXfCf4gERfV5/72Vb0+3opPa0mDUHOuQfYaoM7dEn
         wWuN32JI7/os8uIdLiT5R9TcH1B2dPhQQ7v2r4sS6/N2+jGEItr0DhvIKf4jf11UWIBc
         ghBNE3Y2SPdv8X0zbv714Qd18RbFbIfCF5h7C3Q/OOs60biTQax9Oi2fEL1bvMtpFV+o
         1Ue7i3JYvnA21ay6heNnMcgN0QC8EnFdmpxFbr5Kb88qcDRIDrcP8O5U90FiT9skIR1n
         0qpqEH65XYxlL54VN2oQaQt8E/tqebocNkS0C6oIsBAae8grvMwnUkjVu8asphrGDuRL
         tKgw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCW9jkgh2YFXvgn0gC9kneooXQ6gMDKvsHTrzoCqIKGRdSkjFSGVTQnYDTqnqWHCk7r/OIngYz7+5tnSspFMFz9R+3iUlurVqlvE
X-Gm-Message-State: AOJu0Yy3DPBNir96aci1NaUtV0XyODk92jwkBa9tcmuLfWyVlgFbBLWx
	OV5Lto+FUongMyAYVMYLSnWGfUyDw9k3DTwu8973iwSRVtlaSJHLsx5Imhl76eU=
X-Google-Smtp-Source: AGHT+IEN3Mnfm3tu4SQ821kLh17BQKUNhGyA9WNVYNtYy6GyoLz78L0FB58F2FSsFBlGj2VkJZpeqQ==
X-Received: by 2002:a05:6870:a2cf:b0:254:b7d9:2dd0 with SMTP id 586e51a60fabf-25e2bf9b9fcmr6100827fac.55.1720256545509;
        Sat, 06 Jul 2024 02:02:25 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6a00:1ad4:b0:706:7c96:9d10 with SMTP id
 d2e1a72fcca58-70afef9474fls1409912b3a.1.-pod-prod-01-us; Sat, 06 Jul 2024
 02:02:24 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXDHaglY+jipKbxBHO4SooypabSS7ULkpD7cU5Nviap3Lh2Ux61R9+zXW/zQVqFmeuBZM2FS4nVj/UdraFebhZZ5gXLRqLJmBhpPR55YmD4c6kJrY8=
X-Received: by 2002:a05:6a00:2e1d:b0:70a:f576:beef with SMTP id d2e1a72fcca58-70b0092d73amr7658053b3a.5.1720256544352;
        Sat, 06 Jul 2024 02:02:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1720256544; cv=none;
        d=google.com; s=arc-20160816;
        b=giMGp8ac7cE/ppYLuU5Zy/i/3qQ+px6f358eo4vy8pTJwNx6fgblx8zqOYc9RZIyOe
         dam5IOq14zcVxDJl+S1wpEVxy62ZkeW7ZP+9DCElPfA+jSOb9Rl5tO4BicGOaWlfaMqe
         oRnBiftHeJvU8+at6l1OQdFVxWtw2ASy+LJ2l+iKcqP7Fsf15zeADfnji9C3b/uDAz1t
         F4NgCwQh4p1Qxtc7LC0XiFiJfOQLMFGUzOU98nEoRTMgY/JZAtC+ejl0K5GqRywJyIeE
         yfglkw1KZQ9goLpnnzsj7P/kMZMzO6bNRLFispHg8n3Fz7AEcodzwvsmNaf5Ezrm9bMc
         S59w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=kNuS+79CwQS4q+7AKh7w0IgkS92bR9M01rJRfT6yOSU=;
        fh=NCLT7UP1lSOqPDBC39YTooodq4cSTfiipjGQ+NQqQNU=;
        b=q5tN/JcP4NbGe7w5yD8SDFt2Z/n7yrvlzHcMZEAgUpdFtHI5pDHt3+oXLDm4jQac/T
         e/E/Hh0c61UBD9Wm2M9K1IxpjGqPUQSOZ+oYwDRyEG18yUvbDWGKuxAa/TebZbQk1fqw
         tjBge1i0g9uVFzTYC7XzNNBj+vZW5TNveCd0/IrKV7K1kUgf6Hq1JalMrz1RJkH0r7bS
         BJ+hZ/ae+lEFfIg7IRv3DL925ZgCnJEVZ1lalPcoxSm8PSXJTOw2PYT4kcvRQgE/Eg0P
         4atthLgFvhEuQIUP4S7ZyKRzbU1P0Qh8UH3N07INvUjM+R11NQpqn7jX/XPqykCG+M2c
         da2A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=RITWw7jX;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [145.40.73.55])
        by mx.google.com with ESMTPS id d2e1a72fcca58-70b1fbade1esi529045b3a.105.2024.07.06.02.02.24
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Jul 2024 02:02:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as permitted sender) client-ip=145.40.73.55;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id CABDDCE0A05;
	Sat,  6 Jul 2024 09:02:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0138C2BD10;
	Sat,  6 Jul 2024 09:02:21 +0000 (UTC)
Date: Sat, 6 Jul 2024 11:02:18 +0200
From: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
To: Aditya Garg <gargaditya08@live.com>
Cc: "oneukum@suse.com" <oneukum@suse.com>,
	"stern@rowland.harvard.edu" <stern@rowland.harvard.edu>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	"linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
	"usb-storage@lists.one-eyed-alien.net" <usb-storage@lists.one-eyed-alien.net>,
	Kerem Karabay <kekrby@gmail.com>,
	Orlando Chamberlain <orlandoch.dev@gmail.com>
Subject: [usb-storage] Re: [PATCH] USB: core: add 'shutdown' callback to usb_driver
Message-ID: <2024070622-alarm-kissable-f446@gregkh>
References: <7332D45F-9BD3-4D0E-A5AF-9845353415A9@live.com>
 <2024070649-nuzzle-movable-f383@gregkh>
 <C5231A8D-C529-4BAC-9E2D-32F00321A294@live.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <C5231A8D-C529-4BAC-9E2D-32F00321A294@live.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=RITWw7jX;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Sat, Jul 06, 2024 at 08:56:05AM +0000, Aditya Garg wrote:
>=20
> Hi Greg
>=20
> > On 6 Jul 2024, at 1:43=E2=80=AFPM, gregkh@linuxfoundation.org wrote:
> >=20
> > On Fri, Jul 05, 2024 at 11:21:06AM +0000, Aditya Garg wrote:
> >> From: Kerem Karabay <kekrby@gmail.com>
> >>=20
> >> This simplifies running code on shutdown for USB drivers.
> >>=20
> >=20
> > Sorry, but this does not explain why this is needed at all :(
> >=20
> > Where did this change come from?  What problem does it solve?  Why
> > should we take it?
> >=20
>=20
> Currently there is no standardized method for USB drivers to handle
> shutdown events. This patch simplifies running code on shutdown for USB
> devices by adding a shutdown callback to usb_driver. It also implements t=
he
> new method to existing "USB Attached SCSI=E2=80=9D driver that required s=
hutdown
>=20
> Is this good enough?

It's a good start, yes.

But as you say "also" that means you should split this up into at least
2 changes, right?

> > I think I know the answers to these questions, but you need to document
> > it here as to why it is needed (please read the kernel documentation fo=
r
> > how to write a good changelog text and subject line.)
>=20
> The subject looks fine to me. If you think it can be improved, suggestion=
s shall be appreciated.

When you split the patch up, the subject lines will get better.

thanks,

greg k-h

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/2024070622-alarm-kissable-f446%40gre=
gkh.
