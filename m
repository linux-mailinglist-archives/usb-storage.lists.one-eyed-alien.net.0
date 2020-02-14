Return-Path: <usb-storage+bncBD6LRVPZ6YGRBKNRTTZAKGQE5TLBRFI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x845.google.com (mail-qt1-x845.google.com [IPv6:2607:f8b0:4864:20::845])
	by mail.lfdr.de (Postfix) with ESMTPS id 9890815F92C
	for <lists+usb-storage@lfdr.de>; Fri, 14 Feb 2020 23:01:14 +0100 (CET)
Received: by mail-qt1-x845.google.com with SMTP id r30sf2566684qtb.10
        for <lists+usb-storage@lfdr.de>; Fri, 14 Feb 2020 14:01:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581717673; cv=pass;
        d=google.com; s=arc-20160816;
        b=aXTPnGSwULngHHtR/Vk6d9dr8qsP4IEqeD+OgXBbU2lNTzwba2YJQgHyntcY2t8soW
         SFPW0U/nb5oqxLpaOzdnGPSIgfKD00FUWJ5AOShnR8M4WMkJlUyiJRcVaz/LC/RJkIqB
         x+Yn6Gu1Ul/L00rX8Qv20fxuy5Y+VrU/19qHFDE+AdJ5yPDs5p0FoF1BWZuke4B/rivl
         1iNhI3PaeXJDUbOfyzJr/VXreLusn6icTqojQeTNgOJGmdH1iqS+obJ7R4W9/i4L2Lqu
         EWiZDNnW1Mxjzb1Jqvaw+qLMQVtEYZAAYufeqC96Zq3GJE3GTFKW2CVLYwuGYdws73Jn
         UcEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:in-reply-to
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=7DU4Wy+14Oj+GFXKUL2gVVkMfUv0Kt9hQXX6TFmtrGY=;
        b=p2FedVZzrRjnqkS2tBs21hYgOAb1cEb0a6YEnKrbRz7ZE0F+e7MX1ETuLXiPI0bCdY
         MQTjtVTDsB+7xE8DE/piSuCGlwNQiQrF8yfXwdfoSHWP9rTV1dpyFGR0g8fFAWQGPESA
         z+NaFMhC1Bjyeike4EcpBG69kgslf8yrBugBpDzrPcA60iVmrB83BoQ9nlDsEMCYf3Am
         Cy1IDGr1ED5TJSoLCHxpRaSa1X7n5q3bZ1lY5YXr57Zazyqi0NH2xhZXxZ74Osgvt7GE
         LBAvyVW1O1Emhl0UHdWQi/7moo6HwfAYUrVTai44JgE8OaiO6f1cNrurykxn1OEkriR+
         TKFw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+5e5a5726@rowland.harvard.edu designates 192.131.102.54 as permitted sender) smtp.mailfrom=stern+5e5a5726@rowland.harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7DU4Wy+14Oj+GFXKUL2gVVkMfUv0Kt9hQXX6TFmtrGY=;
        b=eXofrNDYDkWfWUDdHurlUtCNW42+zAv1HnCaW2gmMKWmCw/OJN1Ul3cw8B+WpY27YQ
         Jwq3e5syD+hCN2XhpHsZ7ddePJ514oclTENFyDyeOFZI5QWX72Gw7Pc+sDU19DLkKlnI
         tvZ8cejl5BIfFYEu+gI4C9EBsKRqssgnyMqPA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7DU4Wy+14Oj+GFXKUL2gVVkMfUv0Kt9hQXX6TFmtrGY=;
        b=O2x62cZEMx+C/o6d7SVMkpfZByrBZY2i4jmUimW88SY9Hpr9RiWMurYLMKlKgKfbOv
         YhnnzWbtklLGw+oLEUr2yhgOt5yMzOfybm+l8sllzaREIA0yfs7HLO2xnzgJH/39+Ul9
         TgK9f8s1h3DQxmJ5DsyMwYzpGYjzuvywkJqvFt14UBETwATx+qaTQiE7cRwnpafoUZ5f
         UEIwJzZqiZwPt4V10aUzTmJUtb/4IHMi10ECRRXBmACd6UD5nAd34PdPt4BfS1l5l4gT
         3iLx2+OD1lip/VC996eMgm4UWy3Nt986tMr6DRqmaKLAwhstYM1bab28akK8ADlvn7Y2
         Tmeg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAV7+KovJM+TU0Zk/1ZmWaDoXjT4s9bDLIRPd+5rIcK/XCBL5Hhi
	4FQGkImE5jwFGRHLwu5MEvijJA==
X-Google-Smtp-Source: APXvYqw1bV+y/4rZAH26Gphh0TZJV4CI1ItvIk1QD8yMrPKjm1zz+RQWgZBz6nn+VnzdEngOyiX9Lw==
X-Received: by 2002:ac8:691a:: with SMTP id e26mr4319015qtr.287.1581717673375;
        Fri, 14 Feb 2020 14:01:13 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:1762:: with SMTP id u31ls1297956qtk.9.gmail; Fri, 14 Feb
 2020 14:01:12 -0800 (PST)
X-Received: by 2002:ac8:f02:: with SMTP id e2mr4056568qtk.216.1581717672826;
        Fri, 14 Feb 2020 14:01:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581717672; cv=none;
        d=google.com; s=arc-20160816;
        b=ufsCNEyUJufCl3fJxskaNATQHPpzzZaY//zeDG5BI0L2pMJk/m+zKiROOvnZPb79uX
         p0+aleNzcrHHuvAlG+6qfCmxPW6O67JEZdUzlO9SNDKUGx4SroG8MTIfWjjlAL5ePTvF
         4NifWOc7v2ZUMdPsf7D5OWsLdPT9WIULAzKw9PrzgzKDbf6E+fA+W1qNB+KB4BdadstJ
         Ie58QvlWkqgL1qZZH0VRB0EZ/n7hWH1+efOGIMHlB/+JXk0XQ3mHWCDcFKIFTVVNwGpX
         H1sgLv1wF1oQJxKqGhIlW87lHXuOnNYpxeSTp11OoYZE5qx5TU66UOR27JM+0kdsNYVC
         C88Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:in-reply-to:subject:cc:to:from:date;
        bh=7DU4Wy+14Oj+GFXKUL2gVVkMfUv0Kt9hQXX6TFmtrGY=;
        b=LbtnqGrZfoCi9ESiexay1kMSXLZSQxk/UkotPopbDn78fEJbgT5eEqtEZI0SVdAHit
         pAlNgVHnPYmcreilpuis+91tFKfWyu9hqbfqgCMdsNq9DSDABNPNmrNVo1kJYKasnXd2
         Hb+jabLMYF6RVdLzM+tv2450hN5Z96L6wwZdFTaWlfiVoAmQONcGJFz//0yb5Mb+hDlu
         ytYBcVPWyYtDNx/zCMfYV4So/y6J3wqy5H8twyPGYNbEnGZ2bdq+ILNNFqa8bc/zn1Xy
         N2Mlw5d3pUfzztansHa9hpJ3SHVRlc9NX7B5r5RSNwCnLOaWIGvz65s1ws1Y6a8L8KGp
         Z7DQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+5e5a5726@rowland.harvard.edu designates 192.131.102.54 as permitted sender) smtp.mailfrom=stern+5e5a5726@rowland.harvard.edu
Received: from iolanthe.rowland.org (iolanthe.rowland.org. [192.131.102.54])
        by mx.google.com with SMTP id n7si3526235qkg.290.2020.02.14.14.01.12
        for <usb-storage@lists.one-eyed-alien.net>;
        Fri, 14 Feb 2020 14:01:12 -0800 (PST)
Received-SPF: pass (google.com: domain of stern+5e5a5726@rowland.harvard.edu designates 192.131.102.54 as permitted sender) client-ip=192.131.102.54;
Received: (qmail 7837 invoked by uid 2102); 14 Feb 2020 17:01:11 -0500
Received: from localhost (sendmail-bs@127.0.0.1)
  by localhost with SMTP; 14 Feb 2020 17:01:11 -0500
Date: Fri, 14 Feb 2020 17:01:11 -0500 (EST)
From: Alan Stern <stern@rowland.harvard.edu>
X-X-Sender: stern@iolanthe.rowland.org
To: Joe Perches <joe@perches.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
     <linux-usb@vger.kernel.org>,  <usb-storage@lists.one-eyed-alien.net>, 
    linux-kernel <linux-kernel@vger.kernel.org>
Subject: [usb-storage] Re: [PATCH] usb-storage: Use const to reduce object
 data size
In-Reply-To: <60559197a1af9e0af7f329cc3427989e5756846f.camel@perches.com>
Message-ID: <Pine.LNX.4.44L0.2002141700390.1579-100000@iolanthe.rowland.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+5e5a5726@rowland.harvard.edu designates 192.131.102.54 as
 permitted sender) smtp.mailfrom=stern+5e5a5726@rowland.harvard.edu
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

On Fri, 14 Feb 2020, Joe Perches wrote:

> Make structs const to reduce data size ~20KB.
> 
> Change function arguments and prototypes as necessary to compile.
> 
> $ size (x86-64 defconfig pre)
>    text	   data	    bss	    dec	    hex	filename
>   12281	  10948	    480	  23709	   5c9d	./drivers/usb/storage/usb.o
>     111	  10528	      8	  10647	   2997	./drivers/usb/storage/usual-tables.o
> 
> $ size (x86-64 defconfig post)
>    text	   data	    bss	    dec	    hex	filename
>   22809	    420	    480	  23709	   5c9d	drivers/usb/storage/usb.o
>   10551	      0	      0	  10551	   2937	drivers/usb/storage/usual-tables.o
> 
> Signed-off-by: Joe Perches <joe@perches.com>
> ---
> 
> compile tested only
> 
>  drivers/usb/storage/usb.c          | 10 +++++-----
>  drivers/usb/storage/usb.h          |  5 +++--
>  drivers/usb/storage/usual-tables.c |  6 +++---
>  include/linux/usb_usual.h          |  2 +-
>  4 files changed, 12 insertions(+), 11 deletions(-)

It all looks quite reasonable.

Acked-by: Alan Stern <stern@rowland.harvard.edu>

Alan Stern

