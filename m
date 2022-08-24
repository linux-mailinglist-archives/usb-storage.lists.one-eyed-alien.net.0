Return-Path: <usb-storage+bncBCUJ7YGL3QFBB4EYS6MAMGQEIRMQNWQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1045.google.com (mail-pj1-x1045.google.com [IPv6:2607:f8b0:4864:20::1045])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF1E59F3D8
	for <lists+usb-storage@lfdr.de>; Wed, 24 Aug 2022 09:00:02 +0200 (CEST)
Received: by mail-pj1-x1045.google.com with SMTP id c3-20020a17090a8d0300b001fb287cc2e3sf467942pjo.6
        for <lists+usb-storage@lfdr.de>; Wed, 24 Aug 2022 00:00:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661324401; cv=pass;
        d=google.com; s=arc-20160816;
        b=AgjrZl9sNvbpdIgkBO2TScAiFmWKfHWGl5rWeyceqGlzgALYX3W/nqQW/kLvDz9ZWD
         NZo+Hp+6tXgoo5Ky9ZUuWTG1Lpu3RrjNzfaFtGdRQB7SVnGmqJ2OLXVFTpYt7T07BkAs
         +JgUa6XokOE1cOWQpYmIwYZ2Ta7+2eOYWe6k27fUMlC9E2I5A63GmHUPZyzvr1q3zqR6
         EVYuJ1Jc/p4z1xrbXA/zQK0D84rLAoSXxn+dSUG7va4tOH36hKUrjW+n322qejkKscsx
         raXzUzRs3xn+tmM57zOKXGGFqd/MEn6wNKWBavf+MBu7shSYRDFQph9GZGnilh8UoYzf
         gi/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=zGzKmmllKm/hFeKIsyt97LP6m72Z8EJyUy1wDkkt9vE=;
        b=jt/mxUlEMHIycwkmk1/Hym3W8FsF3+3G4wF0tHTFMzDYNA2zl2Kif7ND3g6dKPe0S5
         FjX2hUIvVYp9N4rpWEePIlipTMI7ihmnyeVgbQMtP5fNJRIBPtxDnB33itJi3P9oJd3S
         EdhGPRybxch81NXMikV6a++uYCY8lsPFYnYSri7Y6RfRDbli1OOfQVeYJLi25bLWb/Mj
         0e0QPMHdGphRAyhMmfy3zOJHOWfEH2e572YP9yrQu9rjW0JaZOPrZKkTmJI+DQz+WtrR
         t47vbI0UCqaRTXENHurvoaJVJyIiyHKpfsJBeBjC/kqar9MdqXwIW4KnXqyTXEKP9tYZ
         sKZQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=x+kdHtYB;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc;
        bh=zGzKmmllKm/hFeKIsyt97LP6m72Z8EJyUy1wDkkt9vE=;
        b=ieObqiXrwBmB2q5H/tdPAeMy5qlCy6vgOywezPfJREGfp5CMn5gZ8kKt9vibXOOBRe
         nLBJfI9IobYX6xl2W6W/z0UT5CYQwCr7HMN0b1yPVgF8NAmg6DnT661rOklWTeMZ08k2
         BaehFgbYFvYgrHtlCIV+tdbEDJOHLL76CBH50=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc;
        bh=zGzKmmllKm/hFeKIsyt97LP6m72Z8EJyUy1wDkkt9vE=;
        b=NZ6F4a/YnFEh67czCj25fm1R1mOtGOCuXhABe8F8hlWx2Pr52Z4kHKx4bGXbaOLOza
         H3MOc5I847RGnjL39HyrmUjCXdZsM/OkgSDZc//5UrR7qgP8zr4A3q+PuIJHY4lg9CwO
         tkVf0FwsJrj9GSnRkcmA0KBfaROYDRoHjS3bpGeUDH1fHzvZzNr2fZGJK5tUmZqWHG5J
         ZYhBIpUNcq9Sr0RKvjPF3KkTmVFk/HT4nEYYIlsGKb7mLTAfRPiziMdqWMpddlCDP1gJ
         f0ehn6FdpVNsMAPzAmXDW05SmG4XvX7oOUj+KVIHUtB3DwHIHrBisTVcEoiOCZuJ0Jpy
         Zf4Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo3ijQ0CZ9jkEheAPpRotxmRifhFF+i45eK/62WixgEAb5Gr/rM7
	vPK+M5NWy5fXiMj9GtFb4zpgJQ==
X-Google-Smtp-Source: AA6agR6OT77qxycpSlneXkhtARb65w13ncCoB69Rn70Vwv9BApR84HohHZcWNA7l97swgSYmXZXksg==
X-Received: by 2002:a63:8848:0:b0:42a:1a29:c261 with SMTP id l69-20020a638848000000b0042a1a29c261mr22305758pgd.51.1661324400697;
        Wed, 24 Aug 2022 00:00:00 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aa7:9d8e:0:b0:536:9915:e9f8 with SMTP id f14-20020aa79d8e000000b005369915e9f8ls4062890pfq.4.-pod-prod-gmail;
 Tue, 23 Aug 2022 23:59:59 -0700 (PDT)
X-Received: by 2002:a63:5f02:0:b0:42a:4631:aa60 with SMTP id t2-20020a635f02000000b0042a4631aa60mr18958343pgb.134.1661324399597;
        Tue, 23 Aug 2022 23:59:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1661324399; cv=none;
        d=google.com; s=arc-20160816;
        b=cfxKIJ4/DXBGhfygicTcu0CRYW8TxKBD3u6WlXt0d+MmI9F2Srrr+BCX05YJIWHJzt
         McQLGPTxIy0nCN38sfDJA1EhPPUUqEPLqz9CFbGjWF0TPIiR30j+eoZh9Ew4Kr0iRH9X
         yt7z6prEUgicHXRRnwTpG25XWo+KWiLTQRyTGNBtEWNgCxyp5c4ZDMFV9jzH/S3fOxNp
         BXytJr7bOdXa2aCZ05hIj7aNzewBTb7b6f3/cwcEW2LDUTLvIWvwMK7WgT5bs/w+y95E
         lvp4lKWbNpDAiwklvbtlJv9H0poxQIWOM+68XSSNUwVUlbHB5kH7kP5hSINKE7WsuzrX
         9Dfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=wdFs4HzTuuzRKRwnDpegfu27BsRBHWPwi/8JMhDOCns=;
        b=amoqaZaaMEZhRI8YZlnjtByWcyp9ihqLPr+nsmCEEoS6exuqLfgYo3ncVbaDT2BnUj
         ldZQ8kDBq+ia3rkCWcJU3HbI40YVSJQwEH/Qg47iImVIwlVEuK9KwgTSARDYk1MxKC9W
         5kATQq5GVJz6KD3F7m+QtjU+nRYA8MMetRPPgXKGD5yMImfehlyoZWLbvSWStkTfvbHr
         DyX/ye3FgLFbcPBbExPo4R3ZRt6N5Ro7dTf31v+DilsDpipChL0HQENvJOLEes6iQwU0
         RoZ/1wiQm2jZq/Zb56YVAHcqRd9pl/GNs78sh9z2wyBQgWbJFKKmduuEb+Svn5DL7SOW
         OrxQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=x+kdHtYB;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [2604:1380:40e1:4800::1])
        by mx.google.com with ESMTPS id rw17-20020a17090b2c5100b001fad8acb3b0si571764pjb.24.2022.08.23.23.59.59
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Aug 2022 23:59:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:40e1:4800::1 as permitted sender) client-ip=2604:1380:40e1:4800::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 244EBCE2208;
	Wed, 24 Aug 2022 06:59:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F278C433C1;
	Wed, 24 Aug 2022 06:59:56 +0000 (UTC)
Date: Wed, 24 Aug 2022 08:59:53 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Hu Xiaoying <huxiaoying2008@gmail.com>
Cc: usb-storage@lists.one-eyed-alien.net, linux-usb@vger.kernel.org,
	stern@rowland.harvard.edu, linux-kernel@vger.kernel.org,
	devel@driverdev.osuosl.org, linux-media@vger.kernel.org
Subject: [usb-storage] Re: Confirmation for subscribe linux-usb
Message-ID: <YwXMaUexmgIrnI4W@kroah.com>
References: <S240916AbiHWHMh/20220823071237Z+20120@vger.kernel.org>
 <CABd4Uja9SoHpiMr2gDFcEP2Cudp7dcWJ_2i+KTEse9CU=KMtzw@mail.gmail.com>
 <CABd4UjYB=nzha=eoogNJU4pFwW9+4PQ65bC5u=R-gCE_ZLSQXw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABd4UjYB=nzha=eoogNJU4pFwW9+4PQ65bC5u=R-gCE_ZLSQXw@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=x+kdHtYB;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
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

On Wed, Aug 24, 2022 at 02:36:55PM +0800, Hu Xiaoying wrote:
> submit patch
> 

Hi,

This is the friendly patch-bot of Greg Kroah-Hartman.  You have sent him
a patch that has triggered this response.  He used to manually respond
to these common problems, but in order to save his sanity (he kept
writing the same thing over and over, yet to different people), I was
created.  Hopefully you will not take offence and will fix the problem
in your patch and resubmit it so that it can be accepted into the Linux
kernel tree.

You are receiving this message because of the following common error(s)
as indicated below:

- Your patch was attached, please place it inline so that it can be
  applied directly from the email message itself.

- You did not write a descriptive Subject: for the patch, allowing Greg,
  and everyone else, to know what this patch is all about.  Please read
  the section entitled "The canonical patch format" in the kernel file,
  Documentation/SubmittingPatches for what a proper Subject: line should
  look like.

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/YwXMaUexmgIrnI4W%40kroah.com.
