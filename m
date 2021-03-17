Return-Path: <usb-storage+bncBDRZXY4CYYORBZ7IY6BAMGQEODMAONQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x546.google.com (mail-ed1-x546.google.com [IPv6:2a00:1450:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id C8C3F33F022
	for <lists+usb-storage@lfdr.de>; Wed, 17 Mar 2021 13:21:59 +0100 (CET)
Received: by mail-ed1-x546.google.com with SMTP id r19sf18823617edv.3
        for <lists+usb-storage@lfdr.de>; Wed, 17 Mar 2021 05:21:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615983719; cv=pass;
        d=google.com; s=arc-20160816;
        b=LKNCBLE3APMFBx2I9u/J/FucKONItKTSDHHtgNLlRZECBJTVc476bhgX1dRdh4wDmK
         KVFY8CIP8UmM+51MK93mO9hAldgNL7XnaJdii0IuqcWlxNw82N6LQlbNSgygw0p97Yud
         hn2qYr0wpvpw4xSjln3YIlxyVCyDfiF9ex/kh3vERQvU+fOTBn/sCSqAK/eYfUB3qgrg
         oIOpWVRlMOZB9iUzg22xdME9gimtgDvSk4GvTZ5W6Z0Xz+itDKW2jp0JmjfCyqHa13no
         0ijxF1wHh9Puz+HGsQkys+j2maZ8B6WcYIemof2v2044LJpTsAcf/DEqDx1hbSQuAuU7
         6nwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=N5tIs6dBmZf/FdBS+E95e6P7WJnFxZrcjT9PLXU6w/Y=;
        b=Lkidy8zmZcnKQYsf+5qRI6sEEoStesT698HSJ/5WSdUqfcjL/jVvnKrWeLVrN49iqd
         O541ppBwQA2sXUEQ22an5dEoUnK31Ho/hV9GS6e1tbxJRFO8qW9TB4vE0+QBDY1hPH2p
         bmNotzezJ+uhYg0wsxtjPzxKxiRvnlVHhZ68kfn30uoz8HN45sPLZHFsgw9WK6GZc7zz
         N3kij9FejqfJqf6oBUkscdFHX79UN1JbnC+DESmXn96+gbfFoaLhTMujm8Eqg8U5Moxv
         6gYuvEIMlTLltY0zlwQ3LpzXPXTXUnWS9FcbjNekgHDQmObSfl536fAytg/Sjpkz4aL0
         bv0Q==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=afZmNyve;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=N5tIs6dBmZf/FdBS+E95e6P7WJnFxZrcjT9PLXU6w/Y=;
        b=Fzy/VGXau5zfq7W/2JGQ4lOS6I2h6zKdusEQcYZMF5odxw4ZyMqKXTEwedDaBtJ3jm
         iH1V1SeBYddDcqFycPH41AWFuidAxk8aTpuCJ/EAH2FpgTwPWD3HVVFROHvFMcQTeas3
         PF9lHNk6QMQKWt4QQg2LF+tkLAAuNIX300bQw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=N5tIs6dBmZf/FdBS+E95e6P7WJnFxZrcjT9PLXU6w/Y=;
        b=jCGic8wetXCyJd+/w2mM5TueLq5nuwTniG+LOZBxSe3QFewLzcqfkcvkmvPWvVXn9r
         1eccNbkU3hNY1peoCb62QzeT2UODnKGJyiN7DzvT5Ajyjb0SDCQVeicA4AXO5GCKR67m
         5Ob4zIPrOjaf6E8DKs6dPYiTO2SFs51Fe2U7Mekwi345/4I/UGPu9+j+6a7SW8739acY
         UDgoJCiKtJCqaCksOkJK+d/kwcMje7NRq9MQr4qusl1R3PkCyaN4hvTbfFCBcfW0j6LU
         +LSbcfc5Qq/OLjAMWaPj7K9lFxLOnR2x+16zaCOcoHk3wBb8zfgkYV36+sof+mvK6FLG
         l0bw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533hetuyl8UnuHuvUG7GpNWhVF+D3SoXrEGiAvHaLsdktR3twPcY
	b8q6LydYj0XVHEAYCb9c2vfcMw==
X-Google-Smtp-Source: ABdhPJxLwfvRjjCoxc0wiikmTbZs1kq2iAGVlXc5DMzFLVNoDd7uCdzReFTvCZHkoxBX1uhFZWcKvA==
X-Received: by 2002:a05:6402:110b:: with SMTP id u11mr43070208edv.356.1615983719603;
        Wed, 17 Mar 2021 05:21:59 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:906:41a:: with SMTP id d26ls10279129eja.3.gmail; Wed, 17
 Mar 2021 05:21:58 -0700 (PDT)
X-Received: by 2002:a17:907:7651:: with SMTP id kj17mr35328568ejc.127.1615983718111;
        Wed, 17 Mar 2021 05:21:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615983718; cv=none;
        d=google.com; s=arc-20160816;
        b=rgYxd2svd9FvN2/u+ZuLh+Pi7QxNLekR3rL6qugAXxV1m7VoYw0/J6kxpEPFSCZEDr
         0l8+tLbrtfXts08lw0ApUFaR/9qOQBAfDpLfqDNvunMx+kSYDrbDpElV99L6QS6ZNpja
         94Q1iuGw6CfCFXO2AncyU/JiWOhycM2ItqLXEE6hZjJplpFt19t3sB3B739rPO45hpZb
         ibX+wpPdeVqF+wK9oJTql4CJIuwaWjFtigTNYnIwbKckOrzR+/37zcy0VdPT9ZpUTMaK
         WiAcmJymcCtvZdNU/7FVP74yfZOVCteoFx5NxDe9wQKpi04KDipXqfZXlgVe0Vktziz8
         dfkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=vjJrQMCZhf6lIYOOx7mQT2HaccqBnUsbGqx4m7WSX14=;
        b=hVkWIgML8yeXa5hbg5T6v1If7raRRCxlfAUQ9SI4txfDvFJGSqeaMeCAFPdlCTgwy2
         0uOqj4JhTjrfJS7DJRep6na1F0J/nubbN0NEhnGbcykVrFFNVq/eNjEesI9oAXTESiv4
         Y2kuAC8v1EA5GaicYVuououvDJGevZfrzkGWO+WgXKh0SOrQUYxKepDDozfyLIzUzGpi
         fbWW9AZJmjsJWB8PrytSw6tk84Il4TMq4bmartJHXF1F9n3cGnp940tKkuybUCVND9xd
         D3CarfR9hYwN0ZORxI+ZQgioFddn5sLO/nT7kW6uNG/hX+En+LIUgMFqqYUIqA9Da1g9
         y9QQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=afZmNyve;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by mx.google.com with ESMTPS id v21si1865904ejg.244.2021.03.17.05.21.57
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Mar 2021 05:21:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of hdegoede@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-290-MibT7Y9tP4ecrd3S87Fvwg-1; Wed, 17 Mar 2021 08:21:54 -0400
X-MC-Unique: MibT7Y9tP4ecrd3S87Fvwg-1
Received: by mail-ej1-f72.google.com with SMTP id e7so7194115ejx.5
        for <usb-storage@lists.one-eyed-alien.net>; Wed, 17 Mar 2021 05:21:52 -0700 (PDT)
X-Received: by 2002:a17:906:78d:: with SMTP id l13mr34141194ejc.97.1615983711931;
        Wed, 17 Mar 2021 05:21:51 -0700 (PDT)
X-Received: by 2002:a17:906:78d:: with SMTP id l13mr34141171ejc.97.1615983711729;
        Wed, 17 Mar 2021 05:21:51 -0700 (PDT)
Received: from x1.localdomain (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
        by smtp.gmail.com with ESMTPSA id g20sm12244786edb.7.2021.03.17.05.21.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Mar 2021 05:21:51 -0700 (PDT)
Subject: Re: [systemd-devel] [usb-storage] Re: Amazon Kindle disconnect after
 Synchronize Cache
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Matthias Schwarzott <zzam@gentoo.org>,
 usb-storage@lists.one-eyed-alien.net, linux-usb@vger.kernel.org,
 systemd-devel@lists.freedesktop.org, hirofumi@mail.parknet.co.jp
References: <20210307165856.GA104554@rowland.harvard.edu>
 <268e646f-d4ea-3190-f1b9-8e69bfc1b019@gentoo.org>
 <20210309155046.GA176674@rowland.harvard.edu>
 <dfd2b281-3beb-9869-37b6-8bd48a6cf40f@gentoo.org>
 <20210310214648.GA236329@rowland.harvard.edu>
 <841a9a54-78ee-ffaa-fc3c-12defcf43b36@gentoo.org>
 <20210311143912.GA257360@rowland.harvard.edu>
 <f2acfeef-a81a-d7c0-90a8-b290a18cb742@gentoo.org>
 <20210316162650.GB448722@rowland.harvard.edu>
 <031a20c5-27c3-cc13-6e0b-a308644abce4@redhat.com>
 <20210316170433.GD448722@rowland.harvard.edu>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <1d9f059e-8b21-0895-9a50-39b6b1a5cc5c@redhat.com>
Date: Wed, 17 Mar 2021 13:21:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210316170433.GD448722@rowland.harvard.edu>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: hdegoede@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=afZmNyve;
       spf=pass (google.com: domain of hdegoede@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
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

Hi,

On 3/16/21 6:04 PM, Alan Stern wrote:
> On Tue, Mar 16, 2021 at 05:43:34PM +0100, Hans de Goede wrote:
>> Hi,
>>
>> On 3/16/21 5:26 PM, Alan Stern wrote:
>>> On Tue, Mar 16, 2021 at 06:26:30AM +0100, Matthias Schwarzott wrote:
>>>> I implemented solution 3b. This is the pullrequest for udev (systemd
>>>> repository):
>>>>
>>>> 	https://github.com/systemd/systemd/pull/19002
>>>>
>>>> Now Lennart asks if udev is the best place for such hacks/work-arounds?
>>>>
>>>> Well, I implemented it as suggested by Alan (see above). This was the
>>>> simplest of the considered alternatives. Different quirks in kernel has been
>>>> considered, but are more effort to be implemented.
>>>
>>> Lennart probably isn't aware how the usb-storage driver works.  It does 
>>> not create commands on its own; it merely sends the commands that it 
>>> gets from higher SCSI layers.
>>>
>>> It may be possible to modify the SCSI core, to make it send a TEST UNIT 
>>> READY command immediately following any SYNCHRONIZE CACHE to a Kindle.
>>>
>>> However, there may be an easier solution.  usb-storage does indeed send 
>>> a command of its own, REQUEST SENSE, to get error data when a command 
>>> fails.  The patch below will make it do the same thing whenever it sends 
>>> a SYNCHRONIZE CACHE to a Kindle, failure or not.
>>>
>>> The only question is whether the Kindle will regard REQUEST SENSE as a 
>>> sufficient indication that it shouldn't do an eject.  The only way to 
>>> find out is by testing the patch.
>>>
>>> Alan Stern
>>
>> Thank you for this patch, yes if this works it would IMHO be
>> a much better solution then the udev rule.
> 
> I think it would be mildly better, but not a whole lot.  Since the 
> Kindle describes itself as having removable media, the kernel normally 
> probes it periodically to make sure the media remains present.  The 
> default probing interval is 2 seconds.  Reducing it to 0.9 seconds 
> doesn't represent an exorbitant additional load IMO -- especially since 
> Kindles don't tend to spend huge amounts of time connected to computers.

Ah, I did not know that the default polling interval was that low(ish),
given that the default indeed is already that low, then changing it to
0.8 seconds would not be a big change.  And we probably have a lot of
lower hanging fruit for unnecessary wakeups then that.

Regards,

Hans

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1d9f059e-8b21-0895-9a50-39b6b1a5cc5c%40redhat.com.
