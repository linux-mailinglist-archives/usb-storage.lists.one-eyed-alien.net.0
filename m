Return-Path: <usb-storage+bncBCUJ7YGL3QFBBH7ZUO2AMGQEWOCAMAI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x47.google.com (mail-oa1-x47.google.com [IPv6:2001:4860:4864:20::47])
	by mail.lfdr.de (Postfix) with ESMTPS id 497449291C7
	for <lists+usb-storage@lfdr.de>; Sat,  6 Jul 2024 10:13:21 +0200 (CEST)
Received: by mail-oa1-x47.google.com with SMTP id 586e51a60fabf-25e32c02f9asf2119383fac.3
        for <lists+usb-storage@lfdr.de>; Sat, 06 Jul 2024 01:13:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1720253600; cv=pass;
        d=google.com; s=arc-20160816;
        b=JwIupT0HgK1RBNSgrlmFdDVQoUrnUj/Iv7rgwqEOyw/hQN7Zbfn4+1IJUKSL9zOzpK
         BZ+Ti6qNqSbc6XDpxG4ncWss7zMh3BRkcUICbe1UbnnZ7VM9nfGHtsf76nSLjnzf61tK
         WD6M9y4Qj8c3xPmlSqWkxum2osQ0VbTuJOc4jycjS9RBdQxo/A6GhKWAqKSMZmK7V8c+
         qYUN7CJWAqw8D8xs6U/PrS9tJalNQYsRZJhV+FwVNZlSaqKzBq3rgDHrP2hboeRUTNk7
         6PSuw6KSAFdSeogS/eteudgZ2d68V10rgyubuY8w2L32RDcbuABOR1zK5coqKT4OwR3g
         PiZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=NDCaqHYtJttX0GimLuesK/GgDvwcVSJqHjUgONygDaY=;
        fh=PUp3kJUIajONhy9RQDRo3/aek/UrvKka1+P3aJbIFcE=;
        b=qmUvSmZbX89hNMxoXZ8pZtOtzUMYV0e4gaxhtiWuC3wQu0xrlOBkqgYGUl/KCh4Be9
         XExl+LomSr9o++qPd+yZH5Cpn5tR6lsZoKSryouQ/Y/CYSKpuaDXtrOorUpg6nsNaDmE
         d9eQrUeGbd2sUBToF0JDErCsGj0bMSnrb91gE1dSdtnwGtZwqulGfTkpEGHIGXYelULn
         OGA5K1ozR6sCek28j3aOVXvKhPBXx7K2BGixodPWvgU3Kv3OaCrLL98YA9nxu2D3q3WO
         DEO+c5cov3eZtoUxYh7mCFNLCO644WLN5pS5Q6EIG9Ml5VgVkKQsoPwu5ud2AiobhPNd
         /OrQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=l0QMAx4w;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1720253600; x=1720858400; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NDCaqHYtJttX0GimLuesK/GgDvwcVSJqHjUgONygDaY=;
        b=Bfy77BE/lkMi/JrJU3J28RACSGvlRnBpydjuSI0MS3mDodUOSOcC+6P0vYtweEaaVE
         HgNTGPsk+UJLUAVTti0SRBGc5/qc1CfSONOp8e3U0EbzXZFAPXL7Vr93hC94toTbkiCe
         G71omu3RftrUJeAukF4QOoDzH+95QItP+eLrU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720253600; x=1720858400;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NDCaqHYtJttX0GimLuesK/GgDvwcVSJqHjUgONygDaY=;
        b=H9aGGWOIS1r1+bsTKluz2BT6lmktfdkRc469q7XnUio6j9l7n0u6cbXdvTW1+i9wlN
         WZ4nG9ARH2Bbhcu2ok83W52Blr5xFOlj/WaVSQdF9DvD74Dk8E4UA68fGS/eJlKy7zGs
         xpJl5AZ08tRcxFNvHwk8L4JqipTy6CM422kb9x9rfxzBkE0rxKnUxxhhT8WVMtJipYVM
         N+/C1sAeX53k95NgJ53Ln/z9/YwIdEy9ww8RP83jWQ2AzgC5IrP6uiL9Wg5eSKDbqRvI
         vzM1BDhxdw49om8Gtlwu0N1CdXCrQIHFgBrybA20PTefoR0VBVc4KqsbYCi7wmzGU45A
         5r+A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUa/P2Rv4wHQDtlDRoOgSebvvaTstw5Vp5386HarSnSkJqpTRJ8KozCWKUWWLPsI+jn03FQac4pY5P2ZW9L8UF4CC0PPPZOSzQP
X-Gm-Message-State: AOJu0YxV5hyXXWcy4tNT01P+7K8xDwBbJ/hhndbO1rNe2OA6vpt1FoVx
	M0P/uAXKPqd1iFEPSNR2zR/fr81FBgtDTorjbEQNSuYEOo1G1FYWGYR79TKBPgCsn6o8lLw=
X-Google-Smtp-Source: AGHT+IEYGNHinF4+DqQ2EgMBwC4NILY4IyKGxiIOxfTWdyWud/tC9Pip8kBf7coRpUkd2aA50xW5gQ==
X-Received: by 2002:a05:6871:146:b0:25e:1633:cb1d with SMTP id 586e51a60fabf-25e2bf2b952mr5630573fac.58.1720253599599;
        Sat, 06 Jul 2024 01:13:19 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:c10e:b0:24f:d281:c6c2 with SMTP id
 586e51a60fabf-25e285af3fdls2506230fac.2.-pod-prod-09-us; Sat, 06 Jul 2024
 01:13:18 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUOKBdyFWOZJ0fAx2vGIw95cme0ntLdOQwc0jgAZnm6IznrWZS2owdosq8n2JB+JWKYPnqzAd8wNxrtYuqcI7lkEfX6ES76lKAHFD+VwKHEzawOlPo=
X-Received: by 2002:a05:6808:221e:b0:3d9:2626:c64a with SMTP id 5614622812f47-3d92626d345mr741409b6e.18.1720253598703;
        Sat, 06 Jul 2024 01:13:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1720253598; cv=none;
        d=google.com; s=arc-20160816;
        b=mqVVgMsp/ZqdKh6L6x7EGfdMi/70oTliNhxsWWybZk/URbJQZD1RZJQZEzvfyFDJL+
         Wv4NAf+qt4meuboDBMZq7SDMhZKMr2a8ech3ojHyanie3jHKeVf7iHIG+q0/4bdr9arw
         BEaPIiZ+mc8c0wvIkZfBAdFIkP56QNA4l16vpHD7P5jZiyQ2Q1zcW0lXTcnYtlyDFFjB
         ZjPyoTtI4U1DZlvKGhcitsULHxWAu/XqHsXGK6XXoVo41vvn6EXbXrwZK4s9IcfZTSYo
         Z47E0q67DQs9O3CP2lShiyIic1bzXShhJpVEiVnDdlTVWEw/hKuoxFz4xQQvUPjqWEq1
         TWrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=JFFKRrbQM/IsC7UxyXaiarTvyVDtehoaSrjf8XM0XZc=;
        fh=myMZiqXNefIhcLtkH2+nQWpJnlBhSMDOXBbyg5ZXVn4=;
        b=LdnotGg+LpmWopJB+048IXdQAAJbY7c+bxqntxmHjYOZZxpK+RC9etFf3bGfT7Owtk
         M1VeYe8TewhNP1o/CX+I6rGMuvl6pRFEb3/IJJXCqhnX+4j8FUXLpou9LZmjbWdlSMV+
         dSs9p1TqgsWMhVfBElYD0fBVvxP/WFuWas1V86ueXmWYUVVF4VDtsG9JiqwD/29OSmBn
         hlYeYTwSv5W+Z6wXYs2nyYq+8li1/nI0TPOXCNP3A+pHEmwpGTCMpOrjgZ+5rpXNBsmV
         WA/qRj4qp+hWDCPQXE1M5q+PSbyWKoIDGx9xh1wjvJ0F7RaWUg/9eM4armf4HvnHz7aR
         gBIg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=l0QMAx4w;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id 5614622812f47-3d91fc00d53si1040189b6e.207.2024.07.06.01.13.18
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Jul 2024 01:13:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4287D61A88;
	Sat,  6 Jul 2024 08:13:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7BEBBC2BD10;
	Sat,  6 Jul 2024 08:13:16 +0000 (UTC)
Date: Sat, 6 Jul 2024 10:13:13 +0200
From: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
To: Aditya Garg <gargaditya08@live.com>
Cc: "oneukum@suse.com" <oneukum@suse.com>,
	"stern@rowland.harvard.edu" <stern@rowland.harvard.edu>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	"linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
	"usb-storage@lists.one-eyed-alien.net" <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: [PATCH] USB: core: add 'shutdown' callback to usb_driver
Message-ID: <2024070649-nuzzle-movable-f383@gregkh>
References: <7332D45F-9BD3-4D0E-A5AF-9845353415A9@live.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <7332D45F-9BD3-4D0E-A5AF-9845353415A9@live.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=l0QMAx4w;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Fri, Jul 05, 2024 at 11:21:06AM +0000, Aditya Garg wrote:
> From: Kerem Karabay <kekrby@gmail.com>
> 
> This simplifies running code on shutdown for USB drivers.
> 

Sorry, but this does not explain why this is needed at all :(

Where did this change come from?  What problem does it solve?  Why
should we take it?

I think I know the answers to these questions, but you need to document
it here as to why it is needed (please read the kernel documentation for
how to write a good changelog text and subject line.)

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2024070649-nuzzle-movable-f383%40gregkh.
