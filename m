Return-Path: <usb-storage+bncBDRZXY4CYYORBW4RSWCAMGQEPYFORYI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x545.google.com (mail-ed1-x545.google.com [IPv6:2a00:1450:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id EE31236A6C6
	for <lists+usb-storage@lfdr.de>; Sun, 25 Apr 2021 12:47:55 +0200 (CEST)
Received: by mail-ed1-x545.google.com with SMTP id w15-20020a056402268fb02903828f878ec5sf21295169edd.5
        for <lists+usb-storage@lfdr.de>; Sun, 25 Apr 2021 03:47:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619347675; cv=pass;
        d=google.com; s=arc-20160816;
        b=znF5wv+TioK58HpH0POuDYt5MBjBKo9EbgKjfpsRlg+7D+R5+Vt6IKu3wFFte/hTCy
         s+jK0RoQFbQjjk35c4iQPkwoKY7kt2rITRRUK7IhGa58prxvGv2avr+pI8XeVuSyTyqw
         aRawjfNS0pAR6NBbGwx0D5k9NuZf2mKcwrA/iOBH0jXMGjPGOV4R6Os6W8Jltsyzo62l
         5YAeaAWBch9IMycebBTsDpYZgwz2btmfwnRPBOc/pOjT7NOD474OKr39qiSV155PuUjT
         mQQNB2N/wsdl6EozZEH6pf5QMEq45EgSYLxjfgVjTi+uAvZhOjBRgYrzLqyrJU7icf8J
         naqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=6L+aGxHg6LiXBvcuAlcI/ExDfcalXqOOc7eCJiMqU8I=;
        b=yDlzvp5aA7mlbOmLtWg8lN+u9MIw2k0eM35y+Iyqbx6Ie1hhNWVDqmuGHCWA/K62bb
         nCmIPdEMc0GBoN2oMeDxdgn1rBVCK0+8nKyjWfCWPylXgaRScmwTbvBLreyQjI4Fmc8N
         sswTULrqe8ss9QmChNZFS1rtIGecU6dDK5cbqTPoFv6QtpGJM/qaDmPq8ifgE0FJCX9s
         S9E0ZIO1y1ZtCST7DleDBJzNqF9q2UINSCY2CJ/mv1xmMzw6KxjgGXydIIz4uVS5CF3l
         lcznr0kLgUypQX22LZzx/jGxgVzL5CXJKas6EN15BxXdDX2bEdZvuCNO03yW0nxpVp47
         Z0tw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=NrGMx3FY;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6L+aGxHg6LiXBvcuAlcI/ExDfcalXqOOc7eCJiMqU8I=;
        b=c+PQhubKC8uApdwqhd66csW6yQGeqmCrKu42THsQlCJ4k3fNALbJA3I7Fm6NLbkPqN
         seJWmDF9pWuluvnQvEwCkdrs+0XUwyqpIrPPe//xxedX4egHefTd4E4Y/iJOiC4Tq8MH
         F/5ag1ryQ0wEdkm5OFJPQr/VjjDGAjQGWR+Y0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6L+aGxHg6LiXBvcuAlcI/ExDfcalXqOOc7eCJiMqU8I=;
        b=LZCXOP9nfIZqwf6dfpLNHMeOWUkuWC4aZPxfI1sRuqfki7kwb85wvBHYzL0AN+uqES
         wLYuP7Swfcgm2f07XfYGTTZizbEtJVeHwoPOn4LHlffnHEz1Et4Nsbnne6NGoN++ql+i
         EBClmUP2V3KEfO8R8T+P67jVJl7mYvn/gtIVi0yA/oHYbCDnEx/Q6JNSDalelpDLLutQ
         fnhkjnKqwnZ83MWLbOEZLBwM8CbTjrs48wJkNc5rq+/1wAZg6Dmgmk3a93hXJ3AcBVh8
         8d2uvUNeYhbK1nfZr8Wd5j4aesnzjSUHGWqKeUVhJ/7+1UGh84ReUdLFDdZsnSn3xvHL
         kTfw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533m4QD1ft6M9k99Ofgr+9Rllf430iHSrUmPktia7LSYndKsvrjW
	VLGVP8DQ2nhki/iOzoPbNU1WQQ==
X-Google-Smtp-Source: ABdhPJycQ6WSFkp1yr7N+oT/h5mRGrABw9YSwR8KaaEqBaOdvZZh4omZz4U2c3+ZSv01eARVuQnXkw==
X-Received: by 2002:a17:907:2151:: with SMTP id rk17mr13125301ejb.203.1619347675662;
        Sun, 25 Apr 2021 03:47:55 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:906:a194:: with SMTP id s20ls32757ejy.9.gmail; Sun, 25
 Apr 2021 03:47:54 -0700 (PDT)
X-Received: by 2002:a17:906:4554:: with SMTP id s20mr5317639ejq.141.1619347674687;
        Sun, 25 Apr 2021 03:47:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619347674; cv=none;
        d=google.com; s=arc-20160816;
        b=BxGcY2l9nJc9xfvvSB6K8WyEq8OXljbzozRfywGKWmozNIBlhrse6XODpNcOT8qnKC
         daH99VO1Uzr8IPBzcqlW26U8cbljV/P104brodTJ3TgDsS7fEw3pyAQZP9YtFcv563cQ
         12aTM4j8vY2refo4qGrYplzac3IFB9o+zPHRj5S4uFNkPDjZ64jKIbfcQUbsQbSTHUIB
         Q1heqxko/37rcGNky+Y3SeIUJH5TgkLcHFdaOIVFhmglFFWUqp8FxYY0QZO7keoE9FXF
         1wxKs8ES4Rh5reuh/JC0QBC/ycD3Rv317cQ5rJbry1z6fNsP+P2ULiXYzpFAt4kDK9Ll
         Nxtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=GPe7oZJ+inpcWrlRBrTUPbpkLnlov2swiBkbP7YuquY=;
        b=K5nYb6kmxk2rClK49xvby+jWW4ODuaZVZYmtHlE957YDZx9+hBahnUWpG9vm++TdIa
         f97URWrygqnVrlvEOC9sLrGtPIYABiopcIBLfJaCCSakVapflAj9s4zzQ71LXuJ8jVcY
         6Df4ZtV5ankyTdFKWGXUScZZQ0g4f+mGiOun4fh+SuKjwf00lCerNW0gr5oQAS/bFpNm
         pP4IWBsk+y3El5KTq8bb7vr17L/S1lf+sUxoYq0iC/E+llaJ1I+cKgZWN3L+7IsKCX2/
         YGxwDvfTHZSi78J/l7MovyNUpOiH8lZkitulKE/1vKmFTghIp6GRrwjO3KwTq6fxf58D
         9+fA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=NrGMx3FY;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by mx.google.com with ESMTPS id x16si10083637edd.387.2021.04.25.03.47.54
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Apr 2021 03:47:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of hdegoede@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-432-Okcc60eYMoaIlPKY8fgiOA-1; Sun, 25 Apr 2021 06:47:52 -0400
X-MC-Unique: Okcc60eYMoaIlPKY8fgiOA-1
Received: by mail-ed1-f72.google.com with SMTP id cz7-20020a0564021ca7b02903853d41d8adso12025101edb.17
        for <usb-storage@lists.one-eyed-alien.net>; Sun, 25 Apr 2021 03:47:51 -0700 (PDT)
X-Received: by 2002:a17:906:8319:: with SMTP id j25mr6033195ejx.413.1619347670731;
        Sun, 25 Apr 2021 03:47:50 -0700 (PDT)
X-Received: by 2002:a17:906:8319:: with SMTP id j25mr6033176ejx.413.1619347670530;
        Sun, 25 Apr 2021 03:47:50 -0700 (PDT)
Received: from x1.localdomain (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
        by smtp.gmail.com with ESMTPSA id e11sm9274946ejl.115.2021.04.25.03.47.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Apr 2021 03:47:50 -0700 (PDT)
Subject: [usb-storage] Re: [PATCH] unbreak all modern Seagate ATA pass-through
 for SMART
To: Rene Rebe <rene@exactcode.com>, gregkh@linuxfoundation.org
Cc: stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net
References: <20210425023133.GC324386@rowland.harvard.edu>
 <883AF188-7817-42E2-84E8-F1DD7A5F3C08@exactcode.com>
 <YIUbHKqs2gQPAu2T@kroah.com>
 <20210425.124119.1949311822603950729.rene@exactcode.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <7187e934-b87a-edce-2ac6-f201ea9c7b7d@redhat.com>
Date: Sun, 25 Apr 2021 12:47:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210425.124119.1949311822603950729.rene@exactcode.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: hdegoede@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=NrGMx3FY;
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

On 4/25/21 12:41 PM, Rene Rebe wrote:
> Greg KH wrote:
>=20
>> On Sun, Apr 25, 2021 at 09:20:59AM +0200, Ren=C3=A9 Rebe wrote:
>>> Hey,
>>>
>>>> On 25. Apr 2021, at 04:31, Alan Stern <stern@rowland.harvard.edu> wrot=
e:
>>>>> Seagate devices" in 2017. Apparently some early ones where buggy, ...
>>>>>
>>>>> However, fast forward a couple of years and this is no longer true,
>>>>> this Segate Seven even is already from 2016, and apparently first
>>>>> available in 2015. I suggest removing this rather drastic global
>>>>> measure, and instead only add very old broken ones with individual
>>>>> quirks, should any of them still be alive ;-)
>>>>>
>>>>> Signed-off-by: Ren=C3=A9 Rebe <rene@exactcode.com>
>>>>>
>>>>> --- linux-5.11/drivers/usb/storage/uas-detect.h.backup	2021-03-05 11:=
36:00.517423726 +0100
>>>>> +++ linux-5.11/drivers/usb/storage/uas-detect.h	2021-03-05 11:36:16.3=
73424544 +0100
>>>>> @@ -113,8 +113,4 @@
>>>>> 	}
>>>>>
>>>>> -	/* All Seagate disk enclosures have broken ATA pass-through support=
 */
>>>>> -	if (le16_to_cpu(udev->descriptor.idVendor) =3D=3D 0x0bc2)
>>>>> -		flags |=3D US_FL_NO_ATA_1X;
>>>>> -
>>>>> 	usb_stor_adjust_quirks(udev, &flags);
>>>>
>>>> I don't want to do this unless you can suggest an approach that won't=
=20
>>>> suddenly break all those old buggy drives.  Just because they are now=
=20
>>>> five years old or more doesn't mean they are no longer in use.
>>>
>>> Well, what do you propose then? A allow quirk for all new devices going=
 forward?
>>> Given that the user usually needs to actively run something like smartc=
tl
>>> manually on the drive I don=E2=80=99t see that this should cause too ma=
ny issues.
>>> I don=E2=80=99t have any non-supporting device - can we not just add th=
em to the
>>> quirk list when someone reports one?
>>
>> How about since you know your device works, you make the check detect
>> your specific device and not apply the flag to it?  You should be able
>> to do so based on the
>=20
> Sure, while that does not really solve this for all the other newer
> Seagate drives other users might have at home, here is a patch
> checking for this one USB product ID. I hope that is what you meant:
>=20
> Signed-off-by: Ren=C3=A9 Rebe <rene@exactcode.com>
>=20
> --- linux-5.11/drivers/usb/storage/uas-detect.h.backup	2021-03-05 11:36:0=
0.517423726 +0100
> +++ linux-5.11/drivers/usb/storage/uas-detect.h	2021-03-05 11:36:16.37342=
4544 +0100
> @@ -113,5 +113,6 @@
> =20
>  	/* All Seagate disk enclosures have broken ATA pass-through support */
> -	if (le16_to_cpu(udev->descriptor.idVendor) =3D=3D 0x0bc2)
> +	if ((le16_to_cpu(udev->descriptor.idVendor) =3D=3D 0x0bc2) &&
> +	    (le16_to_cpu(udev->descriptor.idProduct) !=3D 0xab03))
>  		flags |=3D US_FL_NO_ATA_1X;
> =20
>=20

As I indicated in my other email which crossed with this one, please make t=
his
more generic, add a new US_FL_ATA_1X_OK flag and make the above code check =
that +
add a new unusual_uas.h entry for your device setting the new flag.

Note there is no need to add support for the new flag to usb_stor_adjust_qu=
irks()
if a user overrides quirks for a device on the kernel commandline without s=
pecifying
the "t" flag then the US_FL_NO_ATA_1X flag will already get cleared.

I deliberately put the:

        if (le16_to_cpu(udev->descriptor.idVendor) =3D=3D 0x0bc2)
                flags |=3D US_FL_NO_ATA_1X;

code before the usb_stor_adjust_quirks() call to allow users to override th=
is
from the kernel commandline.

Regards,

Hans

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/7187e934-b87a-edce-2ac6-f201ea9c7b7d=
%40redhat.com.
