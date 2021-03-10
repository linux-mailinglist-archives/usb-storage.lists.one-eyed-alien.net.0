Return-Path: <usb-storage+bncBD6LRVPZ6YGRBSP4USBAMGQE4WMMMUY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x846.google.com (mail-qt1-x846.google.com [IPv6:2607:f8b0:4864:20::846])
	by mail.lfdr.de (Postfix) with ESMTPS id B3138334A04
	for <lists+usb-storage@lfdr.de>; Wed, 10 Mar 2021 22:46:50 +0100 (CET)
Received: by mail-qt1-x846.google.com with SMTP id v19sf14002558qtw.19
        for <lists+usb-storage@lfdr.de>; Wed, 10 Mar 2021 13:46:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615412809; cv=pass;
        d=google.com; s=arc-20160816;
        b=TygKFBdj8SOSlVCD0wj2KaOa9Z14XrwG3drhSoCba4MCsNzgd5s+kVsOFrtME3Ndod
         fwVKuNsyMm1EWcwQ4pgyxHkThb4l73Nc3s98oVcFR0KB6sUayE4iCegtjql1RRWbjO1h
         px8hIgfOelNcfPXYf6MnoRTAnsQ3Ij6RGBafogNfkPRVGPVE4Z82DMGdjtp+xZgkre4a
         qICqjHsTkh0yAj6nXATEjdtIwcdAbM4L6y2pJMBSbHGSMdnsAszPwpK4kQFvpE8sWu/s
         GovbeGKxNuCmFJZ3vmafL3uU1TjMiC4LWO9tdoS6CzU065eGlOidWk+fyE+DZU8wjB3C
         4Uaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=9dlDbFK0b17NbHhpy8GWQTtv0nYX8zGqjHev8Q8ZLE4=;
        b=Hm36H20EB2PP7QwPZjTPUsrqRxVH64KjUGf4i01/KoOltGZ24v+wvK0vRg29lWQ7N8
         pd7bUcO4HbZ79KIFvxTXZkm77r5sFeLKMQk1/0ZITUj/yNnKMBqnv9kAtFLSzzAXbbHz
         gw+fSqIFR2FBikfF8PEPrh4njum1UJ/9tQHuHgIWVTSvW6alqCPF3blMo0gCYIiPzyj0
         hTdL/zzlnX1VSqz+HvW797cgVp0ToTNxNfLuV2LjEddGJ8NKDnrAbodAc5I9dv9oxPfx
         tFi+o1AUA6In6ntec18SvpfOquQQvmZdY6YAE+gSpcw1LuUx98YUbourt8TQCUe984bG
         Wmyw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+605a82f6@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9dlDbFK0b17NbHhpy8GWQTtv0nYX8zGqjHev8Q8ZLE4=;
        b=DpzhDLLCdHZvozHaXX6LyP0GWmw/cmh7O/v60Z6BGAlu/cUOBPR43sZ4Yh++VjXUMF
         P9UTM/6zuwn+RirxrcHubiPTTKt309z7s3xy3buu532T/5r1j/ndx4BQDWicMCo+724o
         6mJlpkd3aCptcY//yCLCc1evvRyYmUM3ZKatg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9dlDbFK0b17NbHhpy8GWQTtv0nYX8zGqjHev8Q8ZLE4=;
        b=NE+oKqlOuk7aLX6C2jvbAM9JwN38Wk8/aljmvmCq08wfDt32NyIuJ5IvjO6qlJRX6B
         5eQQtdz8O7l0l5vUqAa0aQsmlfA0fu4KCGGaIvm6eGzjEh4k5uSOMhMDYBuQuW0jF7R/
         Sfhbuu/M2VPlSOOQD6jLYL1RyjT48sSmHEKztfDXmtmARVZ0fScfAHpSXxq54hu9sGeh
         aVvuSY6TPvO+qAOzi5kEUElNf+uOoVQmzJbX7m3FuR5u6KZjma4hE+evbADY+Wnfsb6p
         cxbQCY8i/lDXxVBK8oDC2WEnepOS3uXxYkvq1AeAc7t5Iz7lew8IiSKPnelHSyx/iZif
         gBKA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532+CmjaYkCEpC7SPBxAkHGkI3dngRvLYBrHm2vdQz2WROIbo9R0
	f1Vz3qTlO5OBLaZ4bOaWIr4JDQ==
X-Google-Smtp-Source: ABdhPJz6P7Wm74KTx91CiF9Yr808HLxjj0vVoYSSFQzr/lfpMO3xVMsePo1wAOWXSPp6sFn9Tu2FfA==
X-Received: by 2002:a05:620a:53d:: with SMTP id h29mr4719745qkh.29.1615412809756;
        Wed, 10 Mar 2021 13:46:49 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:620a:b19:: with SMTP id t25ls1971980qkg.1.gmail; Wed, 10
 Mar 2021 13:46:49 -0800 (PST)
X-Received: by 2002:a05:620a:714:: with SMTP id 20mr4887454qkc.192.1615412809194;
        Wed, 10 Mar 2021 13:46:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615412809; cv=none;
        d=google.com; s=arc-20160816;
        b=qIXvKD/hTmLimc79nT3OXFfGNaxdO42DXSHWdX8sj03dMdgA83JVKxzUN8/YgJzdzy
         KLFejfyA8M8fHTxlA5d4faY6LoDhDrqbvV0HHm0t3bXbTOg+HRNXWBxScGJMrmslo9Ae
         8ZWe7tqLTuxDv1wWDlJ2veALYkCjsBwdI5mvVHp0sF0ap15ZgNKjhGauI1GIEPdCGMc3
         hk9ByYArCjPUcqJh1huHOgj09/LtOmqKJV42xFEUWzKjxhiH+nDcUZoX78HC2NoU7AxL
         RURwPU0ZqJW8LrtLA2n89hxbuDgOAHqHifuSh75RzAkGC8nXxItok/5qOyKJCE0xopem
         ru9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=CDCqp4DKwVl5kPW0AaeM9YIZiDiapY9I/4Fssu3ibQ4=;
        b=sXqPJp8qTC5x4VZmKF8zP7qOG9lRx8YdNJhUl9Nzky9ZNS2WcaGsy9fn4HepAebjzQ
         4D2JCw0RSvKaHq2PNeq8Q5tu/O7+ikvRJzd3Iyth84pdyGe+U5gQ9Et7Up7tOQm6Ihip
         03j8XLegpNSUvn7+5LO2cV7DL+pSvtlpJA+cisBtEo0qyEO9rSb+CWuExJK50xdu1Gv1
         2bLam5kjtUDcrLfE2DoEc7bl9vb9gA6KwN6ONTVG1QyV27u92DIfK8VrBGkn3CVlfdeV
         MwpDgpBvh8G0K4gnmZOx05I/CmBmD3ORffq0MhbY5yybvjklsYEXhroFeX0UVvRTJT6m
         uVWg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+605a82f6@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id g22si424522qtx.332.2021.03.10.13.46.49
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 10 Mar 2021 13:46:49 -0800 (PST)
Received-SPF: pass (google.com: domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 236684 invoked by uid 1000); 10 Mar 2021 16:46:48 -0500
Date: Wed, 10 Mar 2021 16:46:48 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Matthias Schwarzott <zzam@gentoo.org>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  hirofumi@mail.parknet.co.jp
Subject: Re: [usb-storage] Re: Amazon Kindle disconnect after Synchronize Cache
Message-ID: <20210310214648.GA236329@rowland.harvard.edu>
References: <9f57532f-1fb7-0fdd-b91c-2dfecef5aff3@gentoo.org>
 <20210305191437.GC48113@rowland.harvard.edu>
 <2a1f6636-6b57-ccc5-76b3-7eae5e80e7d3@gentoo.org>
 <20210307155236.GB103559@rowland.harvard.edu>
 <9c3121a9-3d0c-60b3-ef17-993b7d2e9149@gentoo.org>
 <20210307165856.GA104554@rowland.harvard.edu>
 <268e646f-d4ea-3190-f1b9-8e69bfc1b019@gentoo.org>
 <20210309155046.GA176674@rowland.harvard.edu>
 <dfd2b281-3beb-9869-37b6-8bd48a6cf40f@gentoo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <dfd2b281-3beb-9869-37b6-8bd48a6cf40f@gentoo.org>
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

On Wed, Mar 10, 2021 at 09:56:04PM +0100, Matthias Schwarzott wrote:
> > What happens if you set the value to 1000 before running the test?
> > 
> I tested different values. At 1000 it still disconnects. At lower values it
> no longer does this.
> I tested 200 up to 900. Even 900 ms is good enough to keep it connected.
> 
> Btw. it is not a USB disconnect, but it just seems to plays medium ejected.
> 
> Out of interest I called "sg_start -v -l /dev/sde" after one of the failing
> experiments. That made the Kindle go back to connected state.
> 
> To me the above experiments show that enough TEST UNIT READY commands are
> needed in the 2 s after a SYNCHRONIZE CACHE.

So you have found the solution to your problem.  Congratulations!

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20210310214648.GA236329%40rowland.harvard.edu.
