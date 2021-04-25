Return-Path: <usb-storage+bncBDRZXY4CYYORBN7IS2CAMGQEAD5OFLA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x545.google.com (mail-ed1-x545.google.com [IPv6:2a00:1450:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EBC336A8D2
	for <lists+usb-storage@lfdr.de>; Sun, 25 Apr 2021 20:26:00 +0200 (CEST)
Received: by mail-ed1-x545.google.com with SMTP id w14-20020aa7da4e0000b02903834aeed684sf19981482eds.13
        for <lists+usb-storage@lfdr.de>; Sun, 25 Apr 2021 11:26:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619375160; cv=pass;
        d=google.com; s=arc-20160816;
        b=EF1ea3PbsSNJ34ROZblnHpLTG0eZMEmBQ+XLwicmmqXx6O2xr8UESRPXmaVOXFc4NY
         ft+V2QH8NwHmeERpk6COnUMilvzBOHCfdQtdUziykXpmSOSz4DJSpoii9k1Ttcl2/+Lj
         NJxno80NwLb3uEfi9LST+s3vbxrupw7va7zMTKZp3ZDb4hD4VrdbgUq9wXtVT5/BRPyL
         MTu7EzKL4TMp/1Km4yg4Hh2Wnbk4873872cug4JJw13y/OvEawSKIOXqhijiAaHIL6qP
         5yqimw/PDE28HFMevHuCfMJx8I9/bsSlmx2GEcoHk1ipi8A3n7vCZ4gUBWzVRz6Z14uB
         Y4IQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=lraluAPCH/CDxvtmo5oEWSPJW458paa3pxJ2Hoas1c0=;
        b=stwYyu3IO0ggnd3JATYWbyBFQr02yqp6sAc1ThRcHsoF6X6CY6954DngJFzT+z5jrK
         k2MwZ5fvkki72GCkNDPwt+Y8P/7+AFNAaOiqOG7cdgcx8boK4xZ24sf14RhdFzd7XOer
         ZqJYxlCmT/1JnQDY4JO9JjBhXeQ7nf+0TIos0WlvPH/G8hsPrrVfBhlU3zKYKZleXyKu
         GJBuNmhos7Lna4+oUL3VJWzJjJeXcB0RtWKakViJddSW6APv+3Wa2WlgE1PfVdRdfWI0
         3aIlSoWMj82QX23Hy4IvXdfD6OoC92jaPHQxU+uVQe3yvkL/a65s8obEl2G0rO+FoE67
         +VDg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=SYKxDAmQ;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lraluAPCH/CDxvtmo5oEWSPJW458paa3pxJ2Hoas1c0=;
        b=KGkY2mvJJZGl8/7LBigYZAEpWpHD0ZgyPjMz2NONvfeVQhyIkr4HNYJtLvDci5CQJM
         kHH0GrH23RRQVkrUpSfnWBXTyBCiSYbtdlXs5zmCjhM5LCtAx4x6oYEhvYhH8Nk3a2o7
         EeAp41eXRSYDUlnLY5rvXSoIavzcU3lJEwRqg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lraluAPCH/CDxvtmo5oEWSPJW458paa3pxJ2Hoas1c0=;
        b=Ci4JP1Pa5NiTo5/6w9X2Qj/jtwTQmIx7xOP/eUKQzJ4K52Tjjt6UtWXfAont2vijzC
         MC7S2P3I+WzlTy0h7R+KZeAyHgJLz8xaBLm9YiMHyLfrlYkpJ7sEcJWHuzXG0J+JUBk5
         NXMjoI0VBtgv2ygwkEnJ/3gKJxKqKbfzY7/H7uTqDLBGwkgtFI7gkfBjlvrW9HqgTOKR
         QCA18EerU/nGyfMx7wa1QqIJZ8+Zeo50vMVLNpIdscN2MS2BA4l+xl8tYZiLOXTROAnw
         AvgXCJozQP0DtALOHAVn9e3XS/T4hjGKFps3tVRYarDlK9FbK7S274ef1uKgApijxYQ2
         H4Xg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531QZFusAykdhAT1VCNQXPqkktWqB8DYyKMDJC+EaHd19snE3GT0
	Cm/xuuUwavu6pS3QdCsva/PphQ==
X-Google-Smtp-Source: ABdhPJzqt33Gy/izhfB6t4V/+LLuTouoZYjIIVY7i4OEpcJIP3N+lsMecjINl0dcqmIfk7R3zfk4ow==
X-Received: by 2002:a17:907:7690:: with SMTP id jv16mr14851606ejc.529.1619375159942;
        Sun, 25 Apr 2021 11:25:59 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:907:97c9:: with SMTP id js9ls6711587ejc.10.gmail; Sun,
 25 Apr 2021 11:25:58 -0700 (PDT)
X-Received: by 2002:a17:906:a006:: with SMTP id p6mr15044152ejy.350.1619375158747;
        Sun, 25 Apr 2021 11:25:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619375158; cv=none;
        d=google.com; s=arc-20160816;
        b=Wo+rDfe7qiHAVtMavcbd+ebgHTv90pHQZLyj9yY/YOwe+D22zgMHITz3aRGCgaTw6l
         LzJgv4tMoDDEpDjmQiXu9wVTXXKdPPf5OPL9GwmPLgcRu93m1hkxHmfsax7hh4CPb6pk
         M671u7J2nwxfsdql5Yel+72hHO8i7PKGWXBeRCiDGIdC4CMuzdoo+tx82rlZ/vLykXoT
         PXD8LsHiSQ9FMHC0DMSfZNI+UvE1jj6agcLmw4WCgzvX5NOJRDsvyMQDq4udPj9CHYAe
         ZRAsELKJE0uvGi5kHdYn84foty+lwi3Bk6vvVwW4ITx4WYB0LJOYpDCOoFUZc7eKyicR
         xVKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=0n/ELlk1c7TVO+7MTcG2m6WTPPu1ypKyfy91z4Tww9A=;
        b=kU63HyEh6SX534qhW7Eqn05ZAr5viHbacDpWdJi3E7JpOTn1nlko7y0a0MvdY0LS3p
         d/eL0oEZwQ48BWtpWQr2L0XBuJOTFeVTt1DNl+LHKJSMnRL6Z1ExX8BIi1PuMNe7Opz/
         coTKkHHhuzNqrx8eaZ5ZE8gKnJFIXbfF/VsHuSWpOkYOJhl1kk55Gy/l56Ae9fAuAqEN
         FIKsqNeAAs0Jarjvt+1k1EPw2HOLfgV8rTZiwFdjSq7ax3nVkta1JtCShOIuUF79ISvY
         tuZ8sL7vVGnKP51EIofObBroG1o5Ffx9G4cI67rRKDogVeEu1qCfSrmtLgIFdXaphHzE
         K6Qw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=SYKxDAmQ;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by mx.google.com with ESMTPS id vr6si10957267ejb.739.2021.04.25.11.25.58
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Apr 2021 11:25:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-219-3AXaOwcEMqSN8xUvBq1YDQ-1; Sun, 25 Apr 2021 14:25:55 -0400
X-MC-Unique: 3AXaOwcEMqSN8xUvBq1YDQ-1
Received: by mail-ed1-f69.google.com with SMTP id f1-20020a0564021941b02903850806bb32so15802970edz.9
        for <usb-storage@lists.one-eyed-alien.net>; Sun, 25 Apr 2021 11:25:55 -0700 (PDT)
X-Received: by 2002:a05:6402:cb3:: with SMTP id cn19mr16827210edb.206.1619375154403;
        Sun, 25 Apr 2021 11:25:54 -0700 (PDT)
X-Received: by 2002:a05:6402:cb3:: with SMTP id cn19mr16827194edb.206.1619375154244;
        Sun, 25 Apr 2021 11:25:54 -0700 (PDT)
Received: from x1.localdomain (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
        by smtp.gmail.com with ESMTPSA id l3sm12601555edr.2.2021.04.25.11.25.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Apr 2021 11:25:53 -0700 (PDT)
Subject: [usb-storage] Re: [PATCH] unbreak all modern Seagate ATA pass-through
 for SMART
To: Rene Rebe <rene@exactcode.com>, stern@rowland.harvard.edu
Cc: gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net
References: <YIVZ2l9qUfkcyPpG@kroah.com>
 <20210425.141536.1295354861910527121.rene@exactcode.com>
 <20210425144531.GA336783@rowland.harvard.edu>
 <20210425.170224.894337589208455353.rene@exactcode.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <0e698ca2-06e6-6ee7-1c39-a4352207a40e@redhat.com>
Date: Sun, 25 Apr 2021 20:25:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210425.170224.894337589208455353.rene@exactcode.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: hdegoede@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=SYKxDAmQ;
       spf=pass (google.com: domain of hdegoede@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

Hi Rene,

On 4/25/21 5:02 PM, Rene Rebe wrote:
> Alan Stern <stern@rowland.harvard.edu> wrote:
> 
>> On Sun, Apr 25, 2021 at 02:15:36PM +0200, Rene Rebe wrote:
>>> From: Greg KH <gregkh@linuxfoundation.org>
>>> Subject: Re: [PATCH] unbreak all modern Seagate ATA pass-through for SMART
>>> Date: Sun, 25 Apr 2021 14:00:26 +0200
>>>
>>>>> I would expect that more modern devices to work. Vendors usually
>>>>> linearly allocate their product ids for new devices, and we could
>>>>> allow list product ids higher than this Seven to unbreak more modern
>>>>> devices by default and limit the amount of device quirks needed?
>>>>
>>>> Vendors do not allocate device ids that way at all, as there is no
>>>> requirement to do so.  I know of many vendors that seemingly use random
>>>> values from their product id space, so there is no guarantee that this
>>>> will work, sorry.
>>>
>>> I did not say it is a requirement, just that they usually do speaking
>>> of just this Seagate case. What is wrong with using that to
>>> potentially significantly cut down the quirk list?
>>
>> You didn't read commit 92335ad9e895, did you?  It lists a large number 
>> of Seagate devices that don't work with ATA pass-through, and three of 
>> them have product IDs that are larger than 0xab03.
>>
>> Please check the facts before guessing about things that will cause 
>> problems for other people.
> 
> I really don't appreciate the unfriendly tone on the linux kernel
> mailing lists (which is why for 20 years I never felt like contributing
> here mo),

I'm sorry to hear that the admittently sometimes unfriendly tone
on the kernel mailinglists have stopped you from contributing.

Note that I do believe that things have gotten better recently.

As for this email-thread, I don't really see anything wrong with
Alan's reply here. You have been quite argumentative in this entire
thread about how things would be much better if they are done your
way.

I cannot speak for the others but I certainly have gotten annoyed by
the tone of your emails so far, I apologize if any of that annoyance
has bleed through in the tone of my emails. I do strive to always
stay professional (but as all of us I'm only human).

<snip>

>>>> What is wrong with just allowing specific devices that you have tested
>>>> will work, to the list instead?  That's the safest way to handle this.
>>>
>>> The problem is that out of the box it does not work for users, and
>>> normal users do not dive into the kernel code to find out and simply
>>> think their devices sucks. Even I for years thought the drive sucks,
>>> before I took a closer look. If you long term want more new devices in
>>> an allow list than the previous quirk list included (9 or 10 does not
>>> sound that many to me), ... whatever you prefer ,-) I would rather
>>> have 10 quirk disable list than potential many more white listed the
>>> next years to come. Maybe we shoudl simply restore the prevoius
>>> quirks.
>>
>> That's a possibility, and in the future we may do it.  But probably not 
>> until the enable list grows to a comparable length.
> 
> Yeah, why future proof it now, ...

Perhaps look in the mirror and start with improving the tone of your
own emails ?

> which is exactly what brought us
> here from the original regression. The enable list will likely not
> grow quickly as most users will just expect a broken device hw/
> firmware and not bother looking into it and instead live w/o SMART.

Right because people can happily live without SMART most users won't
even know they're missing some optional functionality. Non working disks
OTOH will lead to bug reports, bug reports of which Alan, Greg and I
will be on the receiving end.

Moreover the kernel has a very strong no regressions policy, and what
you suggest would almost certainly break stuff for some of our users,
so we can simply not do as you suggest.

I notice that you call the lack of SMART support on your own disk
a regression, but that has never worked with any recent kernel
(due to the discussed code which has been present since 2017) so
from the no-regressions kernel policy pov that is not a regression.

Regards,

Hans

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/0e698ca2-06e6-6ee7-1c39-a4352207a40e%40redhat.com.
