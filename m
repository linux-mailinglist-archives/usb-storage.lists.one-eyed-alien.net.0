Return-Path: <usb-storage+bncBD33JHUPQIDBBX5JX73AKGQEWNAFE3A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x547.google.com (mail-pg1-x547.google.com [IPv6:2607:f8b0:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id CAB061E658E
	for <lists+usb-storage@lfdr.de>; Thu, 28 May 2020 17:12:32 +0200 (CEST)
Received: by mail-pg1-x547.google.com with SMTP id q5sf22315859pgt.16
        for <lists+usb-storage@lfdr.de>; Thu, 28 May 2020 08:12:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590678751; cv=pass;
        d=google.com; s=arc-20160816;
        b=npFMTpbyZZ37iAtjTcqSfpjehBjVN0OiX3tdDEjUcyYdurzNnyUFGOBMn93TpnymfH
         qOcu319mpdpJ0q7/bu2hVycadP6cVKAQfOaMkuFKazd4uW3+c0zfAS/VisnvgENwtobR
         wHUvDMWa862TVHEdKg1v05ess/0jy1C0O3uywvW00Zr6NSG4GysxtbyuNnBmxQ3lq3mo
         /VOMnolRRUoqVqoCYhcpwQzEIpH7iuWOIA72aaGgUu4Xygax33A/TJLBUV0JG19q6xTF
         xnOO1gGSNWCrEVAx8J3aHvvOeIPOMMTFuVzg/JJCR7kEE4aYbYsywgBzi2j85L8AkE/X
         drEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=/b9+pmiLhJVHRTLMACQe3j1GJ+iq1k5z0SoUUM/4WQQ=;
        b=bPkZ2z7CMXE0r0kRf98xST6SLq7MrWDK7hUMXZluHEEVLa3YiN2JDkK27+sxH66qLZ
         smbSRMNTtvB4TsLateVnbNHUu+6KDmU0LOyIRu0xkkS7CnK+pdJGV6vr9BcLOEE2Ltw/
         1yzcAk4ZRCvtxFFk1lmPNsaqp4SQrY+IjcTatvrRm89WX3IW2SvxIqwWPyYgiyhSRGgX
         7lqrv64+RQSWeVrZXlOTP1OZogZ1H2MStDGgj5DtNMEdyRS0ZB44kcdNeJclxJ9ori6Y
         gxT2QSYnFZubzEdnmOssgv7MoM+UXPRqfJB8D01Mllhg7aoztLelrQUhRaYC0EY7hgdU
         Qvcg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass (test mode) header.i=@codeweavers.com header.s=6377696661 header.b=qr6bnG7D;
       spf=pass (google.com: domain of zfigura@codeweavers.com designates 50.203.203.244 as permitted sender) smtp.mailfrom=zfigura@codeweavers.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=codeweavers.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/b9+pmiLhJVHRTLMACQe3j1GJ+iq1k5z0SoUUM/4WQQ=;
        b=WEEepEp75v2K0Po8zLbROyA8HjGgxAL/P1wjwFQdRkEzpRBgooX4VfYAD01iqjzvXA
         v1XBfw4RyKcG/UjHiKxhDzz26maZNlraRa5xSs4qas41JzBacyu0Rtz4XkCzJoZOObNV
         MWNMaK64Fkpy5cHV2BPBr8+d8oWWkwEHJwT+0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/b9+pmiLhJVHRTLMACQe3j1GJ+iq1k5z0SoUUM/4WQQ=;
        b=k6QRbkv/M/t7bP8LhUKbr+TAO+Ey9u1lgZ7rYlrqM5QCixbWUeH51PykijJfX4Ef4Y
         7Pw3qPbz5+a0iDQ3K8Ff6c43o4smZ5UP7/ZeSsZWZwkZAwiUSgSp32D8HeySgmWwpcyg
         VWCqmOK/jXnulH33ABcjfRGUpPVf9FJ1KkYkm4oT/Fm+WI8obkxX6A5RBQBRJh8oQIWg
         OuGxBo4pPq6gwfPjfzCu5b/tDnuLD1vPjlG/I/ibgeEI8eYiQn3NY3UBuGB/1Q2Lrq/L
         0HeaiIkSgvSuO9c1POXWwGkxetuyYNjx1O0e5FPcRhiMFucAE4sw6/UXAe4/KPgTYRJk
         S3AQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532xhSjxsivu9e5TCTA0r8GcIR84u6k397FpZ//H63YGEsZT4Lwz
	vJox1fc6AoxSbJAN0qui3cSabw==
X-Google-Smtp-Source: ABdhPJxC1BiNY2nZuVbmfLNRXkG1RdtBVaqdv7AEFSUDLrV8rIBmBM6XyHW4f7kTfRvg7JVxDEAULQ==
X-Received: by 2002:a17:90a:5d09:: with SMTP id s9mr4251167pji.113.1590678751493;
        Thu, 28 May 2020 08:12:31 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a63:c910:: with SMTP id o16ls839341pgg.4.gmail; Thu, 28 May
 2020 08:12:30 -0700 (PDT)
X-Received: by 2002:a63:7d58:: with SMTP id m24mr3303617pgn.81.1590678750707;
        Thu, 28 May 2020 08:12:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590678750; cv=none;
        d=google.com; s=arc-20160816;
        b=K1VgMHmGRlpMRHl6ugRuugklHBud78cI6/IXZnFcikPHiTi5cp8/lkrEQBPnpUwZPa
         saZOEyHqjMcfY5QyyPRqUJ8Fk6r/vfrZRDunDToG4ahxsYyzswZl+c+oP6fGGkBglRYj
         8LDPienZ6iNvvrw5j8z+9sPwdd3KqokVFUKUmec4zbsoU9Lq6SP1XdJ5CGb9oEygueTU
         kZyoG2gngnOeorXorI1WG8gGWTue92fY9ab2uqs7fxCvH/P5CRiMH6+78PXPa0KBOjAq
         sS37pn2NZF1u1GOos3d5ce9i2AN0lzmLeKnECZo13GDqolYEuAJuUOUf790MoHGIoGCv
         mD3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=hc9IKmxCDSM3OtAJSMn2ZsIUD6no5/0eUxLuxHroc3g=;
        b=HFTVmHTrJjdO85WTShnOHccmSufGBJkcMhcMdSCBmGWTZks8IafZ1R5kGHoKnBO0ml
         VgEQV6h46mHEhCTP85CvirLgc7sVxha4ojNyQ/hXJPIesWYsxt9KTeW/5mEWfLKEKIhV
         u6Ies7wmC9ylvkXn93OzBZAkpc/ZJjtYX3c1oDXQ/+UOaAFdDxdHc6vnmqloDS/507oY
         PdmLdsL0XQaCG/zu2W4piw8DLlkRLrwgvCzqIVLt0xCL+pVFcMiPNCo9RajifxBf5E1x
         WpwKFcjLV+52L6IbZRBg8tKN1cQvCR4M3sViXHvQl98s+6TgJHv4/qlWoL9bsMr/cLkr
         1fUg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass (test mode) header.i=@codeweavers.com header.s=6377696661 header.b=qr6bnG7D;
       spf=pass (google.com: domain of zfigura@codeweavers.com designates 50.203.203.244 as permitted sender) smtp.mailfrom=zfigura@codeweavers.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=codeweavers.com
Received: from mail.codeweavers.com (mail.codeweavers.com. [50.203.203.244])
        by mx.google.com with ESMTPS id b10si4714348plx.107.2020.05.28.08.12.30
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 28 May 2020 08:12:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of zfigura@codeweavers.com designates 50.203.203.244 as permitted sender) client-ip=50.203.203.244;
Received: from [64.191.7.9] (helo=[192.168.1.115])
	by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.89)
	(envelope-from <zfigura@codeweavers.com>)
	id 1jeKCp-0001OH-VP; Thu, 28 May 2020 10:12:29 -0500
Subject: [usb-storage] Re: Bug 207877: ASMedia drive (174c:55aa) hangs in
 ioctl CDROM_DRIVE_STATUS when mounting a DVD
To: Greg KH <gregkh@linuxfoundation.org>
Cc: usb-storage@lists.one-eyed-alien.net, linux-usb@vger.kernel.org
References: <7d0b20b9-4735-bbed-bb50-72764aefd6d8@codeweavers.com>
 <20200528075440.GA2881385@kroah.com>
From: Zebediah Figura <zfigura@codeweavers.com>
Message-ID: <465eaae3-fa60-f37e-1d62-c52236720798@codeweavers.com>
Date: Thu, 28 May 2020 10:02:07 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200528075440.GA2881385@kroah.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Spam-Score: -26.0
X-Spam-Report: Spam detection software, running on the system "mail.codeweavers.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 5/28/20 2:54 AM, Greg KH wrote: > On Wed, May 27, 2020
   at 11:23:13PM -0500, Zebediah Figura wrote: >> Hello all, >> >> I was asked
    to report this bug here. There's more details in the bug report, > [...] 
 
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
 header.i=@codeweavers.com header.s=6377696661 header.b=qr6bnG7D;
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

On 5/28/20 2:54 AM, Greg KH wrote:
> On Wed, May 27, 2020 at 11:23:13PM -0500, Zebediah Figura wrote:
>> Hello all,
>>
>> I was asked to report this bug here. There's more details in the bug report,
>> but it's been proposed that there's a deadlock between device_reset() in
>> scsiglue.c and usb_stor_control_thread().
> 
> What bug report where?  Can you provide a link and the details here in
> the email?

Oops, meant to link it and forgot. Sorry about that.

https://bugzilla.kernel.org/show_bug.cgi?id=207877

> 
> thanks,
> 
> greg k-h
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/465eaae3-fa60-f37e-1d62-c52236720798%40codeweavers.com.
