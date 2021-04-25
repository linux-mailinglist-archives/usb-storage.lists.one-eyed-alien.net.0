Return-Path: <usb-storage+bncBDRZXY4CYYORBZUWSWCAMGQECDOY4IA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ej1-x648.google.com (mail-ej1-x648.google.com [IPv6:2a00:1450:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C6536A6D2
	for <lists+usb-storage@lfdr.de>; Sun, 25 Apr 2021 12:58:46 +0200 (CEST)
Received: by mail-ej1-x648.google.com with SMTP id g7-20020a1709065d07b029037c872d9cdcsf9348123ejt.11
        for <lists+usb-storage@lfdr.de>; Sun, 25 Apr 2021 03:58:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619348326; cv=pass;
        d=google.com; s=arc-20160816;
        b=RCvHhUvVzALc193vrHL2v2pyXpRBtc0GLnt9sSHhjwnJmwZa+rAYYAg/QcWeVIbgZR
         pTwEtu4OK5FzsR3jMuHVEvTp8uJRTz4ZwjHhfsodmNkXj0bcMBHoYJoqXRJDW2QBjgH2
         2w5gV3VavmG9Hpk4Q9ELtK4Rh0LAfP3ko8pXDcqfYiYguywJgKTiYERtuLEUVUmy4I3R
         IHvFyvJRKfFwIQIKXfTZq3fCVHHjY5Y0hpz1xisGOQXz1iytRVtqbPqwbCibB6KXDtRw
         c7lv8uV+1OjGHvKtWOur+CExC3BkFqIhemgJYjn1HZUG8ISZbMfZ8NhxXO6mwRyusKJS
         iTvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:references:cc:to:from:subject:sender:dkim-signature;
        bh=OJOiss4It6HM71uKvTdbKtaNKVLtOug6jf6pzfgZMr4=;
        b=vHHRtZBXnRbnTnDphVypMURh4rBRi9rPy9u39ESy0NSo/dxFLIOMMDSTNEOskWiluh
         h+yqAdNBii48AvuXrqZrCsVLC8Xnnl4HonMnSN/msyOFDNJilDcTiuyNnSOulxD8laiJ
         6qxEHbAYP8+fXtKuWxfajQpR0+nuDkswakP+2S9uUJzeHb27qTmDyrW6WF3ivHsFvbM5
         njgL8Vh4s3kJXx2RRb9VDxBK6B1Em+S9GDzm2WPNOVM7Qg45AMUcmXQQXM53dO96qCwI
         xOcow5OHZePqPqStn9tVFIDhN0rTtWt+1SZSNr6NxPXoovk8MXJy6lP8H2GPPw+OXXR0
         S1SQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=GcOPtAUa;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OJOiss4It6HM71uKvTdbKtaNKVLtOug6jf6pzfgZMr4=;
        b=YpBZ8QkaH6M2l1MdKHVDGGypNivbOz00Fy//EjimTxTHZx0XafSJTJRE5M5voAgZk4
         /gWMVIJKDrW1QblWQBV6ShpmpGKo8b4xUePacsQ+ATMWpRw3P6G1j10NDwRTdEr4xEi1
         zaXPNFY8SiUG0H0QGZLK9HAIj/IeIoD6tPoB0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:references:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OJOiss4It6HM71uKvTdbKtaNKVLtOug6jf6pzfgZMr4=;
        b=RmbbEdrhtriv3OX1vOaRNlxHsEy/G4TlLOJr1fTUaduRbsj7bHzGRgH6mhJBHL3V42
         k3x7Ozi6EQ5JAmX2UerBTBoFREUBY9XPOVVFq2bznbOBAwkGcOFPgJHbBId2GedY99t+
         l+uVnBCgVi+aWmfTJhXdFJ85F1Eduy7qyBOxlei1SozScbLzFMTguQEvmXc7Wi8QBv4a
         Hk6KtSYqiHCz+uCNoCs/tgb7JQUu/dQf4AEdly0MluVPPTZTci3xshBrNjbg27bNF+zx
         A1zP0w+L56Qo7QNrRUstB1F9P2ZTediOuMfnfBr/5TUq5VzF/2yL6bfK5H9Wnmg1fkpH
         LvlQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM5324zlHpJDo1J3vg0bxhwIowhPOBzQYjb9lVSa1epDy9u9MCxoZu
	ugRSjTCmpjQP9RgPWzWOPi487Q==
X-Google-Smtp-Source: ABdhPJxg/0MxnNf6X5rbeooHYHOTucu7tMnq9Sx2fVPyD1n8ZwkK02wuosFeiyi7plhhklRhlY2fnw==
X-Received: by 2002:a05:6402:138f:: with SMTP id b15mr15080657edv.121.1619348326597;
        Sun, 25 Apr 2021 03:58:46 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:906:560d:: with SMTP id f13ls135208ejq.1.gmail; Sun, 25
 Apr 2021 03:58:45 -0700 (PDT)
X-Received: by 2002:a17:907:1c08:: with SMTP id nc8mr13320332ejc.378.1619348325609;
        Sun, 25 Apr 2021 03:58:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619348325; cv=none;
        d=google.com; s=arc-20160816;
        b=HBWoPvHA8Kq97vy074QkRjQ5IRjXChRzF+GgSii0CC4Hzq9y+qwiDloalvW8PmPZfa
         kaoNSHWQAC/bq6jXBJCKRvy4nK6qz7a/utfxRfx9Mq9P6wrRCazm511gp4Dli8sqJzHz
         42RQV0F0NDl7QsLadNhSCmfEycTp0nZSw4F4KBYaxdupB7VhTNth94GFM/BGbSzUya88
         tIJGj+evrAAQs4+9MlR4/6wj+K8aNw0FJF3rZvvfmjT05cSU+1amDR2TPUZ7mF1hI+oB
         9ABxzZESgHeuibIR3GJWKZ8vrB2wLzxot8CFrUpNVjFAh9/gbNyfe3M7KBZ9fNWbnnWr
         e5+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:from:subject
         :dkim-signature;
        bh=c6BdWKwvEAsU8I94UWFhYX6VA+g4MZ/9S/hDCSfn7d0=;
        b=wXkaiu2pduS/Gl7GtWqOCv+cZD17P59cIqQvGED/xjVNKou5tcufnLJLBC7ulQtuiF
         8/0CfRlnIhfzPUutXxff1J0hgN+hgS9+wowoKsgIAdft8jGAdLcfGMQVVFo9r0eAW3pG
         QGRRwMGMkgcUClrwYDmh74r6OjCqcTUNRq3HTu6/pc5HlE2B1OhFhHz2u7d8LyVoVA6u
         u6cjkQRcx0qKtSJ2Mru7uxAoO2EVXb5edNXJsMDk1VKeIPgQIBcc205bDk8XvONSxuJv
         neh0h6yRpKFLwzV4hij+Pp1vTrp/eE35GSBnuO6kyQeCO7NEDCfYgJSfLtcQoaX6iEuI
         UXHA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=GcOPtAUa;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by mx.google.com with ESMTPS id o21si10349747ejh.237.2021.04.25.03.58.45
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Apr 2021 03:58:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of hdegoede@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-22-2b7ER88FPUKTmsK5_oCwNw-1; Sun, 25 Apr 2021 06:58:42 -0400
X-MC-Unique: 2b7ER88FPUKTmsK5_oCwNw-1
Received: by mail-ed1-f71.google.com with SMTP id c15-20020a056402100fb029038518e5afc5so13827410edu.18
        for <usb-storage@lists.one-eyed-alien.net>; Sun, 25 Apr 2021 03:58:42 -0700 (PDT)
X-Received: by 2002:a05:6402:5a:: with SMTP id f26mr15062296edu.285.1619348321447;
        Sun, 25 Apr 2021 03:58:41 -0700 (PDT)
X-Received: by 2002:a05:6402:5a:: with SMTP id f26mr15062272edu.285.1619348321092;
        Sun, 25 Apr 2021 03:58:41 -0700 (PDT)
Received: from x1.localdomain (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
        by smtp.gmail.com with ESMTPSA id n2sm11699764edi.32.2021.04.25.03.58.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Apr 2021 03:58:40 -0700 (PDT)
Subject: [usb-storage] Re: [PATCH] unbreak all modern Seagate ATA pass-through
 for SMART
From: Hans de Goede <hdegoede@redhat.com>
To: Rene Rebe <rene@exactcode.com>, gregkh@linuxfoundation.org
Cc: stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net
References: <20210425023133.GC324386@rowland.harvard.edu>
 <883AF188-7817-42E2-84E8-F1DD7A5F3C08@exactcode.com>
 <YIUbHKqs2gQPAu2T@kroah.com>
 <20210425.124119.1949311822603950729.rene@exactcode.com>
 <7187e934-b87a-edce-2ac6-f201ea9c7b7d@redhat.com>
Message-ID: <ee48ea5d-c820-ae24-b557-2a7b7372821c@redhat.com>
Date: Sun, 25 Apr 2021 12:58:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <7187e934-b87a-edce-2ac6-f201ea9c7b7d@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: hdegoede@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=GcOPtAUa;
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

On 4/25/21 12:47 PM, Hans de Goede wrote:
> Hi,
>=20
> On 4/25/21 12:41 PM, Rene Rebe wrote:
>> Greg KH wrote:
>>
>>> On Sun, Apr 25, 2021 at 09:20:59AM +0200, Ren=C3=A9 Rebe wrote:
>>>> Hey,
>>>>
>>>>> On 25. Apr 2021, at 04:31, Alan Stern <stern@rowland.harvard.edu> wro=
te:
>>>>>> Seagate devices" in 2017. Apparently some early ones where buggy, ..=
.
>>>>>>
>>>>>> However, fast forward a couple of years and this is no longer true,
>>>>>> this Segate Seven even is already from 2016, and apparently first
>>>>>> available in 2015. I suggest removing this rather drastic global
>>>>>> measure, and instead only add very old broken ones with individual
>>>>>> quirks, should any of them still be alive ;-)
>>>>>>
>>>>>> Signed-off-by: Ren=C3=A9 Rebe <rene@exactcode.com>
>>>>>>
>>>>>> --- linux-5.11/drivers/usb/storage/uas-detect.h.backup	2021-03-05 11=
:36:00.517423726 +0100
>>>>>> +++ linux-5.11/drivers/usb/storage/uas-detect.h	2021-03-05 11:36:16.=
373424544 +0100
>>>>>> @@ -113,8 +113,4 @@
>>>>>> 	}
>>>>>>
>>>>>> -	/* All Seagate disk enclosures have broken ATA pass-through suppor=
t */
>>>>>> -	if (le16_to_cpu(udev->descriptor.idVendor) =3D=3D 0x0bc2)
>>>>>> -		flags |=3D US_FL_NO_ATA_1X;
>>>>>> -
>>>>>> 	usb_stor_adjust_quirks(udev, &flags);
>>>>>
>>>>> I don't want to do this unless you can suggest an approach that won't=
=20
>>>>> suddenly break all those old buggy drives.  Just because they are now=
=20
>>>>> five years old or more doesn't mean they are no longer in use.
>>>>
>>>> Well, what do you propose then? A allow quirk for all new devices goin=
g forward?
>>>> Given that the user usually needs to actively run something like smart=
ctl
>>>> manually on the drive I don=E2=80=99t see that this should cause too m=
any issues.
>>>> I don=E2=80=99t have any non-supporting device - can we not just add t=
hem to the
>>>> quirk list when someone reports one?
>>>
>>> How about since you know your device works, you make the check detect
>>> your specific device and not apply the flag to it?  You should be able
>>> to do so based on the
>>
>> Sure, while that does not really solve this for all the other newer
>> Seagate drives other users might have at home, here is a patch
>> checking for this one USB product ID. I hope that is what you meant:
>>
>> Signed-off-by: Ren=C3=A9 Rebe <rene@exactcode.com>
>>
>> --- linux-5.11/drivers/usb/storage/uas-detect.h.backup	2021-03-05 11:36:=
00.517423726 +0100
>> +++ linux-5.11/drivers/usb/storage/uas-detect.h	2021-03-05 11:36:16.3734=
24544 +0100
>> @@ -113,5 +113,6 @@
>> =20
>>  	/* All Seagate disk enclosures have broken ATA pass-through support */
>> -	if (le16_to_cpu(udev->descriptor.idVendor) =3D=3D 0x0bc2)
>> +	if ((le16_to_cpu(udev->descriptor.idVendor) =3D=3D 0x0bc2) &&
>> +	    (le16_to_cpu(udev->descriptor.idProduct) !=3D 0xab03))
>>  		flags |=3D US_FL_NO_ATA_1X;
>> =20
>>
>=20
> As I indicated in my other email which crossed with this one, please make=
 this
> more generic, add a new US_FL_ATA_1X_OK flag and make the above code chec=
k that +
> add a new unusual_uas.h entry for your device setting the new flag.
>=20
> Note there is no need to add support for the new flag to usb_stor_adjust_=
quirks()
> if a user overrides quirks for a device on the kernel commandline without=
 specifying
> the "t" flag then the US_FL_NO_ATA_1X flag will already get cleared.
>=20
> I deliberately put the:
>=20
>         if (le16_to_cpu(udev->descriptor.idVendor) =3D=3D 0x0bc2)
>                 flags |=3D US_FL_NO_ATA_1X;
>=20
> code before the usb_stor_adjust_quirks() call to allow users to override =
this
> from the kernel commandline.

p.s.

A "git log drivers/usb/storage/unusual_uas.h" quickly finds the commit whic=
h removed the
quirks which the generic Seagate check replaces. At that time there were US=
_FL_NO_ATA_1X
quirks for *9* different Seagate models present in unusual_uas.h and I assu=
me someone
reporting a 10th model is what made me go for the just disable this for all=
 Seagate
driver option.

See commit 92335ad9e895 ("uas: Remove US_FL_NO_ATA_1X unusual device entrie=
s for Seagate devices")

Also I did a quick websearch for the "Seagate Seven" and rather then the us=
ual re-usable
drive-enclosure with a standard 2.5" or 3.5" drive in there, this seems to =
be a custom
model where the enclosure is actually integrated into the drive to make it =
smaller.

So I would not be surprised if this is using another chipset then their usu=
al enclosures,
which would explain why it does have working ATA1x passthrough.

Regards,

Hans

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/ee48ea5d-c820-ae24-b557-2a7b7372821c=
%40redhat.com.
