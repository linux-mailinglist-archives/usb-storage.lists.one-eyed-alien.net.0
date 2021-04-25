Return-Path: <usb-storage+bncBD6LRVPZ6YGRBDEBS2CAMGQENECUQNQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x847.google.com (mail-qt1-x847.google.com [IPv6:2607:f8b0:4864:20::847])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B64A36A7D3
	for <lists+usb-storage@lfdr.de>; Sun, 25 Apr 2021 16:45:33 +0200 (CEST)
Received: by mail-qt1-x847.google.com with SMTP id p8-20020a05622a0488b02901bab8dfa0c5sf486440qtx.1
        for <lists+usb-storage@lfdr.de>; Sun, 25 Apr 2021 07:45:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619361932; cv=pass;
        d=google.com; s=arc-20160816;
        b=xUbGojvpGVPfb9sY/yQ+vYairFC6FClgapA4t46z1Dapd0bLBuC6kZ4xCaRjb40Icr
         lzNIUEXvBI9xCNAL/qOBJMUE9KTj4Tu8O7jeAC0rX4Su3B8kVdQxSDU8fi3aoImtXkMi
         c/LY7HcGQtDuv121Wxyqpj93PqCp9z4ObZ52pkHHqVmabsjihNZrCGTkd/etoTctkFml
         Bh2upHSskeA1gPHqQCBXbc/OONzdrbUFeXAEiMrwPYV8ykgI2uaiplvHmPszlOq0IMmA
         lFpxEe19v4u5ArQ8pUn+SgHHVfM0tEdqeamb4X9l/WtxfwxTax+IxZ930G6DLB3+YCIV
         1i9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=60OYHmvMGI3Kr/vNTicJdlFxaGEuZMgmThr5ep3T2h8=;
        b=qpy1ODS3SC69aVFZHKw2wgpMDGlIgVnAp/3wb+hHcs6/hhF3iktwYdip3ELGTtBRpy
         2cPbWco1ODx5UJ4OHES0uU6E97FJ55p8JEWaRtG6H+CpqULF0W+DK/SYfaie81K3VKi/
         j7pf38LeWLvHfi8+iHNpvLeKuP02ggF+hGBWN2aiOaQE4i31xQNMWtJhDxx8Vm1WyROr
         oCdUdOCrrJYHRggAUo60tJ41fA1A6kXVLs2mc5h4WZbCqG3BETK2HhdAvNGmrth0kWIw
         KtjlrtkNDmzXhdteMxKoICywXF3EsN6u8iGpjdfsA48t+POIqrOuDut0vjREooNdE/pR
         aMsQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+60903034@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+60903034@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=60OYHmvMGI3Kr/vNTicJdlFxaGEuZMgmThr5ep3T2h8=;
        b=Z7j1CkHggNVlxRiFKNH5pThFZyPXMZFL0j0gllFxhIf6+s+UAhbh5fMXfzxi3c/eQT
         zTx5KRz8FMaWqm93wJjpZunR8b76sdDfvmj1cMjuUj4YOc8zoCZQbM3KTzz1vI5Si4Oa
         hXBfbrrAN315FpXCZn3n7yEKfqi2AKOKCb7t8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=60OYHmvMGI3Kr/vNTicJdlFxaGEuZMgmThr5ep3T2h8=;
        b=VUdOsABrArIlvA7nQCuSAwL3DcCQflwFUAbWFMoPLd5GcKSeKrgFolhabuCw0FE0qU
         Eaw+nzxjQxaVj5L0T8jDJX0GJZ95qp1/1GumIAB9sG21+FSFghibCkZJieEr0S1lEEXp
         QlXTuWivt8ZiT3wb17r3XC+YHP8U7kHUswbSSbcS2GRVQE1qp5WGy7B/dNcd7HU+744z
         tLtERHf09v9a0NPWcDkpDW14efp+nhFNDLWyUF+UMBLey8ocrdH4PuprlbCLsDQyBe9i
         vW7rsgusBD7EOL20OU8453a9e30htkPO9pKFPm4aljskhLh79v+AJe9z+JJOL4k8jvt+
         +izw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM5319lnmZ6OQaGMT3mqswSCd1XFG2OovV31YZ3mAQsy71EX8qCE+j
	EUQaSTtGGy5KLC4xzpfjd0Klpg==
X-Google-Smtp-Source: ABdhPJxGqNpkH1RhSiLvdRSNznNP8mReychUgbAE9MWc1e9eTsxyVm+oIGP/lDDNAK6NuiEDJGLNMA==
X-Received: by 2002:a37:b807:: with SMTP id i7mr13079623qkf.126.1619361932645;
        Sun, 25 Apr 2021 07:45:32 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:1054:: with SMTP id f20ls6095299qte.9.gmail; Sun,
 25 Apr 2021 07:45:32 -0700 (PDT)
X-Received: by 2002:ac8:7612:: with SMTP id t18mr12759506qtq.102.1619361932064;
        Sun, 25 Apr 2021 07:45:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619361932; cv=none;
        d=google.com; s=arc-20160816;
        b=YsOEXcJlWKN+T7qsEbH0jPuw84BZid8SrZPoNsSfQoBGwn0GkTtCLyGkningweM71+
         F63mFL6UfBFSVtu/CCBen9+x66Gb5fGzV9HdxRzpMqsRqRsLSUly0GuSOO0HvDP47hDU
         t423wE0QiVae+hR1tej7lVU9xGUV8iR5ACjrd2VfFUKfBf82IIxAvzl1603lOYkq5fXa
         DKbqGejlf3syJiNi3S1Q+3aQHVr7HlxkloY65i+DvB8QrCF1ZdLSaK0iB3E2nzOE4v7f
         SljVc6JtPhj/std/uSIP7w3LzIhE2KFBzFFrawyqfxlSNrb4r/hFeFI0NOwdkYDEiPzY
         aiFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=V4LW3w4K0j/LgMqtz+/6Mgb0sX5BFrDh6shnqyi9vKo=;
        b=synBNn7EHwz2B1gVc7KjXbGKeqZa4CHY7lAMnd7loC1s3x+F23EXweBMWqtjajA6tI
         fl3xmDoc/Adw1w8oQ7mJx92KTz/1hrY3YuYRY7medES34rO8EbPa8R3k5bqtewzc10dq
         RTnMyAgjfZ2nTe0vssN5UTVxG7jzYO1gwz5XxKKBhIYBdhStveWN2qtaQQ8T4GL6duax
         dCwvYPGyH+5+VkTXdKY6ii7FnsmWFXGmgGvX3xlO+K/z2o2435iqUX64mMP30yzlr4pr
         cx0ID9wNYrbnDZmXXSq5xhhXZ2xWutXmeF0/V+Z/+xdqX1BbAoXLQJN/2r2tQNCwq8J3
         9UyQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+60903034@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+60903034@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id im11si9154998qvb.187.2021.04.25.07.45.31
        for <usb-storage@lists.one-eyed-alien.net>;
        Sun, 25 Apr 2021 07:45:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+60903034@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 337007 invoked by uid 1000); 25 Apr 2021 10:45:31 -0400
Date: Sun, 25 Apr 2021 10:45:31 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Rene Rebe <rene@exactcode.com>
Cc: gregkh@linuxfoundation.org, hdegoede@redhat.com,
  linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH] unbreak all modern Seagate ATA pass-through
 for SMART
Message-ID: <20210425144531.GA336783@rowland.harvard.edu>
References: <ee48ea5d-c820-ae24-b557-2a7b7372821c@redhat.com>
 <20210425.135048.1651130854722875318.rene@exactcode.com>
 <YIVZ2l9qUfkcyPpG@kroah.com>
 <20210425.141536.1295354861910527121.rene@exactcode.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210425.141536.1295354861910527121.rene@exactcode.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+60903034@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+60903034@netrider.rowland.org
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

On Sun, Apr 25, 2021 at 02:15:36PM +0200, Rene Rebe wrote:
> From: Greg KH <gregkh@linuxfoundation.org>
> Subject: Re: [PATCH] unbreak all modern Seagate ATA pass-through for SMART
> Date: Sun, 25 Apr 2021 14:00:26 +0200
> 
> > > I would expect that more modern devices to work. Vendors usually
> > > linearly allocate their product ids for new devices, and we could
> > > allow list product ids higher than this Seven to unbreak more modern
> > > devices by default and limit the amount of device quirks needed?
> > 
> > Vendors do not allocate device ids that way at all, as there is no
> > requirement to do so.  I know of many vendors that seemingly use random
> > values from their product id space, so there is no guarantee that this
> > will work, sorry.
> 
> I did not say it is a requirement, just that they usually do speaking
> of just this Seagate case. What is wrong with using that to
> potentially significantly cut down the quirk list?

You didn't read commit 92335ad9e895, did you?  It lists a large number 
of Seagate devices that don't work with ATA pass-through, and three of 
them have product IDs that are larger than 0xab03.

Please check the facts before guessing about things that will cause 
problems for other people.

> > What is wrong with just allowing specific devices that you have tested
> > will work, to the list instead?  That's the safest way to handle this.
> 
> The problem is that out of the box it does not work for users, and
> normal users do not dive into the kernel code to find out and simply
> think their devices sucks. Even I for years thought the drive sucks,
> before I took a closer look. If you long term want more new devices in
> an allow list than the previous quirk list included (9 or 10 does not
> sound that many to me), ... whatever you prefer ,-) I would rather
> have 10 quirk disable list than potential many more white listed the
> next years to come. Maybe we shoudl simply restore the prevoius
> quirks.

That's a possibility, and in the future we may do it.  But probably not 
until the enable list grows to a comparable length.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20210425144531.GA336783%40rowland.harvard.edu.
