Return-Path: <usb-storage+bncBD6LRVPZ6YGRB5GT5XUAKGQE6YXOH3I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x747.google.com (mail-qk1-x747.google.com [IPv6:2607:f8b0:4864:20::747])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC845D1BA
	for <lists+usb-storage@lfdr.de>; Tue,  2 Jul 2019 16:28:05 +0200 (CEST)
Received: by mail-qk1-x747.google.com with SMTP id x17sf16843764qkf.14
        for <lists+usb-storage@lfdr.de>; Tue, 02 Jul 2019 07:28:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562077684; cv=pass;
        d=google.com; s=arc-20160816;
        b=AQGh1uxtQ8pONpyyzAYZak8KpcLsnHJ52j7aBFoDkq6EdfynIPSHcXvxBXv084Wq7l
         Dp9NCXnxhq8nL8mZOi2vPZbbJGZm1/XdXsB9BT91o8yDT4+Dv0fkzx9qk75crAIp0qTu
         x5ojZa4Ik01lzWeTbUxAWoySZcJ0z8mtOHIH//Fty/1EGOKmzYYJ68yxUCPQoCp+kCm6
         YpZwoa/Z7vmywv2Ku339xEAy8MCwdA+asbo5k4CvFSZ1vTnjKB094LK9ImG/kVRW7gWV
         l5XUmJIi/C+aUQhlkSETYoN3bVGWit/LtU9n1J4I2OBRuob4UjejoSzMqRP6l2lmW9WZ
         vNHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:in-reply-to
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=c2mw6Xhzl+AJaUG/uc8s8fu8K2ECeRmS5z8eNR59muc=;
        b=U2us+cPKGZweNKXRTA4uUajA1OIqPpc/qAd5f0crxHrTCjD73xou5Oqigisk2BdtXP
         20xLox/qs+LGuPkSxXtak1GsXJxEtGaFL+GqkufSJJeN0I8wOYblul+zFylMcVT2FVxQ
         YsGqbojQcfaQJLdhwpvWIvFY4z0heWrlhBPAfR6St+tCyiP81oDbuwKyWs/6kpneYx/F
         g4OPC7Q9yKQtMvD312OTk5gLKdIDJvopQExMHRAXtzZJrRzC8hoEk2UGxDyeO+if2BoA
         6BH1KRWUB9BNsUg8JX9krtiJphrNu3en5JPNC23ujt+LF06u3h1nDtUYRoQ7MIdMCWoo
         0qCA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+5d0bf768@rowland.harvard.edu designates 192.131.102.54 as permitted sender) smtp.mailfrom=stern+5d0bf768@rowland.harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c2mw6Xhzl+AJaUG/uc8s8fu8K2ECeRmS5z8eNR59muc=;
        b=chNdfGwk3RA/E8rX4jcogHI/wPyUDUa8ax+Kyt9MU5KyIu9lTFZNsKoOF3AoiAJNmH
         V2bWm8kTUPmjNlygYCOxhKyLTGWDq8hmotQrfiWPSlMT4JXnl2zPFDKCxJ8+rPWAiz8l
         JvypVXGn9MTGg0UaAtuoxk7RvYhqSJtY9zeoE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c2mw6Xhzl+AJaUG/uc8s8fu8K2ECeRmS5z8eNR59muc=;
        b=Y/LpgJtDiy0FSU1lKzegODfWwsVzQXs8VOXTkWgZo4SFQvexL1q94/iHaGXy86LzMI
         dVfoyXSl3FPce6fHuDC3KeROY5BgMPNVy3WBnlN9DsKsrZRQQDs4D16ZFiYyqPN6YE6Y
         6NCjQQGpbY/AR4XTIPsaa/P9OKIwRK6fotY0LKT8vAyniIWAkgzrE1CHfJfQSSlvUjk+
         AoilIcq7eOJ/6w0DaXF5bnwPqt1VRRwtKiDKcM6cv2vhJ5pFCyLmH8BdtpLVAG3f4Nri
         3YBGEsyhnZI33sQI+Y0LGRoy+7FobgA25oWd+f4meOZqRe1cOuQlFMZ6TAoVUBxVkiXQ
         mTSg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUXEcxTecffN5kZnURje6XdL6lkKmCkrmsBzj3r62FbcI+Z7jHb
	i0tW12LH2Ly08eWi90xA2YIoHg==
X-Google-Smtp-Source: APXvYqx2baQmVhrq/fzIhtXhfg7JYRfb2Q2XebXjLPISmofBM9FwoorhM7ue4xjnFpKHJ7xDpf1RYw==
X-Received: by 2002:a0c:9305:: with SMTP id d5mr26951964qvd.83.1562077684785;
        Tue, 02 Jul 2019 07:28:04 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aed:3f50:: with SMTP id q16ls3674510qtf.6.gmail; Tue, 02 Jul
 2019 07:28:04 -0700 (PDT)
X-Received: by 2002:ac8:738e:: with SMTP id t14mr25164860qtp.386.1562077684404;
        Tue, 02 Jul 2019 07:28:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562077684; cv=none;
        d=google.com; s=arc-20160816;
        b=nsRyFdD0GFUhaY7hc2FBfzN57+c7ZaZIIk2lnaQpqM6X0LW0of5Yr2taas3REg4Huq
         AQBSSGvMzzsbIC7P+hkIgc1ePHZdlEq54QFGhkbORPSvG74NPwSTWwbxPPMbiRoJ6jQS
         WnEQOPHDGwqKIeeQRHM3i1nYTEmm7LGVaxZrix4hcFmAoy6G0M93WOUzB5HwXeVFRuRV
         OFU1vVaJGxoIRyk7SWWkah96wLb5R0pWZlY+n5gVZLds/ToHSgH1GowH4qFeZEHhPLfa
         IaV+GOLrvEYkcNa1yxEFZCuds3YEhMU/y8ln2xPy96rWyR63jZiEmM/Rs1hCMqogydip
         tXEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:in-reply-to:subject:cc:to:from:date;
        bh=c2mw6Xhzl+AJaUG/uc8s8fu8K2ECeRmS5z8eNR59muc=;
        b=zcOK7DzbCC2DmiZ9r5dI7ujWsE5+MRxvBdFAhY7ESoQd+mOG4UqkHMg472SkAEcPdq
         8ouqxxxn9uaw9027fPmJknJvLce6FRsHuidVtyLDrtCaXBZcaJj8MrIJHQSMzuHsm65L
         z00kzz6/L0ilsQ0kYSNmLAVw9VkqzzkQrbbLNJbQ7RLL/ygeJkuzhkzE5rbcmpuJw4DC
         BQ7339hCvWNLFIdUUSXfSIPP/TfY150G3jFsgfSI5c05RuIHxZvOkj4Y+KGGUKPYS+7f
         U4kXsIuOW6hmDD3F5xNT26Tf0GX4IAwXkv6HtCCz1zm86tpbl7dSrkrL8tI6ZC8Di597
         zXhA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+5d0bf768@rowland.harvard.edu designates 192.131.102.54 as permitted sender) smtp.mailfrom=stern+5d0bf768@rowland.harvard.edu
Received: from iolanthe.rowland.org (iolanthe.rowland.org. [192.131.102.54])
        by mx.google.com with SMTP id s21si9451288qte.82.2019.07.02.07.28.04
        for <usb-storage@lists.one-eyed-alien.net>;
        Tue, 02 Jul 2019 07:28:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+5d0bf768@rowland.harvard.edu designates 192.131.102.54 as permitted sender) client-ip=192.131.102.54;
Received: (qmail 2902 invoked by uid 2102); 2 Jul 2019 10:28:03 -0400
Received: from localhost (sendmail-bs@127.0.0.1)
  by localhost with SMTP; 2 Jul 2019 10:28:03 -0400
Date: Tue, 2 Jul 2019 10:28:03 -0400 (EDT)
From: Alan Stern <stern@rowland.harvard.edu>
X-X-Sender: stern@iolanthe.rowland.org
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
    Greg KH <greg@kroah.com>
cc: shuah <shuah@kernel.org>, Suwan Kim <suwan.kim027@gmail.com>, 
    "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, 
    "usb-storage@lists.one-eyed-alien.net" <usb-storage@lists.one-eyed-alien.net>, 
    "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, 
    Christoph Hellwig <hch@lst.de>
Subject: [usb-storage] RE: [PATCH v2] usb-storage: Add a limitation for blk_queue_max_hw_sectors()
In-Reply-To: <TYAPR01MB454412603157D6DDCB512092D8F80@TYAPR01MB4544.jpnprd01.prod.outlook.com>
Message-ID: <Pine.LNX.4.44L0.1907021018220.1647-100000@iolanthe.rowland.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+5d0bf768@rowland.harvard.edu designates 192.131.102.54 as
 permitted sender) smtp.mailfrom=stern+5d0bf768@rowland.harvard.edu
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

On Tue, 2 Jul 2019, Yoshihiro Shimoda wrote:

> Hi Alan, shuah, Suwan,
> 
> > From: Christoph Hellwig, Sent: Monday, June 17, 2019 3:22 PM
> > 
> > On Mon, Jun 17, 2019 at 04:17:43AM +0000, Yoshihiro Shimoda wrote:
> > > Thank you for the comments. So, should I wait for getting rid of the
> > > virt_boundary_mask stuff? If I revise the commit log of this patch,
> > > is it acceptable for v5.2-stable as a workaround? In other words,
> > > I worry about this issue exists on v5.2-stable.
> > 
> > It does exist on 5.2-stable and we should fix it.  I'll plan to resend
> > my series to fix the virt_boundary issues for the other SCSI driver
> > soon, but we'll still need to sort out usb-storage.
> 
> I guess that getting rid of the virt_boundary_mask stuff [1] needs more time.
> So, for v5.2-stable, would you accept my patch as a workaround?
> JFYI, v5.2-rc7 still has this "swiotlb buffer is full" issue.
> 
> [1]
> https://marc.info/?l=linux-kernel&m=156114524808042&w=2

I would really prefer to see a different solution.

The actual problem is that the usb_device and usb_interface structures
are supposed to inherit all of their DMA properties from the bus's host
controller.  But the existing code copies only the dma_mask and
dma_pfn_offset fields in the embedded device structures.  If we copied
all of the important DMA fields then this patch wouldn't be needed; the
max_sectors value for the request queue would be set up correctly to
begin with.

So what I would like to see is a new subroutine -- perhaps in the
driver core -- that copies the DMA fields from one struct device to
another.  Then we could call this subroutine in usb_alloc_dev() and
usb_set_configuration() instead of copying the information manually.

Greg and Christoph, does that make sense?

Yoshihiro, would you like to write a patch that does this?

Alan Stern

