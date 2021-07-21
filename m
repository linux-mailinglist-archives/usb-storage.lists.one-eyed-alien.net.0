Return-Path: <usb-storage+bncBD6LRVPZ6YGRB4HB4CDQMGQEX3HRFDI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x748.google.com (mail-qk1-x748.google.com [IPv6:2607:f8b0:4864:20::748])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6933D117F
	for <lists+usb-storage@lfdr.de>; Wed, 21 Jul 2021 16:36:33 +0200 (CEST)
Received: by mail-qk1-x748.google.com with SMTP id f203-20020a379cd40000b02903b861bec838sf1858594qke.7
        for <lists+usb-storage@lfdr.de>; Wed, 21 Jul 2021 07:36:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626878192; cv=pass;
        d=google.com; s=arc-20160816;
        b=inmPfD9v74T31bs4pbPDsKTq/RfsCNNH4ytVKKJyNMfF3c5VrrfNvF1Tu6K8efgLj/
         GDQKo2VPjcxNzc/7s4YqPsS9LJyXPFGvXodKiPVy2SnTv2T7hWY9HTU0UGmR582wOnJL
         Sl8gqmmcmE4H6SkIwTiY1HUV+lkBVrKyEQHMpVcfngTwA74YwGjWU/MB0QjG7JbzZjng
         g1fhJFV5hWfZ2FVBMcDnDtYMhcqH0kw80N4336SaApPXCRL7MzOwcx9gEqFExHoh2raB
         UWbt8t7qJICHB8LV09iR099jupsdrNCPK2ClF1wDRATPrwgMjv76J20lwT4LCkhsO5jO
         2wAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=LEfhg89cS3gpaxOj+umFnFv5rUSYjZ54NjQ85e6iJ9E=;
        b=bHonBnI5hIPEUaAjVl93bAkj+HmGBY28g81oX4Q7ttYanTuk/BSQ+JsaUbADYvPmFO
         633LYAUR62Uu50YqmISSgdfR4evIL4nh43FgXQS3/bMljOgIZMpaIpoZrhUoFJuiaVNR
         Z2V91wQZaRMyE4diLbP3WSrPvIL/3jGSB2HPaF9IzhsoZWMr5UU2sy2xi3slxOvDDACS
         wcPBY7Cvi2wDTnlLzRgP6yWFMIcl81esZt52X8b75/o5e/1PgVQtabBsenXVdF3XcGr9
         r71Otthq08pnNhSYntAd8jfwBt7rXugWS/V0BQp/Gkh9RZNtHBZx6kAkOZs0oRZRY2vx
         qVPw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+60f9b9f8@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+60f9b9f8@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LEfhg89cS3gpaxOj+umFnFv5rUSYjZ54NjQ85e6iJ9E=;
        b=kMbVdK/M3u2QO47Th9y0MUk3rRq+NPfUCo0UZP4RQ/jNQSCEA+RzRCP9Y1q9un9Cpn
         RatYC+u+LDB1+9au+eO0bfRxhJOhSrmVhoj/m/nlwd1cETB721egZ82+Ak/DeUDUDdxx
         1HkRa8WOctYUngb/uUM/SkZV9ljA37f/CHzrk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LEfhg89cS3gpaxOj+umFnFv5rUSYjZ54NjQ85e6iJ9E=;
        b=W/IojcAJ/Gf6X7ronWI1T4AgbvD4m29VCyOv4rULdiR4UqTVs2zZ/brHeX0/inU3Eo
         +NBn/jEdEb9MQHMMHhJriU4PZFH8dk0/A7V0scRzf5JhOuiNnMvpqvxJ6igBt7riLAAJ
         jq9qVaE9zSGfO93wEcYxx9tlu9OMtlN+qi+DaWpVBfnKxkZoBO5IpkR3LojSVr4U7A2z
         9DfNn9BMPeTfLS+tTxnEUcOfAJuHmAIubyYnGImYEoMJT7t8p4sKJAapT82I9bLWeDjA
         1iJSLw0SQR5a0vJvrMTitBEbzIYFirE8nHPH8LigQLagJ4xhPpi/t8/isVK5lZdjwIrZ
         1HBw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM5331/lqn8vxh4+Ol8QcJv5plofXahg/fvnXUhFfk9BBM5suHEV2K
	ipKLoq4u9eAID/O17P0TOiq4Mw==
X-Google-Smtp-Source: ABdhPJx5tgK05f3yg2KotMe7eSe6Qo3NEjdl4SH4uD4oMh7Q+bM1PTJxWCQApKH/OpHI85Ybmpe82w==
X-Received: by 2002:a05:620a:982:: with SMTP id x2mr24425231qkx.347.1626878192519;
        Wed, 21 Jul 2021 07:36:32 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ad4:5c42:: with SMTP id a2ls1052483qva.0.gmail; Wed, 21 Jul
 2021 07:36:32 -0700 (PDT)
X-Received: by 2002:ad4:584c:: with SMTP id de12mr36985048qvb.1.1626878191954;
        Wed, 21 Jul 2021 07:36:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626878191; cv=none;
        d=google.com; s=arc-20160816;
        b=ict+wDUers+WDeDSqCiJUjhIfHf/gkjW94yNBjTgyZ9MTvy5/bRl71QFhQi6PUYxxC
         v04K3XVOfswAPSGxx8Krf8lBZHPFrTjoOsqt1qLFb8mcxKTNWEHQQitq5jUSo4JPdNK5
         S3H2kCHNbuJ+1+/iW+eA0sgMzX48VREeWTb+FwQcluptG/zv/YEx4WW9TFlcNY/EEjbU
         evybmz67MBIT9Sv5EfcMq+9c/Ry7W8nYJj7zTCbSzgE/zBVIbUthFbAV7nRwA7MMri6N
         X+RDH3OIUWAZAB5bnyw1SwkOUgZBYbQFsE9+J3u+CpaqOTrBnejDMouf2DLY4b9qddWc
         uV6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=XZrNCia4xMx0BYfrX7r59Vev99flwYqG2T3gJu71168=;
        b=El4UjutZ8VvTlQGwaJqcholz5DCAJd8yQxGSrLAhIFr56FASr+qL9KkylSBZEllp2d
         wCoug5uJri9Fmrv5Z7f59q6cTiUMHLDHhqRliXuk6vogmku1c322cEQi6zORtdlu2WbE
         BAWnbNcnnLM/4CmrKFdxWpUky+zlZwmoIV+zal2BFQEkdCj1xZVvSJAGLzDUDbVzCqSs
         9CxPWoQgSQNOHSJVWwzV2/4398drHUgEsB1mvC4+R3jpL0Y4UUp3vhEg/Cn+Go5u75bj
         FpyAp4GTDFWFAm6qLIUCb3y3Kb1c8HBaqngwuAn6VydBnZLbSi5CwXjuJ0HsOTuwNkU/
         DXxw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+60f9b9f8@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+60f9b9f8@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id n12si20422960qvi.121.2021.07.21.07.36.31
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 21 Jul 2021 07:36:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+60f9b9f8@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 634549 invoked by uid 1000); 21 Jul 2021 10:36:31 -0400
Date: Wed, 21 Jul 2021 10:36:31 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Jason Quackenbush <jfquackenbush@gmail.com>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: Re: [usb-storage] unusual diagnostic message requestl?
Message-ID: <20210721143631.GB633399@rowland.harvard.edu>
References: <CAORgStp5VT5MVHuBeZEVW08VaUkUfCNHqWhiEKFTchKGzrzf9g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAORgStp5VT5MVHuBeZEVW08VaUkUfCNHqWhiEKFTchKGzrzf9g@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+60f9b9f8@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+60f9b9f8@netrider.rowland.org
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

On Tue, Jul 20, 2021 at 09:14:22PM -0700, Jason Quackenbush wrote:
> Hi, I received a strange notice in the dmesg log while trying to figure out
> why a thumb drive is misbehaving. It told me to send the message to these
> email addresses so I am doing as instructed. I've also included all the
> messages included in the string beginning with when I plugged the stick in
> up to the point where the log stopped because i ran the dmesg command.

Thanks for sending this in.

> Please let me know if you would like any additional information. The dmesg
> output was as follows:
> 
> [30931.644203] usb 1-2.1: new high-speed USB device number 23 using xhci_hcd
> [30931.720562] usb 1-2.1: New USB device found, idVendor=ffff,
> idProduct=1201
> [30931.720580] usb 1-2.1: New USB device strings: Mfr=0, Product=0,
> SerialNumber=0
> [30931.725709] usb-storage 1-2.1:1.0: USB Mass Storage device detected
> 
> 
> *[30931.731119] usb-storage 1-2.1:1.0: This device (ffff,1201,0000 S 06 P
> 50) has unneeded SubClass and Protocol entries in unusual_devs.h (kernel
> 4.16.18-galliumos)                  Please send a copy of this message to
> <linux-usb@vger.kernel.org <linux-usb@vger.kernel.org>> and
> <usb-storage@lists.one-eyed-alien.net
> <usb-storage@lists.one-eyed-alien.net>>*[30931.731321] scsi host0:
> usb-storage 1-2.1:1.0

I don't see any entry like that (vendor ID = 0xffff, product ID = 0x1201) in 
unusual_devs.h in the standard 4.16.18 kernel source.  Has your kernel been 
modified to add such an entry?

Assuming it has, it looks like the entry wasn't added correctly.  It 
probably should contain USB_SC_DEVICE and USB_PR_DEVICE rather than 
USB_SC_SCSI and USB_PR_BULK.

Alan Stern

PS: It also looks like that thumb drive was was programmed in a rather 
shoddy fashion, not compliant with the appropriate standards requirements.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20210721143631.GB633399%40rowland.harvard.edu.
