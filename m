Return-Path: <usb-storage+bncBD6LRVPZ6YGRBRGVZWBAMGQEFC7LPDI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x846.google.com (mail-qt1-x846.google.com [IPv6:2607:f8b0:4864:20::846])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3E5340843
	for <lists+usb-storage@lfdr.de>; Thu, 18 Mar 2021 15:59:18 +0100 (CET)
Received: by mail-qt1-x846.google.com with SMTP id v18sf6099478qtx.0
        for <lists+usb-storage@lfdr.de>; Thu, 18 Mar 2021 07:59:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616079557; cv=pass;
        d=google.com; s=arc-20160816;
        b=O3viLGWJNle/jfN1DpqW5dsdO+xqt+azueWsyCDbpxIFwDhGAwgVUGU/h6RCfsjitZ
         CcaPKFMyypOM32I5QgCF9m65fQv+tg2rZcgbpiO8L+0gWrSmoKk8yLrBPBzl99KsSxvu
         K0lZtnpFw1eel/s+NZthMfsuNPme33PASw2RsoRspVyTN+zVAVeQ9olX5AQHlf+AqeKv
         DkI2E3tWMtL2mzSlNLUBx4Zw3AGwqD4QlQQUrVT2/oNhutSRvOBYALenQT0aCzR5E6on
         tm/AdSH9XkTsyRhbh3HKe4y7TiqS6jkjfOK3JtCZfqjwE6JXaga8Z2JpbIPuHKK8PUoQ
         T7cQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=EskBy7qDNmYr1AJ50sFqnkNwz423SU5TfyULBfSdHh8=;
        b=nNohB4QucugTCQ0Y88+RX7kOq76RU6gkDI/sflvSK39+50jHWeBcZmpJLwLHkae8uY
         yHK8GNPlxzobpCwfGTBLjIl2gq3c0XeXOr5hcez2cwydpAnwPE8QSHWDNXJC7YevtXn5
         WrEn9U+ZkFgPxvdiRts6BmFQBNWr27nyKvO0kO7NJFcbLSqQLf5irqKJRkjgSNswSc4O
         42BSi+8yguljc5hcASUTKVy18Vff6QUVU459gHycWZ2o0nb802z+1Q2bfvFzE1ibGISA
         WKiyN9TWbro+5iJmejQ/NoxV5D79/fgG/mUP8SjPabC5cA0YKE1OMqHuCm2ylG2Zrt7V
         ZFcg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+605a82f6@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EskBy7qDNmYr1AJ50sFqnkNwz423SU5TfyULBfSdHh8=;
        b=k1hfIOAit9zZDtVvCgTvo9r1yi6v1d6zTQLsvw+hzDYJIN9JOXbS3mXLcLDKCRrvdb
         TN9/udgPw2gQtSUijsBZ7IRJs+XdiyhOK1JEycAZpYR6EufnGJNUFirtu61rhei2ptqA
         qHr7kXteRgM9YH4nGqGi/xxRqZkQGvf3fAK/g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=EskBy7qDNmYr1AJ50sFqnkNwz423SU5TfyULBfSdHh8=;
        b=c+GP9WdPzmI/syCodR0kOJW/YwwbtyaX1fxcbFDnUn8ri13I9c5fKt+SpAFmbk2YP8
         nRQFwx0POmOlR36ZYqsn6ihSjrugi+uMbut73R2VhD3rc+Tjs+2LlDk5q0NpTWASGlWM
         ySO6shTBeMk2DVECb6IEZkiPserxNg4aOByHXogJ5biWAEfFrl7KxPJQD/UuM/m55+WC
         LFEc1TkLdFG62vZX+OfMonhQSwPJFu7XUMdM3qNFuVDImP4hCnW+vvlDWDuxW7YOWIEy
         g4CB4XRbPnVcx5omxaIoUY0le/MCjo6SJMEGB2GLO6hIDor55BkWJg8ysQq8M+FqokrZ
         iSeg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532+WeFWIn+L6IzDT6r4J6X3qG4nqoW6yd6c3pBceQrCRPJJGp+e
	WYYcfOuKDVHWj8qLVmIEoUuYpQ==
X-Google-Smtp-Source: ABdhPJxtyf2agFSX31b6mZwYxHvz98pXPzAy+YB2W2eEE/GeNOJzdmvSoloE7yUDs94YzJ4lzoKIfw==
X-Received: by 2002:a05:620a:205e:: with SMTP id d30mr4561857qka.380.1616079557125;
        Thu, 18 Mar 2021 07:59:17 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a37:a050:: with SMTP id j77ls1174786qke.10.gmail; Thu, 18
 Mar 2021 07:59:16 -0700 (PDT)
X-Received: by 2002:a05:620a:b01:: with SMTP id t1mr4556490qkg.422.1616079556543;
        Thu, 18 Mar 2021 07:59:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616079556; cv=none;
        d=google.com; s=arc-20160816;
        b=fsr4/tOAd4hYJ9KMMKV2g8fMrVJZCi4xjysMaI319nxN2pLYzd8VE8EMyHLXMwfFuw
         sK3+PQChcRvgB6Dz5/fx+BBp3nM3WzqRY8spQHwZQ34DvOY2ntzrZK3Nh98WJhU9hdrk
         Wym8ZJyN0krfzrfW7cK8iRD+RRfdZn2G9RpiayxUG/YVNxvJXWTmUfiZCwhEokbsrE8B
         Be4UQKa8ArWRYFb44MXLX3kM/2QsTn4PM/e949wJrdPdPKocQawVviYS/8cK8zAAOJlH
         b+13YCQd0GnqCkwryvAL/+1NVucYaA4Rw5EwQ9c5TPV+FM5r/eKa+HPEXO56Bfioui9n
         oxVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=DvTt3LrrH21uh7nfjb/dwjAeI/+mnBJkfEZ8+Y7a7s4=;
        b=JDB9zoHMLeULy48cg+764NBVQonB1LonuxQWrse68JmwtN0Y9Kslz6elXrenvm9jLU
         2+lOv+xi74xQ/0izJSvkQ8ef0pu/m7PPPLD+mihKLtcVlkeHWAt1FdCURYrgdyFKNI89
         DGrfsNHD1gxezLy/c+9Uj9Iupqh6QuOlU0iZ9f7W9RS0WiKNHXKeH3wa76afG7+HMYKk
         pC5B+7AC6EEfEvSKthxIRSb9zdaTibG1EJFXZhOAsLDp+CEdZ2GPV5GrMO5ONH0V46dU
         2iNXbdmXu0hSbWunLdINkODXfbsVAUJC6EEQC8ND6TDB047xv1fUTn5pJPqlebq+lUx3
         v+jw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+605a82f6@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id u4si1603420qvg.145.2021.03.18.07.59.16
        for <usb-storage@lists.one-eyed-alien.net>;
        Thu, 18 Mar 2021 07:59:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 528681 invoked by uid 1000); 18 Mar 2021 10:59:15 -0400
Date: Thu, 18 Mar 2021 10:59:15 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Ulrich Windl <Ulrich.Windl@rz.uni-regensburg.de>
Cc: Lennart Poettering <lennart@poettering.net>, zzam@gentoo.org,
  "systemd-devel@lists.freedesktop.org" <systemd-devel@lists.freedesktop.org>,
  usb-storage@lists.one-eyed-alien.net, hirofumi@mail.parknet.co.jp,
  linux-usb@vger.kernel.org
Subject: Re: Antw: [EXT] Re: [systemd-devel] [usb-storage] Re: Amazon Kindle
 disconnect after Synchronize Cache
Message-ID: <20210318145915.GA527768@rowland.harvard.edu>
References: <20210317151746.GB488655@rowland.harvard.edu>
 <YFIyidaZZmDoTevB@gardel-login>
 <F279F9BC020000F5AE14D9EC@gwsmtp.uni-regensburg.de>
 <C63C44570200006665972EEF@gwsmtp.uni-regensburg.de>
 <B960C12A020000A667ECE9F9@gwsmtp.uni-regensburg.de>
 <B72C58530200001565972EEF@gwsmtp.uni-regensburg.de>
 <0F2319EB020000F567ECE9F9@gwsmtp.uni-regensburg.de>
 <DE3F57520200009E65972EEF@gwsmtp.uni-regensburg.de>
 <52CC0074020000A3D68BC3D5@gwsmtp.uni-regensburg.de>
 <6052FB2B020000A10003FE1E@gwsmtp.uni-regensburg.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <6052FB2B020000A10003FE1E@gwsmtp.uni-regensburg.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+605a82f6@netrider.rowland.org
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

On Thu, Mar 18, 2021 at 08:03:07AM +0100, Ulrich Windl wrote:
> >>> Lennart Poettering <lennart@poettering.net> schrieb am 17.03.2021 um 17:47
> in
> Nachricht <YFIyidaZZmDoTevB@gardel-login>:
> > I'd say quirks that are necessary to avoid data corruption should
> > better be done in the kernel and udev's hwdb stuff is only for stuff
> > that "fills in gaps", i.e. adds additional tweaks that make things
> > prettier, cleaner, nicer, more efficient but not things that make the
> > basic things work, and data integrity sounds pretty basic to me.
> 
> But seeing the list of bad, broken or ill-designed hardware grow year by year,
> I wonder whether we really want all that bloat in the kernel.
> 
> > 
> > Or to give a counter example: the device advertises it can do media
> > change, but actually cannot, right, it's not a floppy drive or cdrom
> > driver after all? maybe hwdb would thus actually be the place for the
> > opposite of the suggested fix: turn off the media change polling to
> > reduce needless wakeups.
> 
> I actually think it would be best if those work-arounds could be loadable as
> module, and the vendors of broken hardware can provide the modules that
> document their broken design as well.

If you can come up with a way to do this (preferably in the form of a 
patch), that would be great.  I can't think of any way to remove this 
information from the kernel.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20210318145915.GA527768%40rowland.harvard.edu.
