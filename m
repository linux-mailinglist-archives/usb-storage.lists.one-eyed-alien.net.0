Return-Path: <usb-storage+bncBCF37CNFREKRBHMA5TUAKGQEOHGD7DI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yw1-xc46.google.com (mail-yw1-xc46.google.com [IPv6:2607:f8b0:4864:20::c46])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF625C99A
	for <lists+usb-storage@lfdr.de>; Tue,  2 Jul 2019 08:56:30 +0200 (CEST)
Received: by mail-yw1-xc46.google.com with SMTP id q79sf1695351ywg.13
        for <lists+usb-storage@lfdr.de>; Mon, 01 Jul 2019 23:56:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562050589; cv=pass;
        d=google.com; s=arc-20160816;
        b=X4OewaQI9vxvLw5mfkz+YndSVHKTseu8mOBLxPUTokb9Vq0Zb3Gh+6zzbJWFRv+fF+
         ktWoVzg+4HX6tM2+tZH1fAphhUeL7GK7muUhfgS2dk58+QAE7KxkaGJVhWtKAXwyJPZE
         vEsXJjT6cs5B/Zzcyy5NG2fvL7viYwFuKpYnw7/YubyTIgbDxYE4HMr9/JKVBH558Vdr
         paHIx7cCOlEAB7soZNMGfYVxV6THIUnQuwROxlAF0XDWsrkipKZ+D9L88xJEnxumDJ5p
         Rnoene52qOF2XQE7eVD401+eZW/Kik2YQA1xH/7TWiUCbFe1izwk5FlsYtUeSeovyUWL
         xhMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:references:cc:to:from
         :subject:sender:dkim-signature;
        bh=RghCASJi7JFgLPUlJIhVfgUziMV2s7wGQHIzEF7KeaM=;
        b=0zN9Xw6dKcVawUUPZwoJRHDkRTfn/1hd0P112qCBnqTO5d9rZqvqaS/2a1D9+bEXZj
         s/dPQEOACtuLmilpLjPA7M+WYtVumO7MpEb2HuilJOVl+wbw5B4wp/XzNFHc4WMp/WlP
         ZvjVrwm4Jpl0Y8P8hXeRPIjsHHCyyvoPG9EYsgjkuiAEUbmUt9+Tu5WGhpZHMMHAzfj+
         D2EEQmExcinwlqfo4HUTHpnMblHKmrZHAauBuRQRzKN3iGO7RD7RI27uNZ9lcEQUJDbA
         miNgZ7owMtVPG4z4VTrwBOHaNg3HYPtZRt4KqucBebmIzr2a2HuRhE3duYFC40gP23Z9
         bNWg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@nvidia.com header.s=n1 header.b=YuSzEmID;
       spf=pass (google.com: domain of jckuo@nvidia.com designates 216.228.121.143 as permitted sender) smtp.mailfrom=jckuo@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RghCASJi7JFgLPUlJIhVfgUziMV2s7wGQHIzEF7KeaM=;
        b=Peh602qOLequek6US8SvHx+N7GoeNMEzSbUdBChk48lyQVYA9T0A9c5C9MqtjpcPOB
         EnQmX1k+dJ7AsBOrcxkJwj4BEoZ+X0W3J9RTcDZo0leE9HTmo74Xu1S85gGxYpzGQMq2
         jJWZpzBkwztbxhIR5Pt5/CZgEjyISW5y0OL3o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:references:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RghCASJi7JFgLPUlJIhVfgUziMV2s7wGQHIzEF7KeaM=;
        b=KR8Sje9v0yMcpE7WivTN21x+pRQxgxhVp5g0fUy0msz7H3VSFUXcHejaB6r3Z2I3di
         xTAwkiGdYxphCRBjiJY/0pM9MpVUmcbr4ofvN+M4qCjI4Wd3eXCA7WZTUT8azwevsULm
         CYpER+xkIgwOZA0f5benvPBZ0qujfM9MKO/Gm52HSdEPQUyR0x3IOkvHGpCETNPwaqkF
         geKmfIJc0dMpQ2k03dumpoOAP2kCMtskk+kupw23Aj61Ye5DjHZkiMU7C9W3I8+IkGSB
         iPV9uaM5Epw6fA/hfN5iNkTHEDflcHCvN3CBqF/rjfP7z4sNElysqoq1RaSJksjAs/VT
         j/8w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUHzshsYcAxx5h4eCLOxBg2VFhYIyfjirE6LJVJffjTM0FlC1mI
	bAwuzC5kxy1Cu2WT0EG3XpwqbA==
X-Google-Smtp-Source: APXvYqxokk6ObpE6TmMVPjY+PgxYPbkQ5x/MyjY1rjLyIkKcqq2G3Ngjba6G+rBheh4nbuol17MvkA==
X-Received: by 2002:a25:9846:: with SMTP id k6mr4627677ybo.202.1562050589682;
        Mon, 01 Jul 2019 23:56:29 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:9d12:: with SMTP id i18ls580378ybp.8.gmail; Mon, 01 Jul
 2019 23:56:29 -0700 (PDT)
X-Received: by 2002:a25:38ca:: with SMTP id f193mr200008yba.447.1562050589401;
        Mon, 01 Jul 2019 23:56:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562050589; cv=none;
        d=google.com; s=arc-20160816;
        b=uL49xbGIGIjfOhFiUIVTPbHITRP0kEhib0zIAfo8JjY748pbHA4lh72h6sRJY4mbtK
         GebMwik1+6DHOWNx6n8/6nl8HQHZzuyAExQCKxLJ/hrraeW5/34Tt47eTgIl9Gs0i4Fg
         iBt4Vnow95jo1zA7x2hpTl6roo4oMFm/bSKUrrlX9vKxb86u2j4LxwoNb26mFCQFuiqE
         rPVLqWLFAiQdPia5xOcXHtNPZKxtnI/za/QTW7BkUq/KOWxydwndI56UQ5+HGXeOwoU7
         aWhyqJOMNTULnyPg8ZSmSJRgTPpHPJRozLxusLJqC65runKK3LTBeco7pDYfPYaeYytf
         gDdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=dkim-signature:content-transfer-encoding:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:references:cc
         :to:from:subject;
        bh=F00GhOOtBEScjTFH736kxNKYYLbMm/Dc8OeznGQRFfo=;
        b=YK7salsVsUMEuwkg6Hs92fakpy3DTQq9Do6wsKZjEkftwyWAkpioqkqYd5GvLdrfOY
         5rSzpXgBhVdzGZVdGjDg9kTsPB7MNLon+jJMTYee+bHr/AAJC9jD1a81N6W3XbPSScNj
         HbbQYKgbcDQIRS0opWcvq9KR2yvxNe8BP94msDs7VM5R9VtmUBa8WJBmrWKy4roVdMDm
         vT2EDY3l6JbLHgdO1Ham0bvrahOFwwkK1eiUCU7uhZAzCAB8EjvmdoDfEBL/9RN9XcEV
         /Cskg7J2vw377MXMaeHgxD797brR/jM1Ph9a4iHfmBZcK1XNJLNzUIUpstxZULTjjACt
         dKcg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@nvidia.com header.s=n1 header.b=YuSzEmID;
       spf=pass (google.com: domain of jckuo@nvidia.com designates 216.228.121.143 as permitted sender) smtp.mailfrom=jckuo@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
Received: from hqemgate14.nvidia.com (hqemgate14.nvidia.com. [216.228.121.143])
        by mx.google.com with ESMTPS id z1si1571743ybp.29.2019.07.01.23.56.29
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Jul 2019 23:56:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of jckuo@nvidia.com designates 216.228.121.143 as permitted sender) client-ip=216.228.121.143;
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
	id <B5d1b00190001>; Mon, 01 Jul 2019 23:56:25 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
  by hqpgpgate101.nvidia.com (PGP Universal service);
  Mon, 01 Jul 2019 23:56:28 -0700
X-PGP-Universal: processed;
	by hqpgpgate101.nvidia.com on Mon, 01 Jul 2019 23:56:28 -0700
Received: from [10.19.108.127] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 2 Jul
 2019 06:56:27 +0000
Subject: [usb-storage] Re: [PATCH] usb: storage: skip only when uas driver is loaded
From: JC Kuo <jckuo@nvidia.com>
To: Greg KH <gregkh@linuxfoundation.org>
CC: <linux-usb@vger.kernel.org>, <stern@rowland.harvard.edu>,
	<usb-storage@lists.one-eyed-alien.net>, <oneukum@suse.com>
References: <20190701084848.32502-1-jckuo@nvidia.com>
 <20190701085248.GA28681@kroah.com>
 <8e8e8703-8620-b625-4917-bbb8d999caa4@nvidia.com>
 <20190702044249.GA694@kroah.com>
 <f6ed2505-5da9-c217-a052-a19d197c5c8e@nvidia.com>
Message-ID: <f43e7ecf-64d5-20d2-0461-85a55fa28a33@nvidia.com>
Date: Tue, 2 Jul 2019 14:56:25 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <f6ed2505-5da9-c217-a052-a19d197c5c8e@nvidia.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL101.nvidia.com (172.20.187.10) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: jckuo@nvidia.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@nvidia.com header.s=n1 header.b=YuSzEmID;       spf=pass
 (google.com: domain of jckuo@nvidia.com designates 216.228.121.143 as
 permitted sender) smtp.mailfrom=jckuo@nvidia.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=nvidia.com
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

On 7/2/19 1:29 PM, JC Kuo wrote:
> On 7/2/19 12:42 PM, Greg KH wrote:
>> On Tue, Jul 02, 2019 at 10:36:59AM +0800, JC Kuo wrote:
>>> On 7/1/19 4:52 PM, Greg KH wrote:
>>>> On Mon, Jul 01, 2019 at 04:48:48PM +0800, JC Kuo wrote:
>>>>> When usb-storage driver detects a UAS capable device, it ignores the
>>>>> device if CONFIG_USB_UAS is enabled. usb-storage driver assumes uas
>>>>> driver certainly will be loaded. However, it's possible that uas
>>>>> driver will not be loaded, for example, uas kernel module is not
>>>>> installed properly or it is in modprobe blacklist.
>>>>>
>>>>> In case of uas driver not being loaded, the UAS capable device will
>>>>> not fallback to work at Bulk-only-transfer mode. The device just
>>>>> disappears without any notification to user/userspace.
>>>>>
>>>>> This commit changes usb-storage driver to skip UAS capable device
>>>>> only when uas driver is already loaded to make sure the device will
>>>>> at least work with Bulk protocol.
>>>>
>>>> But what happens if the driver is loaded afterward, because 'modprobe'
>>>> was called by the driver core (or it should have been, because this is a
>>>> device that supports that protocol)?
>>> If uas driver is loaded after usb-storage driver probed the device,
>>> the device will still work with Bulk-only protocol, though it can't
>>> make uses of streams.
>>
>> Which is not a good thing, and is what the original code was there to
>> prevent happening.
>>
>>>> I think you just broke working systems :(
>>>>
>>>> Why wouldn't the UAS driver get loaded automatically if it is configured
>>>> in the system as it is today?
>>> An user might want to completely disable uas for some reason so he/she
>>> adds "blacklist uas" to modprobe conf file. I think in case of this,
>>> usb-storage driver has to enable this device with the legacy Bulk-only
>>> protocol instead of ignoring the device.
>>
>> Why would they want to do that?  Where are people doing this in ways
>> that breaks their systems?
> 
> I think that could be because user sees issues with UAS but he/she is not
> aware of the quirks parameter that usb-storage module offers to disable UAS
> for any particular device.
> 
> IMHO, blacklisting uas driver should not break the system because the UAS
> devices are supposed to be working fine with legacy Bulk-only protocol if
> system software doesn't have UAS support.
> 
>>
>>> As an alternative to this patch, I thought I could get uas driver
>>> loaded before usb-storage driver so I tried moving the functions in
>>> drivers/usb/storage/uas-detect.h into uas.c and letting usb-storage
>>> links uas_use_uas_driver() of uas.ko. However, that didn't work
>>> because uas driver actually depends on usb-storage driver for
>>> usb_stor_adjust_quirks(). There will be a recursive dependency.
>>>
>>> Please let me know if there is better approach to avoid the issue.
>>
>> If users blacklist the uas driver, that's their choice and they should
>> rebuild their kernel :)
>>
>> Or better yet, talk to us to get the issue fixed for why they would want
>> to blacklist such a driver.
> 
> Agree. :)
> 
>>
>> As it is, this patch is not acceptable.
> 
> Understood. Thanks for the comments. I will drop this patch.
> 
> Thanks,
> JC
> 
>>
>> thanks,
>>
>> greg k-h
>>

Hi Greg,
Since blacklisting uas kernel module is not a good idea and could break UAS 
capable storage functionality, do we consider forbidding making uas driver
as module? That means to make CONFIG_USB_UAS a bool option.

Thanks,
JC

-----------------------------------------------------------------------------------
This email message is for the sole use of the intended recipient(s) and may contain
confidential information.  Any unauthorized review, use, disclosure or distribution
is prohibited.  If you are not the intended recipient, please contact the sender by
reply email and destroy all copies of the original message.
-----------------------------------------------------------------------------------

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/f43e7ecf-64d5-20d2-0461-85a55fa28a33%40nvidia.com.
