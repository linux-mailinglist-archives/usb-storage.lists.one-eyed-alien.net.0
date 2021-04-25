Return-Path: <usb-storage+bncBDRZXY4CYYORBRMPSWCAMGQEXUGYEYY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x546.google.com (mail-ed1-x546.google.com [IPv6:2a00:1450:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B29636A6C4
	for <lists+usb-storage@lfdr.de>; Sun, 25 Apr 2021 12:43:18 +0200 (CEST)
Received: by mail-ed1-x546.google.com with SMTP id z3-20020a05640240c3b029037fb0c2bd3bsf21463999edb.23
        for <lists+usb-storage@lfdr.de>; Sun, 25 Apr 2021 03:43:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619347398; cv=pass;
        d=google.com; s=arc-20160816;
        b=tJ1EgPibaL3qn1UXjtZVHcHb2jEdm5QgTTM+JhyxcI7kUilAJZqCz8rlZSXJVdi7S+
         k2o/OvEKvmPPhYuQO1AvRSaDhPYkCaNgBXLj5SyyPMMVBR7C2U83bcwCWMZHqrc9DcKj
         4wgw1qd5C1H8OUsKFDTKJMd16pftBh0sgRYwlED+tpx9J5akAQK5dfrgotOyf0vTNX9f
         X9Ry7vjEVQKlaaHXDp2/AIiaVdGAVG/XrEX+0FZT6LqXuOeGv5lXeJcFQ5x3rn6icaE5
         2DQY5tVnpDiuI1v8lGiyLtkiM1KI3FgN7K6I3jCWAYnx6ULQjEQfWlvX6LbB3zXSLMB9
         ZCXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=DK9qL31yfVkWof9zqWSRFEiE/klbiMjUDer5i00VeQ4=;
        b=LxTUX4w7589cdr2+T/lznzQxXfcmhElJG2NY1bxzImqFf3ioPG+g9b1BPS3Nlakdg3
         2e9ufhg9y/1qXidphcy4T6s3Nqo4Uuk87IXgocwtDU1nfLidZR5Wq0Pm1v0cxU5RcEXt
         kLtPo1XnAyC5b3JlGfpM3U0egBfDT7Y8YCUSrwtZAuHRNTJekeCe178uhvIVuhzndrbw
         DLpCYot8u6YPxPqmyaJuFkur9JhnUnWnLdfRKNQAr7D0ohRb1WY3Z14h4XYwBXEC4SsU
         YCv/pafv/OsfVxy7iPRCx7eGFYqJwADCMDZeZ9K3/EMiW+EA843d9licEZX4Ewdai4dT
         j0Og==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=THjlVGIV;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DK9qL31yfVkWof9zqWSRFEiE/klbiMjUDer5i00VeQ4=;
        b=YAr/Jj/tOQtNKoCmVB76436ZOse+bpyCaw1TPyYtg7ptnwaf2VrcsVDR0hs82voxUv
         zHfkVVmkCRXs14sk2O2voxXO/qH6HT94uaHEj5V/flRMvJ72Pl9NAIM5TAu5Nw7hNBoy
         FwYbfv+wPlVSmIu4TYpbjU2a6iKS5FRSlY6go=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DK9qL31yfVkWof9zqWSRFEiE/klbiMjUDer5i00VeQ4=;
        b=tI/CinfV9D4DK3mZKbUO622w1cwAxDrbmJRCEd/IqpWONXa5YIRsbtKWRD7XSVt5w0
         LWYLXmPSpJIlvKgedlGOtMwK4+w7x6e6Brix+pp33nWcNhCScFMGOm1eFG2mIPxa32ho
         GNH5zYV/ivBrHHYSV4koTZxDhsTOKRUzXmdZJqOcT4SXHLf4xAfP0f+HLvwTi6kSrbJN
         4POQm9IDCaqpUUXJ3UWvfjAkxahZA3NYb/1nd63E43hP8dBaajAbNx23+hc0vbAZWZlB
         SOiS3fVUhHQayKFPUl0DKSkD9MoYtSphxOdThc21Dpwzxy1cQ2zc0B20PSkhXF1Flir7
         Jaxw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532LVoUZSCJOEAXCj4LlyvTnrziXmipGP3oSjCE0aXCFnPrQbtj4
	WusL9jFECAx7a3/Qofbgl8IvzA==
X-Google-Smtp-Source: ABdhPJwbqz4VM5Csdg8Gx4rsPPKyGRow7WuGxuV4KF2NYkKXSRoIx1W/39bIIDp4vWq0JrgpyOIn2w==
X-Received: by 2002:a50:9b12:: with SMTP id o18mr15355218edi.376.1619347397994;
        Sun, 25 Apr 2021 03:43:17 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:906:af79:: with SMTP id os25ls1342485ejb.8.gmail; Sun,
 25 Apr 2021 03:43:16 -0700 (PDT)
X-Received: by 2002:a17:906:1101:: with SMTP id h1mr13491320eja.179.1619347396857;
        Sun, 25 Apr 2021 03:43:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619347396; cv=none;
        d=google.com; s=arc-20160816;
        b=ObTi0Q/isANyBuK2Klw+FAXc6lCYHkTcRehrQfu7uxFltOI10EfgcaYY7FEDFfcvAs
         ML26PVCGHUuci30bgxBkOKkCJSrMkplUSHRooPMcsm/PjyIyBQwR1iocaPBbvSggHROn
         wy0Te2AqMWnktelskGzKViNEBqJzAH9fEb9WgX16pYZ8kACauJubwc9QD5k7eG4vSo2v
         u30HTkGVEax1rr/cxir2iQp57/71izTwOgW66MC4N7ddz3j8AhvIubD60zYeaKg6CH3V
         4rbZx8d+hyKdAz3yBACv95XB015TkA9BcsqJcSSGnUGlcy+ykZODuABOPkidMGEqeFdz
         HNLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=FL5Hryf0zzSHIem2IriVEWypXdKGZbBwbUNqEJ27NhI=;
        b=hwA9FHMLpUtz2gZTCjW6PKZ7bI8rxK8oppjfRfhO3WSDC1c3ebhxF5dZvL3XKzoAZc
         cYI4Tij/PP96gCrh+8vYuGOHu8tA8lLlTdr+HamRQzuPGXfTm0o9sE8M/bAaTTyDIefV
         25TZeo5yMCMdOIQCQ10f9qo5LNwys07vaE7sIQGmjxMmPZfhbHnfwo+EXoqVVS832ITZ
         C0nyurXIIWy+6sbJBY2DODmBeC5Xqj3cQoOcisTIgcQa39pjx7y+UZgblzVK6ORoixPI
         Ubf1e+8O9W8HEuG0v8ospbA3aeR5PyABVMqLIyZTKWTRMtxjNCUeiFyaviSljaWhJRgs
         Aorg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=THjlVGIV;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by mx.google.com with ESMTPS id nb28si9372255ejc.303.2021.04.25.03.43.16
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Apr 2021 03:43:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of hdegoede@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-488-L_GmBVMeOvqyT8-JAYuL_g-1; Sun, 25 Apr 2021 06:43:14 -0400
X-MC-Unique: L_GmBVMeOvqyT8-JAYuL_g-1
Received: by mail-ed1-f69.google.com with SMTP id d6-20020a0564020786b0290387927a37e2so404818edy.10
        for <usb-storage@lists.one-eyed-alien.net>; Sun, 25 Apr 2021 03:43:14 -0700 (PDT)
X-Received: by 2002:a17:907:3e06:: with SMTP id hp6mr12914038ejc.273.1619347392875;
        Sun, 25 Apr 2021 03:43:12 -0700 (PDT)
X-Received: by 2002:a17:907:3e06:: with SMTP id hp6mr12914022ejc.273.1619347392622;
        Sun, 25 Apr 2021 03:43:12 -0700 (PDT)
Received: from x1.localdomain (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
        by smtp.gmail.com with ESMTPSA id ca1sm11404375edb.76.2021.04.25.03.43.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Apr 2021 03:43:12 -0700 (PDT)
Subject: [usb-storage] Re: [PATCH] unbreak all modern Seagate ATA pass-through
 for SMART
To: =?UTF-8?Q?Ren=c3=a9_Rebe?= <rene@exactcode.com>,
 Alan Stern <stern@rowland.harvard.edu>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <20210424.220316.855336714119430355.rene@exactcode.com>
 <20210425023133.GC324386@rowland.harvard.edu>
 <883AF188-7817-42E2-84E8-F1DD7A5F3C08@exactcode.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <02f8f171-635a-4ad7-f937-78f935568de2@redhat.com>
Date: Sun, 25 Apr 2021 12:43:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <883AF188-7817-42E2-84E8-F1DD7A5F3C08@exactcode.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: hdegoede@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=THjlVGIV;
       spf=pass (google.com: domain of hdegoede@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
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

On 4/25/21 9:20 AM, Ren=C3=A9 Rebe wrote:
> Hey,
>=20
>> On 25. Apr 2021, at 04:31, Alan Stern <stern@rowland.harvard.edu> wrote:
>>> Seagate devices" in 2017. Apparently some early ones where buggy, ...
>>>
>>> However, fast forward a couple of years and this is no longer true,
>>> this Segate Seven even is already from 2016, and apparently first
>>> available in 2015. I suggest removing this rather drastic global
>>> measure, and instead only add very old broken ones with individual
>>> quirks, should any of them still be alive ;-)
>>>
>>> Signed-off-by: Ren=C3=A9 Rebe <rene@exactcode.com>
>>>
>>> --- linux-5.11/drivers/usb/storage/uas-detect.h.backup	2021-03-05 11:36=
:00.517423726 +0100
>>> +++ linux-5.11/drivers/usb/storage/uas-detect.h	2021-03-05 11:36:16.373=
424544 +0100
>>> @@ -113,8 +113,4 @@
>>> 	}
>>>
>>> -	/* All Seagate disk enclosures have broken ATA pass-through support *=
/
>>> -	if (le16_to_cpu(udev->descriptor.idVendor) =3D=3D 0x0bc2)
>>> -		flags |=3D US_FL_NO_ATA_1X;
>>> -
>>> 	usb_stor_adjust_quirks(udev, &flags);
>>
>> I don't want to do this unless you can suggest an approach that won't=20
>> suddenly break all those old buggy drives.  Just because they are now=20
>> five years old or more doesn't mean they are no longer in use.
>=20
> Well, what do you propose then? A allow quirk for all new devices going f=
orward?
> Given that the user usually needs to actively run something like smartctl
> manually on the drive I don=E2=80=99t see that this should cause too many=
 issues.

At least Fedora ships with smartmontools with a systemd service monitoring =
the
driver enabled by default; and I would not be surprised if other distros do
the same.

> I don=E2=80=99t have any non-supporting device - can we not just add them=
 to the
> quirk list when someone reports one?

We have a no regressions rule in the kernel, this would cause regressions,
so NACK. Also the code which you are removing replaced a long list of non-w=
orking
Seagate devices, it is not just one or 2 models, we started out with model
specific quirks and when the list grew too long we went for this option.

Something else to keep in mind here is that:

1. Every single user out there wants to have a working drive, and removing =
the
quirk breaks that for older Seagate drive enclosures.

2. Only some advanced users care about SMART monitoring.

So what you are suggesting is breaking older Seagate drives for everyone to
enable a feature which only few users actually care about.

So as Greg said I believe that the best option would be to add a new
US_FL_ATA_1X_OK flag, add a quirk for your drive(s) and make the code setti=
ng
US_FL_NO_ATA_1X for all Seagate devices check that flag.

Regards,

Hans

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/02f8f171-635a-4ad7-f937-78f935568de2=
%40redhat.com.
