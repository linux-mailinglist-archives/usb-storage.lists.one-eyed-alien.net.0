Return-Path: <usb-storage+bncBDRZXY4CYYORBWHNTGCAMGQEUGRRFQI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x546.google.com (mail-ed1-x546.google.com [IPv6:2a00:1450:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F8236AF97
	for <lists+usb-storage@lfdr.de>; Mon, 26 Apr 2021 10:16:25 +0200 (CEST)
Received: by mail-ed1-x546.google.com with SMTP id m18-20020a0564025112b0290378d2a266ebsf22568980edd.15
        for <lists+usb-storage@lfdr.de>; Mon, 26 Apr 2021 01:16:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619424985; cv=pass;
        d=google.com; s=arc-20160816;
        b=nQ35srWedBLrUM37374Wlgsr6LR6jpeUuAVtUb01C9AIdWcoEJgxF176DntoEN9971
         Yw93UEoZybTkKmTQpFzXD1TO9Zu4JAVtvSYeOiHa/BAgccosgMz3fC7e68L26XT5x977
         OrciH1kie1Z1VuG8SjyP6h6s4J+otF2FF2WjxLWDrhaHhqfSA2q/cf8RV/Zllmmtcu0A
         bW2CrkiTZxyxOQvAizUuKKRSzuv+DSvrnoAJQa2vr26adwmZaRDJURpWR2rkygE8SGfD
         f8+pJwliV2dDv0+YiqgWRv6rG190ZvFFiyUt/TMXpunYrHYNifuGpUisAZdlNMQOc0Zd
         3y2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=vjlOZGOd26hsMG6IIeagTCgdxxMWaMG28rwvY6pVrcM=;
        b=X85QaryR3XDMK3IUk5B1Iq0wR95/cKDHkium4eKVYe4PrazLjRoF61oYMeppE4CdOU
         BTd8OxJylpZjAn6tdWel11wc3tsucQCGLZI91lcXxSlJc9tBJFHa54FZ01ETNgaTyzIH
         15srRjqnadjyouYUmq4Fj5tcGqyC2eimhVR42jr8o9hFrwGMAmk/7cYHw0ZkC2uG1pwo
         sjay96R0xLhVkrkVv7+vKojbGz3rdpbNky8i0No6aAli94jd0dipcmwXBy9AILKcmDJX
         dEBVAKt1oum5KWN97sTjiBNdhSW7CORqLwK4rFTBkywkm5IJ9iWCYEQLk5hcTmHVN3wv
         BJxg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=XZykeNQn;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vjlOZGOd26hsMG6IIeagTCgdxxMWaMG28rwvY6pVrcM=;
        b=dzjjEXxzyHo+RjJOZ8cgLvTEFHcIBS9bgkOI6LzU6idxpxLx28ls7WqzR1mtN4PIEO
         aoLP3rxi1kHVuT0/Jw3G9bPQVDkk6+sI1lg9HuETOWj+dIcy2c1tAGfNec31fiKAalJt
         +NWMsus5r6p02+DI13cFfMeqVEcpFeJz6Owuk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vjlOZGOd26hsMG6IIeagTCgdxxMWaMG28rwvY6pVrcM=;
        b=hjB4nTayQ7BIg4v/wgxs4xGCVM5Ak/EI/v2kUdE2E9cEoc05ISFvKlsNuYL6qFBrDj
         5hoERPvMEVd+BkV9/kfPe/cJpq+Gw0vl6TFnP3T2SZkkKk9P9CVjc6Y6wz87/ycgR2WJ
         kxZVV1DrpZmaF9iyYfPXmtMMsGj7d14wlvZ1Ur8C+SkVbCtFgNMjbL1tuEI9SxFua2QH
         +d7Uo4AKnp/9hCg6AJmvIGF7DpkAU/b73UqDehcSYVgGaBo7mQ4r2LdHxC49OANnCyT8
         Fhmt5boOKlbcX64vW2wfcUwOPS7k4GYUeOaieAMWgpjkyVOm2FTCiWKPmUw+owsr3wpY
         ZMtQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM5300/lX8LFHiHLO6CEMvaUxh4eF1ElkCyTlkw5NTnpKUcjo+QoXF
	y3NM8ikC28TseI6rHYw7O0lKEw==
X-Google-Smtp-Source: ABdhPJxroip/lFl6owEgeiIoPFYPuWEpScLBKria+UTNXMops5lRf2Gh1YAQRW0orSXacGs72z6TWg==
X-Received: by 2002:a17:906:5450:: with SMTP id d16mr17110150ejp.274.1619424985124;
        Mon, 26 Apr 2021 01:16:25 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:4c2:: with SMTP id n2ls7220556edw.2.gmail; Mon, 26
 Apr 2021 01:16:23 -0700 (PDT)
X-Received: by 2002:a05:6402:290:: with SMTP id l16mr19569981edv.337.1619424983804;
        Mon, 26 Apr 2021 01:16:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619424983; cv=none;
        d=google.com; s=arc-20160816;
        b=kBItD0+L7lN1d4STBTfxhciumtGJMgJX09D8C5l6YYtkvl+FLKQUEBgupibXeAuA5X
         m63uibHNSYHheX0jNK87ZMlnlXcAW//8hsV67qdgpIs+S5hk1PygnMnnfTjbHjXpt276
         L3wXcXm2cr3LGEgqj9MfB+fjMC26Nk1TVYtIX9ElljIgHEXpiLg8lDGaeXG5WnBKMcpC
         ieO68I2bi3Kw7s7zzhgPuF8ksAwQKIsR/dYs5TZDcaGFoRuWi0RMC3pqMzK0fKAbbOdt
         MNvP3f0lmCatrsBej67X/WmKX43wRXd+rocfTVQbynwkvqR9L8cxVbtceQdh4B+EaD3l
         yXhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=920zwXWrAw7vSQ98hJuWwymp4xFyYRpTuJuag3S2S3k=;
        b=twdIpuA7J/MWvhd4348WCXz42cRRWGOcakrQhmzEqA9/Uv2A8l3HoQOmLt+RVGwiab
         i4OwIthf5aV8O9RiKJavXaKRA682oGW/NIGtpF4DTNY6KBw1BYLVwu5Y3e9TAPRQd2G2
         uK60aGfQSU5C5UUiTdGo/pRPNwesuouEC3nk9DGKiF2iO56suLsNHrKinCKSeVwKbH1a
         OPs8KvdFm4JjGjMtv0dQHo2CVOQ2cOeucIH5mrkhJkiQi+yX7oeVRMFLe7NAfktzbzf0
         iP/zfc4/E4sMSSccj5eiYwcTW0QsL4T0FJ8SttYEfcOYfjTm3g6DiamrPSZSYtaXMLu/
         sy+g==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=XZykeNQn;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by mx.google.com with ESMTPS id z17si3451253eju.287.2021.04.26.01.16.23
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Apr 2021 01:16:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-583-myffCesfPBaIV_Mjo9sPSw-1; Mon, 26 Apr 2021 04:16:15 -0400
X-MC-Unique: myffCesfPBaIV_Mjo9sPSw-1
Received: by mail-ej1-f69.google.com with SMTP id jl27-20020a17090775dbb029037ccdce96e6so9845903ejc.21
        for <usb-storage@lists.one-eyed-alien.net>; Mon, 26 Apr 2021 01:16:15 -0700 (PDT)
X-Received: by 2002:a05:6402:cb6:: with SMTP id cn22mr19532753edb.302.1619424974133;
        Mon, 26 Apr 2021 01:16:14 -0700 (PDT)
X-Received: by 2002:a05:6402:cb6:: with SMTP id cn22mr19532725edb.302.1619424973789;
        Mon, 26 Apr 2021 01:16:13 -0700 (PDT)
Received: from x1.localdomain (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
        by smtp.gmail.com with ESMTPSA id k16sm10963327ejv.37.2021.04.26.01.16.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Apr 2021 01:16:13 -0700 (PDT)
Subject: [usb-storage] Re: [PATCH] unbreak all modern Seagate ATA pass-through
 for SMART
To: =?UTF-8?Q?Ren=c3=a9_Rebe?= <rene@exactcode.com>
Cc: Alan Stern <stern@rowland.harvard.edu>, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <YIVZ2l9qUfkcyPpG@kroah.com>
 <20210425.141536.1295354861910527121.rene@exactcode.com>
 <20210425144531.GA336783@rowland.harvard.edu>
 <20210425.170224.894337589208455353.rene@exactcode.com>
 <0e698ca2-06e6-6ee7-1c39-a4352207a40e@redhat.com>
 <83FED4AF-2078-43BA-95A8-1EB44C13329D@exactcode.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <c7f619f8-b5c5-2a27-9a9e-e757c5cf5802@redhat.com>
Date: Mon, 26 Apr 2021 10:16:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <83FED4AF-2078-43BA-95A8-1EB44C13329D@exactcode.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: hdegoede@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=XZykeNQn;
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

Hi,

On 4/25/21 10:52 PM, Ren=C3=A9 Rebe wrote:
> Hi,
>=20
>> On 25. Apr 2021, at 20:25, Hans de Goede <hdegoede@redhat.com> wrote:
>>
>> Hi Rene,
>>
>> On 4/25/21 5:02 PM, Rene Rebe wrote:
>>> Alan Stern <stern@rowland.harvard.edu> wrote:
>>>
>>>> On Sun, Apr 25, 2021 at 02:15:36PM +0200, Rene Rebe wrote:
>>>>> From: Greg KH <gregkh@linuxfoundation.org>
>>>>> Subject: Re: [PATCH] unbreak all modern Seagate ATA pass-through for =
SMART
>>>>> Date: Sun, 25 Apr 2021 14:00:26 +0200
>>>>>
>>>>>>> I would expect that more modern devices to work. Vendors usually
>>>>>>> linearly allocate their product ids for new devices, and we could
>>>>>>> allow list product ids higher than this Seven to unbreak more moder=
n
>>>>>>> devices by default and limit the amount of device quirks needed?
>>>>>>
>>>>>> Vendors do not allocate device ids that way at all, as there is no
>>>>>> requirement to do so.  I know of many vendors that seemingly use ran=
dom
>>>>>> values from their product id space, so there is no guarantee that th=
is
>>>>>> will work, sorry.
>>>>>
>>>>> I did not say it is a requirement, just that they usually do speaking
>>>>> of just this Seagate case. What is wrong with using that to
>>>>> potentially significantly cut down the quirk list?
>>>>
>>>> You didn't read commit 92335ad9e895, did you?  It lists a large number=
=20
>>>> of Seagate devices that don't work with ATA pass-through, and three of=
=20
>>>> them have product IDs that are larger than 0xab03.
>>>>
>>>> Please check the facts before guessing about things that will cause=20
>>>> problems for other people.
>>>
>>> I really don't appreciate the unfriendly tone on the linux kernel
>>> mailing lists (which is why for 20 years I never felt like contributing
>>> here mo),
>>
>> I'm sorry to hear that the admittently sometimes unfriendly tone
>> on the kernel mailinglists have stopped you from contributing.
>>
>> Note that I do believe that things have gotten better recently.
>>
>> As for this email-thread, I don't really see anything wrong with
>> Alan's reply here. You have been quite argumentative in this entire
>> thread about how things would be much better if they are done your
>> way.
>>
>> I cannot speak for the others but I certainly have gotten annoyed by
>> the tone of your emails so far, I apologize if any of that annoyance
>> has bleed through in the tone of my emails. I do strive to always
>> stay professional (but as all of us I'm only human).
>>
>> <snip>
>>
>>>>>> What is wrong with just allowing specific devices that you have test=
ed
>>>>>> will work, to the list instead?  That's the safest way to handle thi=
s.
>>>>>
>>>>> The problem is that out of the box it does not work for users, and
>>>>> normal users do not dive into the kernel code to find out and simply
>>>>> think their devices sucks. Even I for years thought the drive sucks,
>>>>> before I took a closer look. If you long term want more new devices i=
n
>>>>> an allow list than the previous quirk list included (9 or 10 does not
>>>>> sound that many to me), ... whatever you prefer ,-) I would rather
>>>>> have 10 quirk disable list than potential many more white listed the
>>>>> next years to come. Maybe we shoudl simply restore the prevoius
>>>>> quirks.
>>>>
>>>> That's a possibility, and in the future we may do it.  But probably no=
t=20
>>>> until the enable list grows to a comparable length.
>>>
>>> Yeah, why future proof it now, ...
>>
>> Perhaps look in the mirror and start with improving the tone of your
>> own emails ?
>=20
> Thanks, I re-read them and find them pretty ok.

I was directly referring to your "Yeah, why future proof it now, ..."
remark here. But more in general I personally find the tone of your
emails in this thread somewhat "combative".

I believe that in the end we all want the same thing which is to help
Linux users to get the best experience possible. It just seems that we
disagree on how to reach that goal.

Assuming that I have that correct, then I believe that there is a lot
of common ground between us; and I wish that we could approach this
in a way where we try to find a solution which we can all agree on.

Ideally we could just wave a magic wand and make this all work,
but unfortunately reality is not cooperating, so we need to come up
with some pragmatic solution here.

<snip>

> On further internet searching that there are at least 4 more drivers
> listed on the smartmontools page that should work:
>=20
> 	https://www.smartmontools.org/wiki/Supported_USB-Devices

That is a very interesting link thank you. That certainly advocates
for a generic approach introducing a new US_FL_ATA_1X_OK and then
adding quirks setting that for both your model and the 4 models
listed there.

I would really appreciate it if you could submit a patch series
for this. But if you don't want to do that then I'll put this on
my own TODO list.

> Plus a dedicated page about this change and devices stopped working:
>=20
> 	https://www.smartmontools.org/wiki/SAT-with-UAS-Linux

Thank you, that is another interesting link. Note that the page does
acknowledge that the problem with Seagate enclosures is real and
that in many cases the choice is falling back to usb-storage support
with working ATA pass-through, or UAS without ATA pass-through.

Given the huge performance advantages of UAS, especially with SSDs,
IMHO it is better to go with UAS in this case. But I guess in some
scenarios SMART support may be more important then UAS support.

I'll contact the author of that wiki page to discuss this further
with him and see if he has any good ideas for this problem.

> Given this, I will not continue spending my time on implementing
> what you suggested and instead simply reverted this for our Linux
> SDE as I believe results in the best out of the box experience
> for our users:
>=20
> 	https://svn.exactcode.de/t2/trunk/package/base/linux/uas-seagate.patch

I've taken a quick peek at this and I see that you've also restored
the old per model quirks to disable ATA pass-through on known to be
broken models, good.

Note that the list of broken models which you've added it missing the
0xab25 and 0xab38 product-ids which according to:
https://www.smartmontools.org/wiki/Supported_USB-Devices
have broken ATA passthrough support with UAS.

If I assume that these behave as some of the other Seagate drivers and
the bridge-chip crashes when trying to use ATA pass-through, then once
these changes hit your users and customers you have just broken usage
of those disks together with your product. This nicely illustrates
why we don't want to make this change in the mainline kernel.

Note depending on how important disk performance is for you
an alternative approach might be to modify the Seagate product-id check
to simply disable UAS on Seagate devices, that would be a lot safer.

Regards,

Hans

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/c7f619f8-b5c5-2a27-9a9e-e757c5cf5802=
%40redhat.com.
