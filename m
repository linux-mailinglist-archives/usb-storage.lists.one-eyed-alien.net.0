Return-Path: <usb-storage+bncBCF37CNFREKRBLWX5PUAKGQESBR4WTI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yw1-xc45.google.com (mail-yw1-xc45.google.com [IPv6:2607:f8b0:4864:20::c45])
	by mail.lfdr.de (Postfix) with ESMTPS id E09C45C8C9
	for <lists+usb-storage@lfdr.de>; Tue,  2 Jul 2019 07:29:19 +0200 (CEST)
Received: by mail-yw1-xc45.google.com with SMTP id p18sf1610465ywe.17
        for <lists+usb-storage@lfdr.de>; Mon, 01 Jul 2019 22:29:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562045359; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q7IOzt1atFx7ELb59uG29HY7iM8588+QsIcDikUb1CW3+h2sfSvT39IFI1QmnC93JV
         RSt2e8ws9XZCGj/WUBlipUu835jxKA3dHjEVIWPBd7M6/Q9dPeB3R2vao7nq3wLL3iaM
         gBYKaw7HaSZT1BSpbaHCbNySpmXpcfCzsBZgMeyN1zvdDzoz8x8ZuFCDUYxBO2S7WtwO
         jls0neafJYCI1r6zG/dcmhB/E7ArLlbH/KvCuGU67mKp3R4ZmYr7N2TZEf+Bm82HOjFB
         PY3/ftxaAqDqSwfCjmafIqMIPdBRjS5ZbLnkSG8JB2WTuDwplP0xGgQGx5hm0h0s9cmD
         Tjiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=etHvqTfSu7mNfhye2ABhse53gKAwwbME6IJjJQnWht0=;
        b=n4HVNCwCqVdVCrrpLLSTh6N6A/DpdCoa575PCgjIrfMvUuh/SrnyatD16md8ulXyxy
         Nm8AWIuhqUHIcFK//BHpVgFZJZ6RMQagEYXCy1NdUjBI1v7B085c2dzzxTAuYPesyANe
         CWj6ZUNY0nB7PNZgRbUG6SGE23+opW4qzzM9u5FsVlEHsMGJ9BS0i4lIoLwcM6gYA1CF
         dfIMjRD7okgmDfAglo39KjhbNqL2YpC4Yt0OjbWRYrMPTjMDBFrUSKufee2yrnvtKuzz
         2c+5Vr65lh+BjWAdHE4Bw8vWclgxObHF95kNHw7wdMDk49xDBbBsF1aGGSZG5GDhYxwz
         Z4Vw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@nvidia.com header.s=n1 header.b=BSjsVnTY;
       spf=pass (google.com: domain of jckuo@nvidia.com designates 216.228.121.65 as permitted sender) smtp.mailfrom=jckuo@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=etHvqTfSu7mNfhye2ABhse53gKAwwbME6IJjJQnWht0=;
        b=YrpJo9mi5RivDLYR/hlqwrmYDcXMKZ2mlNkbkR64kxTm5UjWnUzkioq09mqgoka0HJ
         KObcLLCZ5c24TbOnITnrj3RWBWHSvd++Bs2toupmPcE6rewLeEFwjxNxxCbyNI78l6//
         jIqnaE+QJ/xLPb67OWfEQ+F+NZEVrd9VxhDpE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=etHvqTfSu7mNfhye2ABhse53gKAwwbME6IJjJQnWht0=;
        b=M+8X5T4obxcWk1bGMg8XNXtmida2NAqjsACyrq5d+HFs3ETVD15bXAn0f96uTPuW5H
         h+SyDa6xsJZ7s8xQgVf+H1vkxTTQ8IygV3IhgvR8cF2p8dGiLAa6DQqWRqPbP2kkIB76
         wU7S9HUxNqyV3gEHef39+JYy8xK2SCXpj7Nf9Ludpoi3LG/8M6S5EXbKkaAXSpKI7Pep
         LN5bi8pJgX5lGz42dTp51mtXtIe0fPA3ozEQjnt8pgBu+Y6dWcOxK8bJ0yOf66pywh56
         CQVUsv2UJb7YU0DS9015JnNgcMli6Wodw5VSQzgt3nWcmVsOnhscWpZ95Dr6Rh5M3CeF
         cFTA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWVuy/mARGupdwc01da6KpJQOg2U+uEfvwplEyDWOEv9V+/0FvS
	ySEfAy6SmJJginKuEdPDVcGsdA==
X-Google-Smtp-Source: APXvYqyDxVs+dxB2m2bKlkjoEb1ibkD72+lUjwuYKBLuCVkA2ZPvH4OHDfw+QAC3twzKtGJGWhTqPA==
X-Received: by 2002:a81:9a8a:: with SMTP id r132mr17208468ywg.126.1562045358914;
        Mon, 01 Jul 2019 22:29:18 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:9d12:: with SMTP id i18ls556223ybp.8.gmail; Mon, 01 Jul
 2019 22:29:18 -0700 (PDT)
X-Received: by 2002:a25:abb3:: with SMTP id v48mr5117185ybi.506.1562045358586;
        Mon, 01 Jul 2019 22:29:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562045358; cv=none;
        d=google.com; s=arc-20160816;
        b=SC2c0LHfGQclkfTchW6PScTtl/35L3v5k83AMcba84QWeaTplWxkZRPP7SkoIOKVWC
         b3vlm8W2CyVDrqOpNjOxCzhqrzKnc4F+zrhE8pyu6QiDrFTiDcjStx3UTFGZ9EytWbLd
         6RK933m1/lvCO5gFmV2bwTa8AaUdXVlSIE7tRbzSQ1a92lRkJWHxFzv3PasgvznVQtHf
         SVs6l3uYEKVpEkMqlSIK70yljnQFJ6RS1cA6qJjxEgc+OZF3OqbIMxab7gFGYMBL5Tf8
         sc9GO7NXbTe/589jFKMp3YGbFIou7u0+O7puggtyNctb114FaC4j5XWByNlRyJzextvE
         0b5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=dkim-signature:content-transfer-encoding:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject;
        bh=cGO5oVOl6Tcoyjq+IeJlWiq2/aXzxMPj3o/BESBGJtk=;
        b=b8KVNFjX+LSM0qPcToPsXe/v917lMkcNhV2/vF12dQvciJgcnybtV8AOnTSMtYotVa
         +wsx//zPouVXdE+JyaHaDWl/weazy27K9Ovikt/QORdLA4UXllCQ3NZcgrbuVTSw5aYZ
         M29feiIy58uQ2z2Kn2ME0jYGfcdo58G56gxXci3fccng+rSNNjBWLpWj6QbwpNYAzU3B
         m16Do8W5zn0gUIEV57n6IXlFujmXsnbB6RzHQVRRsnBok0IsqXXMxU1OpoNMAKicCYrZ
         wT9+GTPsrluqOpf+HG+NaNke8sKWX6qsQg1fXFqKX3lcJm7+1WPcFgHBpuI8D0JbFYQt
         HJxw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@nvidia.com header.s=n1 header.b=BSjsVnTY;
       spf=pass (google.com: domain of jckuo@nvidia.com designates 216.228.121.65 as permitted sender) smtp.mailfrom=jckuo@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
Received: from hqemgate16.nvidia.com (hqemgate16.nvidia.com. [216.228.121.65])
        by mx.google.com with ESMTPS id a8si4801817ywa.181.2019.07.01.22.29.18
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Jul 2019 22:29:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of jckuo@nvidia.com designates 216.228.121.65 as permitted sender) client-ip=216.228.121.65;
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
	id <B5d1aebac0000>; Mon, 01 Jul 2019 22:29:16 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
  by hqpgpgate101.nvidia.com (PGP Universal service);
  Mon, 01 Jul 2019 22:29:17 -0700
X-PGP-Universal: processed;
	by hqpgpgate101.nvidia.com on Mon, 01 Jul 2019 22:29:17 -0700
Received: from [10.19.108.127] (172.20.13.39) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 2 Jul
 2019 05:29:16 +0000
Subject: [usb-storage] Re: [PATCH] usb: storage: skip only when uas driver is loaded
To: Greg KH <gregkh@linuxfoundation.org>
CC: <linux-usb@vger.kernel.org>, <stern@rowland.harvard.edu>,
	<usb-storage@lists.one-eyed-alien.net>, <oneukum@suse.com>
References: <20190701084848.32502-1-jckuo@nvidia.com>
 <20190701085248.GA28681@kroah.com>
 <8e8e8703-8620-b625-4917-bbb8d999caa4@nvidia.com>
 <20190702044249.GA694@kroah.com>
From: JC Kuo <jckuo@nvidia.com>
Message-ID: <f6ed2505-5da9-c217-a052-a19d197c5c8e@nvidia.com>
Date: Tue, 2 Jul 2019 13:29:14 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190702044249.GA694@kroah.com>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL106.nvidia.com (172.18.146.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: jckuo@nvidia.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@nvidia.com header.s=n1 header.b=BSjsVnTY;       spf=pass
 (google.com: domain of jckuo@nvidia.com designates 216.228.121.65 as
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

On 7/2/19 12:42 PM, Greg KH wrote:
> On Tue, Jul 02, 2019 at 10:36:59AM +0800, JC Kuo wrote:
>> On 7/1/19 4:52 PM, Greg KH wrote:
>>> On Mon, Jul 01, 2019 at 04:48:48PM +0800, JC Kuo wrote:
>>>> When usb-storage driver detects a UAS capable device, it ignores the
>>>> device if CONFIG_USB_UAS is enabled. usb-storage driver assumes uas
>>>> driver certainly will be loaded. However, it's possible that uas
>>>> driver will not be loaded, for example, uas kernel module is not
>>>> installed properly or it is in modprobe blacklist.
>>>>
>>>> In case of uas driver not being loaded, the UAS capable device will
>>>> not fallback to work at Bulk-only-transfer mode. The device just
>>>> disappears without any notification to user/userspace.
>>>>
>>>> This commit changes usb-storage driver to skip UAS capable device
>>>> only when uas driver is already loaded to make sure the device will
>>>> at least work with Bulk protocol.
>>>
>>> But what happens if the driver is loaded afterward, because 'modprobe'
>>> was called by the driver core (or it should have been, because this is a
>>> device that supports that protocol)?
>> If uas driver is loaded after usb-storage driver probed the device,
>> the device will still work with Bulk-only protocol, though it can't
>> make uses of streams.
> 
> Which is not a good thing, and is what the original code was there to
> prevent happening.
> 
>>> I think you just broke working systems :(
>>>
>>> Why wouldn't the UAS driver get loaded automatically if it is configured
>>> in the system as it is today?
>> An user might want to completely disable uas for some reason so he/she
>> adds "blacklist uas" to modprobe conf file. I think in case of this,
>> usb-storage driver has to enable this device with the legacy Bulk-only
>> protocol instead of ignoring the device.
> 
> Why would they want to do that?  Where are people doing this in ways
> that breaks their systems?

I think that could be because user sees issues with UAS but he/she is not
aware of the quirks parameter that usb-storage module offers to disable UAS
for any particular device.

IMHO, blacklisting uas driver should not break the system because the UAS
devices are supposed to be working fine with legacy Bulk-only protocol if
system software doesn't have UAS support.

> 
>> As an alternative to this patch, I thought I could get uas driver
>> loaded before usb-storage driver so I tried moving the functions in
>> drivers/usb/storage/uas-detect.h into uas.c and letting usb-storage
>> links uas_use_uas_driver() of uas.ko. However, that didn't work
>> because uas driver actually depends on usb-storage driver for
>> usb_stor_adjust_quirks(). There will be a recursive dependency.
>>
>> Please let me know if there is better approach to avoid the issue.
> 
> If users blacklist the uas driver, that's their choice and they should
> rebuild their kernel :)
> 
> Or better yet, talk to us to get the issue fixed for why they would want
> to blacklist such a driver.

Agree. :)

> 
> As it is, this patch is not acceptable.

Understood. Thanks for the comments. I will drop this patch.

Thanks,
JC

> 
> thanks,
> 
> greg k-h
> 

-----------------------------------------------------------------------------------
This email message is for the sole use of the intended recipient(s) and may contain
confidential information.  Any unauthorized review, use, disclosure or distribution
is prohibited.  If you are not the intended recipient, please contact the sender by
reply email and destroy all copies of the original message.
-----------------------------------------------------------------------------------

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/f6ed2505-5da9-c217-a052-a19d197c5c8e%40nvidia.com.
