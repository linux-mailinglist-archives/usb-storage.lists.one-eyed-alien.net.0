Return-Path: <usb-storage+bncBD6LRVPZ6YGRBR66X73AKGQEENRPGUQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x148.google.com (mail-il1-x148.google.com [IPv6:2607:f8b0:4864:20::148])
	by mail.lfdr.de (Postfix) with ESMTPS id 271F11E680E
	for <lists+usb-storage@lfdr.de>; Thu, 28 May 2020 19:05:13 +0200 (CEST)
Received: by mail-il1-x148.google.com with SMTP id b8sf526501ilr.11
        for <lists+usb-storage@lfdr.de>; Thu, 28 May 2020 10:05:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590685512; cv=pass;
        d=google.com; s=arc-20160816;
        b=wRF4jwxRYqB/rNUt8upyp8UmooEFT5YadpL7s8bSKUc7nSt3Ve8r7bPrLo2UVI6Tht
         Ytyz1QR9vv8wVn8iDzxlX6BUJFkkqpPLHxIGMAFs7RYJllp3P4thew5cGsJ/RAhXJraH
         8M5iWGkJsHLZ307xK0MMg5iVWvlfK58cpIF+zBVhWMU1eb9Q6p/cjU2xN40TS+gLtAx1
         1ZgpvhvdSFpXao78dpR4Y04tj4HtO3FWows2+2cLM+igFE1cAi0myQ/9U43CGCGg6QtM
         CANqcxklSTtHX+iOfrz7BiSqK687wmqEPDsmKkCAVZWLjOiyZzm5wXf8OOthNDFv2r2C
         Ze7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=TzInHmOvTZVSG6TP5lLclCxlcWF7qHFNeqJ3KKtudzw=;
        b=O7pASzYhJnY8MhPP+jJjhmE7kL9v+jSRLY9OZV5PzT7o0ycRV0w6eAQKqBt3EzDFEg
         jkDqhTQ8Z7T2p3GmYH3UikMxRDCVKHgbe9cLitpK4MiT7VfcTSa0gDnFXsMacETyZmPV
         Pxsn2BegoKxM4Z+r5CxSzI68JwP3oEqyT9n5Kpl5dqbcK08uDQdgjvtgJq5jIvl1TeF7
         m7dz8WXlodxXV2yjAKl+tAvUKgn1VRfAsXsJkWDHi1hZR8zgezpfEEjrvN9dfWfqcWho
         Q7/5Jm15r63TC9leRtK+71XOdspm/lzCJduBZs7AfMw0kUwoKfY1cMPaY/85pmjhgQFX
         Gs4g==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+5edd826a@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5edd826a@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TzInHmOvTZVSG6TP5lLclCxlcWF7qHFNeqJ3KKtudzw=;
        b=BaFZBcyk2epgRPf/WgxCeSjHSLEpwkKjxbMSTcqVm5k+h/iSK/fZqMD8KKV9oyeY24
         u5f9VK1Et2rIzhoAnx78qXig7ttSDb7A1nbEzvx7+xR1K2SIAlM6XQpLdm+mZmnBtWNe
         /8x/HRIJ0ASXrxW38EUBVCSL9zUECDC9mq0rI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TzInHmOvTZVSG6TP5lLclCxlcWF7qHFNeqJ3KKtudzw=;
        b=ftdIskuY+rCUPlce475l7Webc/tz1+2mXx6pfwjxgC9g/i6R60PdovpIp1qDukH3Hy
         duXmvbI0xZq5Epbts+f8iKL9uBjlg+JZn2cveKOdgNNZbI1F5H5Wj/5O94wmZpazxQ4c
         VBOU6wutnKTEO1Hb7dBP4wBUUEslrubuxqCFtKsWFUPeucBIborpM3YELHMr2tCOo9NI
         QQIbcTOyeuYrIqY+Dvn608t2w/l6HIWY1yoJzgXmirXxj2w+836JCf1UIxcYf+35XhXn
         QuqnfyUr4cdMY1XJ3+sTUDvOphEiY1qgkaehqEfyNMcTubjSsRMQu6FPy4qIBW2ShLfI
         WT0A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531O1Fen1kc0Viix4gcls3ldeHzKnvqC1Kl9fGXPsKc6ZtfJReqF
	2/YKIi7ElNMgwh7ZEy7DBSDa5Q==
X-Google-Smtp-Source: ABdhPJx6hAiZoGgIVQxUUHIRbxNzaP4eEEkstVdiH78ZhpZHmtwHBs0BNkeghGOPbvtAF8cXewj5Pg==
X-Received: by 2002:a6b:e311:: with SMTP id u17mr3110398ioc.51.1590685511623;
        Thu, 28 May 2020 10:05:11 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a92:c9cd:: with SMTP id k13ls871431ilq.2.gmail; Thu, 28 May
 2020 10:05:11 -0700 (PDT)
X-Received: by 2002:a92:d151:: with SMTP id t17mr3798240ilg.101.1590685511137;
        Thu, 28 May 2020 10:05:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590685511; cv=none;
        d=google.com; s=arc-20160816;
        b=UZp0od4t1GQsSRVW7td1g368ZthKvkAqxoSrI6550pSvF9U6tyVX29bAnJRCY4w46/
         keyRKcg/1RTNSBQfLBG5JWY7JNdQqe+7jZ34wTPKFfdeNSag7vd5mR/Co95omkEPCnmY
         sWxOujLBcNy8NbTM5WJMeGCqFPFTcsFXQUjgoTA3PqaunA06kvYyf92hEqVTp3sSO/ui
         6WXNwaV/UR9mBYgCYME09QUi6tnLX5OEPaCJya4tS4/nQsf++QPjEYwkVqOrsOrDD1Wk
         aPUKuS4jGZkTPz+stYJMz8Y698epiZI2uqVU7YFndg3NkuEaphqvNrRwqroEjWth7W9Z
         2S2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=fpYaXU9crTsLWyUmUsYQhewYEO29wOqqQ1qDoHYNY8c=;
        b=eDk4/0vTaqjpXSTTzj1F2KdOuc3YVf4u5mvSJ/JuSQ/iewQ6OacROIB+LYECCzminL
         PBQOruWEJjsPOtVXHLgzfsH+P1PyuYYpDdPyDqURXSgAC7OGGH4NSKJC7bzgP3H49XR3
         rQShLFr333bzAiS/09pyxpENT3SeLA0Vn09tQDK91+scNbameT/LSj2PuZdec5L3H/ri
         N/0oFzIUbzdsH84Hr/6ZaY8xJ07pbeS8U7gfAk7CUMJwK0FALwQc+5+DZ2kK69TsDVyb
         wqTlNlddhr0hSzTaIxYvHRUX+8Fg2KtpIUer3p3tcPhELc5Qvr4XphywXUv0SOqRdugd
         4KQA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+5edd826a@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5edd826a@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id a5si3629766ioa.41.2020.05.28.10.05.10
        for <usb-storage@lists.one-eyed-alien.net>;
        Thu, 28 May 2020 10:05:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+5edd826a@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 17452 invoked by uid 1000); 28 May 2020 13:05:09 -0400
Date: Thu, 28 May 2020 13:05:09 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Zebediah Figura <zfigura@codeweavers.com>
Cc: Greg KH <gregkh@linuxfoundation.org>,
  usb-storage@lists.one-eyed-alien.net, linux-usb@vger.kernel.org
Subject: [usb-storage] Re: Bug 207877: ASMedia drive (174c:55aa) hangs in
 ioctl CDROM_DRIVE_STATUS when mounting a DVD
Message-ID: <20200528170509.GC14188@rowland.harvard.edu>
References: <7d0b20b9-4735-bbed-bb50-72764aefd6d8@codeweavers.com>
 <20200528075440.GA2881385@kroah.com>
 <465eaae3-fa60-f37e-1d62-c52236720798@codeweavers.com>
 <20200528160420.GA14188@rowland.harvard.edu>
 <232b68f8-9a5c-89fd-2e12-bf63f49dbe38@codeweavers.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <232b68f8-9a5c-89fd-2e12-bf63f49dbe38@codeweavers.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+5edd826a@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+5edd826a@netrider.rowland.org
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

> Thanks, I've attached a usbmon trace to the bug. It seems the kernel submits
> a bulk input transfer that never receives a response. I hope my drive isn't
> broken...

Did you wait for thirty seconds after that final bulk input transfer 
started?  It should have been aborted at that point, just like the two 
previous transfer attempts.  There might be a bad sector on the disc you 
were trying to read; all three attempts seem to have failed at the same 
place.

I get the impression that the SCSI error handler may have tried to reset 
the device without first aborting the current transfer.  But it's not 
easy to tell if that's what really happened.  You might be able to get 
more information by enabling CONFIG_USB_STORAGE_DEBUG and rebuilding the 
usb-storage driver, or by turning on SCSI debugging.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20200528170509.GC14188%40rowland.harvard.edu.
