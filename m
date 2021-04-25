Return-Path: <usb-storage+bncBDRZXY4CYYORBC7DS2CAMGQE4CEB4CY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x545.google.com (mail-ed1-x545.google.com [IPv6:2a00:1450:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id 793CD36A8C6
	for <lists+usb-storage@lfdr.de>; Sun, 25 Apr 2021 20:14:36 +0200 (CEST)
Received: by mail-ed1-x545.google.com with SMTP id w14-20020aa7da4e0000b02903834aeed684sf19971496eds.13
        for <lists+usb-storage@lfdr.de>; Sun, 25 Apr 2021 11:14:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619374476; cv=pass;
        d=google.com; s=arc-20160816;
        b=wbcv93o1eQC5diQE/yAFpXKxD6r+AQrBXyqLbOfJ/uqi7LyEAp3+Z/bmDZHz2Gc6pZ
         6aWHXz1pw1LAGn7pasw0asTURGNZKECMeInr53+1nBMmPInNYyeTS/HnAFCXrEopic2w
         XzJRHHCV2TFPjhmn/m0XAj0GUb71WOC9fOpotypEESJQei2ObwuJ8l8v2W1ZLDtXRSKn
         L+5AYyhRhOju/1e9XSaxDEIlaDjABri4RMohypHXni6H1u2D35GQaAinO8mmRu5eue8R
         rYIfH194wOwbJs00KJV9NkNQM8YbwPQosFt7O0zKPysJHvq2b0gF31lkHUX0T/DmfQIh
         ryyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=2Yew0syQBmat8UKyd6HTV50qlCzvdPpPwC/kVH8ERZs=;
        b=FqGeF4q5N2QyxVDTG4xdGP2SNmGo7pzZmIk5w4Kv2ovWG2M3B4cxFpu6S2PzcbuWYP
         i5xs03fRf6VXpbRpCA8lc05AJypsbhZi4FQsFah/K4gQPDRnrFLjuQWiSrH1YwHWVaRX
         dCQsi+vaSSlMCoH2cLu2BjLQiQyT/mpSTI6QoPgluIVvgckwXsVwZ9Mkf4MXL01anfT7
         /cs7JJaGEN3f3A4M8IDXSAaDL5MfvAHpCQ/JFYJgJbSIHBJwI3yofRHEV4AfeU5ebAAL
         4gNxpAHmBcwhh1jGmL9EANf7r+5vfzfOOSWxLT5msxXAku7beMUTmU93btb6wLt1tZ9d
         1I9w==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=hU+Mllgw;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2Yew0syQBmat8UKyd6HTV50qlCzvdPpPwC/kVH8ERZs=;
        b=jfdUY3fRalgpE+F4WQ9+jNMEMXkXJRmSYHdo4YGUIElv0tAHoxkWqGduosNVYy4mjV
         RdvYiO34F7kkwazYvaEDsgrAgljIc4cKowopNLBilqKaGJTh8n7QLRkESDYVVAhwPeyx
         ged3ILo6nu46DTzje1P8rk/RWKzMxhSXGq/dY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2Yew0syQBmat8UKyd6HTV50qlCzvdPpPwC/kVH8ERZs=;
        b=ZsmxPk6B/idB1lLxWkXFbmV9BTzvw2fiS4N4zhksARG/lXB/yZTUt9cx0JQexNvo76
         5JnW3uKjU0DUGa09ti+anABIhy35ez0El45wjkNk85h4hHmHLgHkpbJG8vonF/DXfXWc
         RnuTJ+7Q9j1DUnkOANOKpcmwBI5p4q9ulSF1gKMy6MTU9Me68VDnOh8xb2bPmwjLb/b4
         knEROnX+sXKi4H+NRySdA0HGxlCRl+fkPe7s+oI1nEz9Yq9WPV9AUW8vUAdVcGz5nWpF
         GSQ3+nXAXWELOKWYwG9ZSOJNcmVaCS9YXYUHNxofTRn9V95tCs4B8XiDD0L4yH1Gx6jl
         OyAQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533amqgiWfiZDvQ/UVOiDTKYcLwLn1Y28RwfYfIPknB7Yo14pdzn
	37m/5iTIcjQ2C/5IM7HY6jDlRg==
X-Google-Smtp-Source: ABdhPJwcikdKB3CoeGxGDiw0QTQRPuG2378oM3DVQZBdcHpGK9HYClxjuRsxu/35UmM/2qsSDdKENQ==
X-Received: by 2002:a50:ed0c:: with SMTP id j12mr10010836eds.12.1619374476178;
        Sun, 25 Apr 2021 11:14:36 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:50cd:: with SMTP id h13ls5615097edb.3.gmail; Sun,
 25 Apr 2021 11:14:34 -0700 (PDT)
X-Received: by 2002:a05:6402:1109:: with SMTP id u9mr17040836edv.174.1619374474695;
        Sun, 25 Apr 2021 11:14:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619374474; cv=none;
        d=google.com; s=arc-20160816;
        b=UBOLjolezIBzd+yG4uC+et5z2dlsUvPeZfRKyTVNjjVsJjj8yWqImeWc/q5xxOH6Uu
         al9q/p/EeJHuRmCxVs6NYf+PJziaz5rncAmUF675l4PXJS6fcI515TUYW8HYzieDqK7x
         M+mRw3qocCG1f2lVk+ysf7Iq6dBBS56syY3DQpSg98cuQlCuIiwe2geydkS28v92bY2h
         neT522stAItHn04e8RI8fKjzneqKafE0c6v7Eo2sRcCxM7G4DtW/ZSWt59N6bC4c5nlu
         6YdFMwSBdfd4NGBhAPW8pGyN1w3VG0tpg6qX/46exNK2tGEGG4LgCzu5QaectZynuJ9s
         n5qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=Z8/L6oOgmB7SFi3H9zeiOkiTOEUbd6SIXfhj77SrmSE=;
        b=DVmkwINbotvDH7PQkXOlo/Un8EGZeyS9ioP6iHtWqJ69IzWj+kW1UvLU6MmiXXS4Xs
         lL2ug2laN8vFDlxNE6LXr5gmwnWciY+gfiJEchy3rUyYUdRX4HUkYMUYZ+JGPpvMc4XU
         IBr0L+zChZRwk8PPQKr9ZV2unAvR8SJ2mI4YzOfY4Gm2KiY9cu8K1AtuKIAHMNRvQZWa
         sbNM9bklIiVJ5/e672T4As60hbncy96dyR4VJl6jOLcu+odVaWoLnt9ZWbVF/jfgKzDZ
         l41Mvunmg4e5Ybg6IrfhpA/2MPF+CAkE3j5r+GhgBXmIvWaQvBtCoXm+hpf+k1PNJ5Uw
         ArPA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=hU+Mllgw;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by mx.google.com with ESMTPS id i3si11277194ejb.338.2021.04.25.11.14.34
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Apr 2021 11:14:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-221-ZQZDlc6hPlieCOCCh2dFdg-1; Sun, 25 Apr 2021 14:14:31 -0400
X-MC-Unique: ZQZDlc6hPlieCOCCh2dFdg-1
Received: by mail-ed1-f71.google.com with SMTP id w14-20020aa7da4e0000b02903834aeed684so19971402eds.13
        for <usb-storage@lists.one-eyed-alien.net>; Sun, 25 Apr 2021 11:14:31 -0700 (PDT)
X-Received: by 2002:a17:906:2a1b:: with SMTP id j27mr14540986eje.370.1619374470427;
        Sun, 25 Apr 2021 11:14:30 -0700 (PDT)
X-Received: by 2002:a17:906:2a1b:: with SMTP id j27mr14540968eje.370.1619374470172;
        Sun, 25 Apr 2021 11:14:30 -0700 (PDT)
Received: from x1.localdomain (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
        by smtp.gmail.com with ESMTPSA id q6sm9756591ejt.51.2021.04.25.11.14.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Apr 2021 11:14:29 -0700 (PDT)
Subject: [usb-storage] Re: [PATCH] unbreak all modern Seagate ATA pass-through
 for SMART
To: Rene Rebe <rene@exactcode.com>, gregkh@linuxfoundation.org
Cc: stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net
References: <YIVZ2l9qUfkcyPpG@kroah.com>
 <20210425.141536.1295354861910527121.rene@exactcode.com>
 <YIVgGdGbSpQ1norU@kroah.com>
 <20210425.175005.2217483968766014768.rene@exactcode.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <191b41b5-36fc-689a-b045-4c7735cebacc@redhat.com>
Date: Sun, 25 Apr 2021 20:14:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210425.175005.2217483968766014768.rene@exactcode.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: hdegoede@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=hU+Mllgw;
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

On 4/25/21 5:50 PM, Rene Rebe wrote:
> Hey
>=20
> From: Greg KH <gregkh@linuxfoundation.org>:
>=20
>>>>> Subject: Re: [PATCH] unbreak all modern Seagate ATA pass-through for =
SMART
>>>>> Date: Sun, 25 Apr 2021 12:58:40 +0200
>>>>>
>>>>>> Hi,
>>>>>>
>>>>>> On 4/25/21 12:47 PM, Hans de Goede wrote:
>>>>>>> Hi,
>>>>>>>
>>>>>>> On 4/25/21 12:41 PM, Rene Rebe wrote:
>>>>>>>> Greg KH wrote:
>>>>>>>>
>>>>>>>>> On Sun, Apr 25, 2021 at 09:20:59AM +0200, Ren=C3=A9 Rebe wrote:
>>>>>>>>>> Hey,
>>>>>>>>>>
>>>>>>>>>>> On 25. Apr 2021, at 04:31, Alan Stern <stern@rowland.harvard.ed=
u> wrote:
>>>>>>>>>>>> Seagate devices" in 2017. Apparently some early ones where bug=
gy, ...
>>>>>>>>>>>>
>>>>>>>>>>>> However, fast forward a couple of years and this is no longer =
true,
>>>>>>>>>>>> this Segate Seven even is already from 2016, and apparently fi=
rst
>>>>>>>>>>>> available in 2015. I suggest removing this rather drastic glob=
al
>>>>>>>>>>>> measure, and instead only add very old broken ones with indivi=
dual
>>>>>>>>>>>> quirks, should any of them still be alive ;-)
>>>>>>>>>>>>
>>>>>>>>>>>> Signed-off-by: Ren=C3=A9 Rebe <rene@exactcode.com>
>>>>>>>>>>>>
>>>>>>>>>>>> --- linux-5.11/drivers/usb/storage/uas-detect.h.backup	2021-03=
-05 11:36:00.517423726 +0100
>>>>>>>>>>>> +++ linux-5.11/drivers/usb/storage/uas-detect.h	2021-03-05 11:=
36:16.373424544 +0100
>>>>>>>>>>>> @@ -113,8 +113,4 @@
>>>>>>>>>>>> 	}
>>>>>>>>>>>>
>>>>>>>>>>>> -	/* All Seagate disk enclosures have broken ATA pass-through =
support */
>>>>>>>>>>>> -	if (le16_to_cpu(udev->descriptor.idVendor) =3D=3D 0x0bc2)
>>>>>>>>>>>> -		flags |=3D US_FL_NO_ATA_1X;
>>>>>>>>>>>> -
>>>>>>>>>>>> 	usb_stor_adjust_quirks(udev, &flags);
>>>>>>>>>>>
>>>>>>>>>>> I don't want to do this unless you can suggest an approach that=
 won't=20
>>>>>>>>>>> suddenly break all those old buggy drives.  Just because they a=
re now=20
>>>>>>>>>>> five years old or more doesn't mean they are no longer in use.
>>>>>>>>>>
>>>>>>>>>> Well, what do you propose then? A allow quirk for all new device=
s going forward?
>>>>>>>>>> Given that the user usually needs to actively run something like=
 smartctl
>>>>>>>>>> manually on the drive I don=E2=80=99t see that this should cause=
 too many issues.
>>>>>>>>>> I don=E2=80=99t have any non-supporting device - can we not just=
 add them to the
>>>>>>>>>> quirk list when someone reports one?
>>>>>>>>>
>>>>>>>>> How about since you know your device works, you make the check de=
tect
>>>>>>>>> your specific device and not apply the flag to it?  You should be=
 able
>>>>>>>>> to do so based on the
>>>>>>>>
>>>>>>>> Sure, while that does not really solve this for all the other newe=
r
>>>>>>>> Seagate drives other users might have at home, here is a patch
>>>>>>>> checking for this one USB product ID. I hope that is what you mean=
t:
>>>>>>>>
>>>>>>>> Signed-off-by: Ren=C3=A9 Rebe <rene@exactcode.com>
>>>>>>>>
>>>>>>>> --- linux-5.11/drivers/usb/storage/uas-detect.h.backup	2021-03-05 =
11:36:00.517423726 +0100
>>>>>>>> +++ linux-5.11/drivers/usb/storage/uas-detect.h	2021-03-05 11:36:1=
6.373424544 +0100
>>>>>>>> @@ -113,5 +113,6 @@
>>>>>>>> =20
>>>>>>>>  	/* All Seagate disk enclosures have broken ATA pass-through supp=
ort */
>>>>>>>> -	if (le16_to_cpu(udev->descriptor.idVendor) =3D=3D 0x0bc2)
>>>>>>>> +	if ((le16_to_cpu(udev->descriptor.idVendor) =3D=3D 0x0bc2) &&
>>>>>>>> +	    (le16_to_cpu(udev->descriptor.idProduct) !=3D 0xab03))
>>>>>>>>  		flags |=3D US_FL_NO_ATA_1X;
>>>>>>>> =20
>>>>>>>>
>>>>>>>
>>>>>>> As I indicated in my other email which crossed with this one, pleas=
e make this
>>>>>>> more generic, add a new US_FL_ATA_1X_OK flag and make the above cod=
e check that +
>>>>>>> add a new unusual_uas.h entry for your device setting the new flag.
>>>>>>>
>>>>>>> Note there is no need to add support for the new flag to usb_stor_a=
djust_quirks()
>>>>>>> if a user overrides quirks for a device on the kernel commandline w=
ithout specifying
>>>>>>> the "t" flag then the US_FL_NO_ATA_1X flag will already get cleared=
.
>>>>>>>
>>>>>>> I deliberately put the:
>>>>>>>
>>>>>>>         if (le16_to_cpu(udev->descriptor.idVendor) =3D=3D 0x0bc2)
>>>>>>>                 flags |=3D US_FL_NO_ATA_1X;
>>>>>>>
>>>>>>> code before the usb_stor_adjust_quirks() call to allow users to ove=
rride this
>>>>>>> from the kernel commandline.
>>>>>>
>>>>>> p.s.
>>>>>>
>>>>>> A "git log drivers/usb/storage/unusual_uas.h" quickly finds the comm=
it which removed the
>>>>>> quirks which the generic Seagate check replaces. At that time there =
were US_FL_NO_ATA_1X
>>>>>> quirks for *9* different Seagate models present in unusual_uas.h and=
 I assume someone
>>>>>> reporting a 10th model is what made me go for the just disable this =
for all Seagate
>>>>>> driver option.
>>>>>>
>>>>>> See commit 92335ad9e895 ("uas: Remove US_FL_NO_ATA_1X unusual device=
 entries for Seagate devices")
>>>>>>
>>>>>> Also I did a quick websearch for the "Seagate Seven" and rather then=
 the usual re-usable
>>>>>> drive-enclosure with a standard 2.5" or 3.5" drive in there, this se=
ems to be a custom
>>>>>> model where the enclosure is actually integrated into the drive to m=
ake it smaller.
>>>>>>
>>>>>> So I would not be surprised if this is using another chipset then th=
eir usual enclosures,
>>>>>> which would explain why it does have working ATA1x passthrough.
>>>>>
>>>>> I would expect that more modern devices to work. Vendors usually
>>>>> linearly allocate their product ids for new devices, and we could
>>>>> allow list product ids higher than this Seven to unbreak more modern
>>>>> devices by default and limit the amount of device quirks needed?
>>>>
>>>> Vendors do not allocate device ids that way at all, as there is no
>>>> requirement to do so.  I know of many vendors that seemingly use rando=
m
>>>> values from their product id space, so there is no guarantee that this
>>>> will work, sorry.
>>>
>>> I did not say it is a requirement, just that they usually do speaking
>>> of just this Seagate case. What is wrong with using that to
>>> potentially significantly cut down the quirk list?
>>
>> Because the down-side of this is if we guess wrong, we break things.
>>
>>>> What is wrong with just allowing specific devices that you have tested
>>>> will work, to the list instead?  That's the safest way to handle this.
>>>
>>> The problem is that out of the box it does not work for users, and
>>> normal users do not dive into the kernel code to find out and simply
>>> think their devices sucks. Even I for years thought the drive sucks,
>=20
> Ok, so I went there and wanted to quickly add the requested 1X_OK
> unusual flag, buuuutt, apparently all 32-bits of the US_FLAG enum in
> ./include/linux/usb_usual.h are already exhausted, ...

Ah yes, well that was bound to happen sooner or later.

> What should we do now? Make it 64-bit or other workaround suggestions?
> Maybe reverting the original 9 blacklist removals after all?

This is not part of any userspace API, so we can safely bump it to
a 64 bit type, say "u64", thanks.

Regards,

Hans

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/191b41b5-36fc-689a-b045-4c7735cebacc=
%40redhat.com.
