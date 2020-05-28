Return-Path: <usb-storage+bncBD33JHUPQIDBBZWOX73AKGQECFVQFHY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1047.google.com (mail-pj1-x1047.google.com [IPv6:2607:f8b0:4864:20::1047])
	by mail.lfdr.de (Postfix) with ESMTPS id B54D71E6771
	for <lists+usb-storage@lfdr.de>; Thu, 28 May 2020 18:31:36 +0200 (CEST)
Received: by mail-pj1-x1047.google.com with SMTP id k30sf1451058pje.1
        for <lists+usb-storage@lfdr.de>; Thu, 28 May 2020 09:31:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590683495; cv=pass;
        d=google.com; s=arc-20160816;
        b=XADeV8dhY0AXb51FElDwsDutxp8b4PgqUXH1SU5504C7ArRI2lGCVjcldgR+mJNm9Q
         tFTZJZu+G/yVKlGSxwiWnhUJ6qHtLgNcEm/6VLNvq6rvxJLXf4SmqfTP2c3PDLF/cyJU
         9bijKQ15eAAc8K+/aFOsiASYclXBKBnuYgKPqsEg0dU2BT//EsWR1TF3Tz6SdjCgikkj
         DcUybvOTB/luHebNHytclU3HC6NyVSnx2EO2RlQ+ZPcWM/Otgl+6CZ2mVrP3SU8eWAWV
         febnZIlHyGnb/jismUXhmynvhE4jgbkOiQldKVvFSE6pwh7SoSFFXQWeblLq00rNiKqT
         0Ovg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=y2KCyLtH/DzZcIqrgddc3PqBV4b9OeIkQwnYV0YGOpQ=;
        b=CpjX+6l9wCfsLX5/mgrViGeOVpQjaMTRxDlZNI6Y6LB/S4Wbowr5NBIDBX+WUDHdAR
         piTuBMGqDlq/YE7F4jAWyLVrUHqQMxxQ5VwKkUkjA80Zwm1rSrjnb7SoGCPSE7zwEq9z
         SOI30/n8jRBcUAFcK+59jTdye9pvZ2wk7JOEPzv1R+rNGKDiZOq4NMbbA/hWnprJZQ5v
         0/+9p5nrvQGXA+UNUb2gAURNyxKn7F3FHwKcitKBkSE3i5oQsALa0Ej41fHFM+YU5K+Z
         +wPJbGJc63GM20fAfr4p/MjZ2YbdPQ2d8NWoTKFcfj79zEAcIyPZCoi+nV8/una4/CWc
         IoTQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass (test mode) header.i=@codeweavers.com header.s=6377696661 header.b=l1XCxit8;
       spf=pass (google.com: domain of zfigura@codeweavers.com designates 50.203.203.244 as permitted sender) smtp.mailfrom=zfigura@codeweavers.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=codeweavers.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=y2KCyLtH/DzZcIqrgddc3PqBV4b9OeIkQwnYV0YGOpQ=;
        b=h8wBNxAs8zUON1RxdVUDZ6xVzUUelSddBbFXcmuhWOrIKNRtCk00k6ot81glNQ+GDD
         q+plqyhnRs0sdlAjv8ilmKRhKd/azEPC57WeLtxnB7S+mdt7IqmrzrTT/Kg4Wx61ombm
         5rrGt8v2fa6RDWB3htPviUDybdHIL83V05XIk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=y2KCyLtH/DzZcIqrgddc3PqBV4b9OeIkQwnYV0YGOpQ=;
        b=Uy1infnCgC24mxGW7Y6+HlGmA4qWcXNvkwxEgTeqIGyuAH/ksnVaEG45DcM1DJCrQe
         yGZOwVD96CfPP7eC1wOwIjyK4Z4AvP1GzLRL+ZCTMwO9sVhBRkeb3VsrRzfdzgBSDRXu
         0YiQ0XY/VoO823UYc+w7aVB/ubaGn5KnB4rHOWFRcIawXmtHG2cs4BpAVPtxcHJSJHsF
         vPjCf2H4X97db+pL6p/TEoygdSEyZTcPSwBcVRqspcz27uZqkMx9cWjkWFB2Y8QHjaPI
         xX/3vNVamSEgovck9Frw5f0ObO45P9yVSIGwB2pTcUOtc0DFxoCEnl7F/Bekm42uWu0r
         xz5A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM5336QaMqsliFnbBpz5JLtkPQKBlPsCxHPoLF4MkwBsK2QFn+Qm84
	BhIZZx99d/yi1rIdG0jXgACaAQ==
X-Google-Smtp-Source: ABdhPJw5J3jnUN92j6iBJMd1IlYjKHift0LzM7aLUHVW/1p229cwdSxKChUDhYGX9mJx6dk6aBewrA==
X-Received: by 2002:a17:90a:1aa3:: with SMTP id p32mr4916862pjp.4.1590683495327;
        Thu, 28 May 2020 09:31:35 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a63:521f:: with SMTP id g31ls892571pgb.2.gmail; Thu, 28 May
 2020 09:31:34 -0700 (PDT)
X-Received: by 2002:a62:248:: with SMTP id 69mr3906671pfc.243.1590683494528;
        Thu, 28 May 2020 09:31:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590683494; cv=none;
        d=google.com; s=arc-20160816;
        b=CsTU5X0rvyxWbXkhI7GLz8unC6R5GZZIMjRe7p29W6yCUEV9EovmMPYOGLvhijG18Z
         vf8NkKHqg1+GC/pbonVyd0xSH5IfETnGcygZXWnCwpD1J47Cz2FxFyoISDSyjNqLuQLv
         J6vZQ2pBEdknBn2HnDeJ8xCPczHhCy9/YI0sWjMjQUQ8eWUHshme8nThTNLlYfxkzS8z
         +ovfB97f8LAdXsbuNRko1jj4JaRsMkfXRlgBnYNbrfjphtrj3IfetC9NPst8vscJkWqm
         qr7EQQMeNzlHaO6TWh2q/QcGj5q+kPOMkfHxEguQxhPX6mSb/fQA+lxoDq+UQwWQBpgW
         BRTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=Ahu6+Mn2WcqXKjq6TEMeyI6/lC8WbVgAQDCpTQfP0vA=;
        b=TFdE0nbYvwahHGZq3uvKJPDTg9TeiaDNbGD1yuJ9rPF8RlF4dS0VKDYk1tCPz0DT7X
         032gV5NfgL57z1JvZglcpIIJphKcIyw6CFBDlUfiPJHSVWNXDTUvFvdQsD/PBkXvPY4E
         cP+3XE7klEbK38byEetS3B6H+cMfOew9ioFrIBn0JMs0QZFLDNy9jmGNzem+aLWqitSn
         dwX4VwwNHUoWtEQ3NMgkf2eHj3Er0QWO0xHg3JIlNHneJ/swEI6AWh1OugRhGtsj1HS2
         Uk1mv/wNS52saFSENmXDhAfuQLdW+QBysaPmm40HZLwtzBW7ub7eZt8g0U3jn7XZr5ng
         HfpA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass (test mode) header.i=@codeweavers.com header.s=6377696661 header.b=l1XCxit8;
       spf=pass (google.com: domain of zfigura@codeweavers.com designates 50.203.203.244 as permitted sender) smtp.mailfrom=zfigura@codeweavers.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=codeweavers.com
Received: from mail.codeweavers.com (mail.codeweavers.com. [50.203.203.244])
        by mx.google.com with ESMTPS id r92si4961377pjg.60.2020.05.28.09.31.34
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 28 May 2020 09:31:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of zfigura@codeweavers.com designates 50.203.203.244 as permitted sender) client-ip=50.203.203.244;
Received: from [64.191.7.9] (helo=[192.168.1.115])
	by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.89)
	(envelope-from <zfigura@codeweavers.com>)
	id 1jeLRL-0003AS-0X; Thu, 28 May 2020 11:31:33 -0500
Subject: [usb-storage] Re: Bug 207877: ASMedia drive (174c:55aa) hangs in
 ioctl CDROM_DRIVE_STATUS when mounting a DVD
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Greg KH <gregkh@linuxfoundation.org>,
 usb-storage@lists.one-eyed-alien.net, linux-usb@vger.kernel.org
References: <7d0b20b9-4735-bbed-bb50-72764aefd6d8@codeweavers.com>
 <20200528075440.GA2881385@kroah.com>
 <465eaae3-fa60-f37e-1d62-c52236720798@codeweavers.com>
 <20200528160420.GA14188@rowland.harvard.edu>
From: Zebediah Figura <zfigura@codeweavers.com>
Message-ID: <232b68f8-9a5c-89fd-2e12-bf63f49dbe38@codeweavers.com>
Date: Thu, 28 May 2020 11:21:08 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200528160420.GA14188@rowland.harvard.edu>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Spam-Score: -26.0
X-Spam-Report: Spam detection software, running on the system "mail.codeweavers.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 5/28/20 11:04 AM, Alan Stern wrote: > On Thu, May 28, 2020
    at 10:02:07AM -0500, Zebediah Figura wrote: >> On 5/28/20 2:54 AM, Greg KH
    wrote: >>> On Wed, May 27, 2020 at 11:23:13PM -0500, Zebediah F [...] 
 
 Content analysis details:   (-26.0 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  -20 USER_IN_WHITELIST      From: address is in the user's white-list
 -6.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -0.5 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.5 AWL                    AWL: Adjusted score from AWL reputation of From: address
X-Original-Sender: zfigura@codeweavers.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass (test mode)
 header.i=@codeweavers.com header.s=6377696661 header.b=l1XCxit8;
       spf=pass (google.com: domain of zfigura@codeweavers.com designates
 50.203.203.244 as permitted sender) smtp.mailfrom=zfigura@codeweavers.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=codeweavers.com
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

On 5/28/20 11:04 AM, Alan Stern wrote:
> On Thu, May 28, 2020 at 10:02:07AM -0500, Zebediah Figura wrote:
>> On 5/28/20 2:54 AM, Greg KH wrote:
>>> On Wed, May 27, 2020 at 11:23:13PM -0500, Zebediah Figura wrote:
>>>> Hello all,
>>>>
>>>> I was asked to report this bug here. There's more details in the bug report,
>>>> but it's been proposed that there's a deadlock between device_reset() in
>>>> scsiglue.c and usb_stor_control_thread().
>>>
>>> What bug report where?  Can you provide a link and the details here in
>>> the email?
>>
>> Oops, meant to link it and forgot. Sorry about that.
>>
>> https://bugzilla.kernel.org/show_bug.cgi?id=207877
> 
> This doesn't look like a deadlock to me, at least, not a deadlock
> involving the device reset code.
> 
> Your next step should be to collect a usbmon trace showing what happens
> when the problem occurs.  See the instructions in
> Documentation/usb/usbmon.rst.

Thanks, I've attached a usbmon trace to the bug. It seems the kernel 
submits a bulk input transfer that never receives a response. I hope my 
drive isn't broken...

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/232b68f8-9a5c-89fd-2e12-bf63f49dbe38%40codeweavers.com.
