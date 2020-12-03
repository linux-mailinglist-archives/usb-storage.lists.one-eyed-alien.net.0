Return-Path: <usb-storage+bncBDK73744WQBRBPMEUT7AKGQEUZYQPMA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf45.google.com (mail-qv1-xf45.google.com [IPv6:2607:f8b0:4864:20::f45])
	by mail.lfdr.de (Postfix) with ESMTPS id D31032CDA03
	for <lists+usb-storage@lfdr.de>; Thu,  3 Dec 2020 16:20:30 +0100 (CET)
Received: by mail-qv1-xf45.google.com with SMTP id f2sf1876900qvb.7
        for <lists+usb-storage@lfdr.de>; Thu, 03 Dec 2020 07:20:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607008829; cv=pass;
        d=google.com; s=arc-20160816;
        b=oxAIVlNt08wiYLFwDaAt4YgtLiiRRHn1nW4L5HouQlVbOSWPcdWicDYGDuYoOOCaNA
         eD8Tm3uIQkKzzZklaOVQmMd0kbIybXlCE3iACmzjfEtLxB6sjVmkTCJKVXT6mMDj21MV
         IuWSK6t6JNJVlqVXxqXabp6gLtt7xMdbb5KTVdP48DbH5unrUrOn7+G0MikGBKl24bHV
         /OJ06QEplrsYzDLDBsfUiOojqJ7znkm2kCaoDRcHMeXzmVbRNtJ6jHcE/hEPHvciuIj2
         8d4Bc4dd86ugvydGUZnjE/IZp5Zukmd1ActldJN4pmi9rBCj7VvX6wlytqhASDge66yb
         +WPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=S4/W358f4maS9ZyUpzwbLnbcyPFMAIpawJwpSjRDlaY=;
        b=gTzpWj2PC33JKRWa0TY9QzCiE734GgQKBjlcMuocLBD7XNxcOY8tiv4YlQgUjnefby
         2e43XyduOEtzQPFwK4Z1nfeSO4Fs61Ik4OsTEpMOWslD46TfO0skrugvqjXMyY1fZosM
         UM/fR/MXXossWmduxpN/p6MlLCAgP3sPEvT9PZ7BuMUc7896+qsoTTiKJporxlztbeDf
         UfZgTwKijUbOtRofdMverWn/gHSWPzoHAYYk3vnOkMjuqznQiy+j6DkqOhdRjfBlRVNv
         nmKFeknlS9sQQRNzPYg7+HlWA52t+44WKFDAx/RgqRLJC+GN4l33KTAqv/hTckdVW/ce
         aIRg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm2 header.b=K80qDKiF;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b="rE/V9r3h";
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.28 as permitted sender) smtp.mailfrom=greg@kroah.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=S4/W358f4maS9ZyUpzwbLnbcyPFMAIpawJwpSjRDlaY=;
        b=V7nFvLjgn45d0xkEvgRKknvzFwxTCzlPt08n4AQuC9y/9Th48QtEDs7WFQNJa9PxQ4
         rk0ZI4zKzCgW8KEuHzMoV3FHIXIYdFXlcnaydn8YaMBFlRmqCm92eV+DBXinSJWPq0Ko
         nmj8RO2EpZUcj3svURnhn508VQlb5ida8oEXw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=S4/W358f4maS9ZyUpzwbLnbcyPFMAIpawJwpSjRDlaY=;
        b=mNiY9djZyemP+2EyT0AydkG9+rnQv5y540qIXGILgKkWdfL31BJkuddEUC9eBQE8ZH
         nRnLgu3ZjrRg4zisxAT1aJoQwTANm+ZJmn0Ggkl+0JTz8xVmrlm+P/uaNW4KUUmH8HqO
         +uGp2fpDyW8Rb1+MTrxr+OBBupc5qTBOSWya7uyTMehGbTWMnSl1wq9/tjqn2IIco4le
         NZ3pULwwgrAxeC2qqK0Or0Fi8hypsO9lTUY/IgBR1e3gJDvuRphDTKndzITta0SryrAv
         vJNzQ/bvsuw4e0/aklfwm6t1N/Mt7BEi5C1xoRqV9dCgLzWos6m4Kc7XcCENnWp4pJnA
         PMYQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533C9ysqgJjDVsi6itK0adC/4PksLyDfzlUXRqcL0g7/sDqT7igY
	TTFgwGXkzFCDY2WEZiVYMMvUIA==
X-Google-Smtp-Source: ABdhPJzg5a86n+nCur2E8CjmilwZFUtlFwMKv4zxzQUr1zju7vrcyCxd8UbUdQ9rih1ns/1nBXIaTQ==
X-Received: by 2002:a05:620a:1326:: with SMTP id p6mr3403319qkj.259.1607008829266;
        Thu, 03 Dec 2020 07:20:29 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:620a:52d:: with SMTP id h13ls2644951qkh.11.gmail; Thu,
 03 Dec 2020 07:20:28 -0800 (PST)
X-Received: by 2002:a05:620a:12e4:: with SMTP id f4mr3382469qkl.265.1607008828649;
        Thu, 03 Dec 2020 07:20:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607008828; cv=none;
        d=google.com; s=arc-20160816;
        b=zwfg/j8V+mr/O+jlRkDJVrT86lYPEI4kOtflFcrS7lf8Suz8rrdWVBFXtF8M2ctfkt
         HxESp2P0M7gLWA89TdMPHBkvBfbt4QNsQKDfydpQ1gDx5sesXtcSZx6lndeyPH8ovWSb
         UyAW+IHdBHtBrje9rR28bUx4uG/60NuizeWT4a+pDtP6DuY5ki4F1KTCuVKH8Z/EANj4
         HT7zyWTNcIhHi/f26a1i1MHiYJtIWfVOkXzn74ouZ461Abp/WdGDgkiD57Cq4zgGtjNK
         HSzIVb9LTJ4l41FaqmYTGCcAu+UOcC0fvKdy7IKVTeah/RKFDihWK6xUpRKS4s8LuCV9
         GSWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=eRauayqR7l9HdVQ2N0t8YYvQDNA34Xqn4lVsuCMTxQg=;
        b=Q9tbKMq9PvIG/YEDngIRf8hDnXvZYycYaqieDa249ZdYXNlcgOgmjpqEOXM7e+6iX2
         fGa8ZCJbMRpJcbDTwvUp/8LcIvbJQIHyz1lJDOBU8poKZbgjdC+SGzPbn+iQNlnYBgHV
         XODl+yi1WlOkEl4eB5XsBnB23K20gg99DeFoQmf/rsh0sPmr+v4pVFbJ5REVJUHplanY
         j6FcmJGaJvNt38ImqVwaylU/RKbkOAVWd55hkmmDjaa3rf/eK/1kHRIjDx2AEC9HTpA8
         pokHueqnBt6HV9cetKTk0KgM2e61zu0wBkK6+WtTRQDZVK1Xum8yGcOROLfi6uZuTGxb
         I6fA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm2 header.b=K80qDKiF;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b="rE/V9r3h";
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.28 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com. [66.111.4.28])
        by mx.google.com with ESMTPS id o27si804331qkm.341.2020.12.03.07.20.28
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Dec 2020 07:20:28 -0800 (PST)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 66.111.4.28 as permitted sender) client-ip=66.111.4.28;
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id 67EF15C0078;
	Thu,  3 Dec 2020 10:20:28 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Thu, 03 Dec 2020 10:20:28 -0500
X-ME-Sender: <xms:OwLJX5AWVUl5fu449ONwUxUfEdTcYUHr1utHnoifX4OCtITHZfrcFA>
    <xme:OwLJX3gXNqCGz76bH0bZC0V-E164F7U2BFguMuDUXVPs_tgKNdCx3gu723kY-veWX
    dfiqOBB-Glz6A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudeiiedgjeehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtre
    dttddtvdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheq
    necuggftrfgrthhtvghrnhepveeuheejgfffgfeivddukedvkedtleelleeghfeljeeiue
    eggeevueduudekvdetnecukfhppeekfedrkeeirdejgedrieegnecuvehluhhsthgvrhfu
    ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepghhrvghgsehkrhhorghhrdgtoh
    hm
X-ME-Proxy: <xmx:OwLJX0kmHnpIaZ267cEQRyW25E7cz0sCXm2vaCWtVo6U7NbqHPk3Jg>
    <xmx:OwLJXzxPa_Ozv4xkPXey2Cl5LwYG-7WiZPDntMrbEGD5c-XbOsXEXA>
    <xmx:OwLJX-RodF0n1KVZpxPbV111ppp19IqjPjQ0o4vWyxAR9nwLDyWq3w>
    <xmx:PALJX5cu5toWUo1i9oRnEqSHUJIZ7FJx8SuL70VFGkueK6VG4l0RDA>
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	by mail.messagingengine.com (Postfix) with ESMTPA id 8B671240057;
	Thu,  3 Dec 2020 10:20:27 -0500 (EST)
Date: Thu, 3 Dec 2020 16:21:36 +0100
From: Greg KH <greg@kroah.com>
To: "Enrico Weigelt, metux IT consult" <info@metux.net>
Cc: linux-kernel@vger.kernel.org, stern@rowland.harvard.edu,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH v2] drivers: usb: storage: prefer pr_*()
 macros over bare printk()
Message-ID: <X8kCgO+2hAgkUqL8@kroah.com>
References: <20201203141634.28850-1-info@metux.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201203141634.28850-1-info@metux.net>
X-Original-Sender: greg@kroah.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kroah.com header.s=fm2 header.b=K80qDKiF;       dkim=pass
 header.i=@messagingengine.com header.s=fm1 header.b="rE/V9r3h";
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.28
 as permitted sender) smtp.mailfrom=greg@kroah.com
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

On Thu, Dec 03, 2020 at 03:16:34PM +0100, Enrico Weigelt, metux IT consult wrote:
> pr_*() printing helpers are preferred over using bare printk().
> 
> changes v2: fixed ugly typo

Don't put that in the changelog, it goes below the --- line, as is
documented.



> 
> Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
> ---
>  drivers/usb/storage/alauda.c     | 23 ++++++++------------
>  drivers/usb/storage/ene_ub6250.c | 20 ++++++++---------
>  drivers/usb/storage/freecom.c    |  2 +-
>  drivers/usb/storage/sddr09.c     | 46 +++++++++++++++++-----------------------
>  drivers/usb/storage/sddr55.c     |  7 +++---
>  5 files changed, 43 insertions(+), 55 deletions(-)
> 
> diff --git a/drivers/usb/storage/alauda.c b/drivers/usb/storage/alauda.c
> index 20b857e97e60..5806f1bee471 100644
> --- a/drivers/usb/storage/alauda.c
> +++ b/drivers/usb/storage/alauda.c
> @@ -622,9 +622,8 @@ static int alauda_read_map(struct us_data *us, unsigned int zone)
>  
>  		/* check even parity */
>  		if (parity[data[6] ^ data[7]]) {
> -			printk(KERN_WARNING
> -			       "alauda_read_map: Bad parity in LBA for block %d"
> -			       " (%02X %02X)\n", i, data[6], data[7]);
> +			pr_warn("alauda_read_map: Bad parity in LBA for block %d"
> +				" (%02X %02X)\n", i, data[6], data[7]);

Please use dev_warn() and friends instead.  This is a driver, it has a
device, it should never use "raw" printk, or pr_* calls.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/X8kCgO%2B2hAgkUqL8%40kroah.com.
