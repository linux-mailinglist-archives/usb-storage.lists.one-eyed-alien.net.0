Return-Path: <usb-storage+bncBDRZXY4CYYORBTU3TKCAMGQERXRA7AA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ej1-x645.google.com (mail-ej1-x645.google.com [IPv6:2a00:1450:4864:20::645])
	by mail.lfdr.de (Postfix) with ESMTPS id 15FFA36B118
	for <lists+usb-storage@lfdr.de>; Mon, 26 Apr 2021 11:54:23 +0200 (CEST)
Received: by mail-ej1-x645.google.com with SMTP id jl27-20020a17090775dbb029037ccdce96e6sf9937281ejc.21
        for <lists+usb-storage@lfdr.de>; Mon, 26 Apr 2021 02:54:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619430862; cv=pass;
        d=google.com; s=arc-20160816;
        b=H4SUquO8pPcyGH6acW+g4JKkTjgXr1Blt1yklg31krIH84TN3QCvk2qAFEIex2ou4B
         Isx4Wo3fOiK3BE49iRGCGdy+ktULe7zINBhsqpcUmD1r2MM6nTNOj5PQSVNeomT6njzt
         LorSl56nPfxXDj1mYcp2N88CxI9Zz5+M2PFDQL5WjFj2FmwwpvD3GzvJDk/ZtAhlaBbW
         C2AUcAoNzggAGviVNFc9xfGC1Gx8NSo1miOFXMUYY50YiZWmDGsZwCzt/mi6qkbMhArQ
         IenGDHSH/vpq6AArgdu//74NYJcejLNs3uhpZ3s4540YI/R6JETFCe4yMPFHwK3ejyGg
         uS6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=yk4f/KUSoJ0Ycwt1kz+ciXlnmFamTFXwiF+pI7WfEQ0=;
        b=qIfubz44LaNgpFSKug+9NiYhcNPQbOyiEfs1rzetUyUMlmjZ+tshBKCmC16LSCrSgf
         I1WMowZREKl2oM7A1NwCvrSi1TEZvJKl/PvfHaPFtMiRshhNMfqHJJ8fs67LyaIpQmUg
         GVaMs1Fh2wNeFZSuNuFCFr8ae0Bz85pGSPADMoKm9oulfRIbstr5nWEt1zgUkyYo6Knv
         TSufoQ7TkimUcLy8P9cXKaZhTaQuOi0E45csZ9/b3SMLWWuBNNoyRFv/PsUkbQ8ZqXfm
         Ke2SoFvqA4RYERa38JkAXPNcWOlG8bUx+KzH7v4GZoAgXPT8xIZULhPiDkO8e6OQvAKF
         rNiQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=dQZtFhQC;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yk4f/KUSoJ0Ycwt1kz+ciXlnmFamTFXwiF+pI7WfEQ0=;
        b=XLPQqnAIAkXHJrrKbzEUer3wp/toDCLsMAKqmLPNW1/ISK156aPoPZ7siwWO/nG4nc
         dK/Im7xLrMzzKlPGwjqH64QVyCwgziiznkmKo3/CqYsxwlLNzqHdEOGF0qs8q5hs5EQS
         KbRdQN7AGf0VF6xzZJ6p2rAI51Zj9pLEF2Mmk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yk4f/KUSoJ0Ycwt1kz+ciXlnmFamTFXwiF+pI7WfEQ0=;
        b=ZrHC1zmPqWQ5fmvB3ManDyoLTlXj8O/TLvSsQN6j8hDmiSRARNeDSdEfvzSVR/nNxu
         RAeSzTCdd3EPtglb4VyG1k67AzOwxwoxmBqwKGjojTP+azNf1KKRHrfrEwhKCHFlfiqw
         LbNFdq10Du26XNrgxf0xftxy2HZknE4+D4aSZRly0W25dXIe33MbXyHqSsBaBVXzGpXm
         dfHc41sgvUUlfJxT0k555zGcQh8yVxLj0jpENMcS05yROBLPZSU31Luk7jG83lEf17ZT
         fW8AFPQtkQuDEG4fxcU+FLMNPVcw0BHulJhP4DIKbN2KZ6oll4VyJI5Ebk5zoTza3O9s
         Mp8w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531jDEXPTeHts3ISrKEKpLgBnVUxAssCULzTqqEe/JlAmLjQFUwR
	tHrnsPONB8arodNX3/iFKQMgew==
X-Google-Smtp-Source: ABdhPJyO1s+LFdKYctu/XwU7lKdoMv2Ntstbw1omeY7LJjx6wpa2waWfDrparposPwdpj4Kbl90foA==
X-Received: by 2002:a17:907:1b06:: with SMTP id mp6mr17998647ejc.292.1619430862742;
        Mon, 26 Apr 2021 02:54:22 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:4c2:: with SMTP id n2ls7539739edw.2.gmail; Mon, 26
 Apr 2021 02:54:21 -0700 (PDT)
X-Received: by 2002:a05:6402:3486:: with SMTP id v6mr19859274edc.109.1619430861646;
        Mon, 26 Apr 2021 02:54:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619430861; cv=none;
        d=google.com; s=arc-20160816;
        b=zBS+yRCgPc1ZgvCuq3kJA1pTh3Z1ucfASxzNrWNRTF1lg4dgyvIFbJIBHV/tcbnION
         h55kKnEDpnliEhW35s3Zcu0+Ll+HyguYChscX0p6OcPzrZNy6t94ZmosP8S5mml7iGiO
         3mzLy26pDXNN4d++ojhHtGzfk8k4C2svZkuxnOTyENhD675CSMyASbMnmGXtxHxNjMXX
         3ZwxwGPcEGgb6UcjGccJppu01OCFG5AR6fEBrJfy/D7h7LZEX82FdAwn4Zob5vP/Yt8W
         bN4GmBReBtBHzemMvg4Hay4H7N2EbCK3oEZYfkRRF7WcniRdModIiiixWHPVWeQsdQuU
         /pIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=IGEhv0/hUFj3cHu6S4PGMMt/mAfIUPSSxo6hM2PSOx8=;
        b=NGT1v6zwxL9ettrsLJKL3kdulc4EgtDxdsvP9en9CfPrF8KX5TjR+fEb87O90KelUD
         TrHxFm17iViktL4UWw3i0TkqYIkPoVu/c42lMyPSdGSxK1c6movrQ5C15Egn2FzM1n+0
         0v3uXGhta+DadG2VXSklBIEbaaVdyoaClwaiZfOYNOPsbjwDLXYDfjHfFUBzFcqEPL+m
         bljGNni0KAO+uaijPXV1WtFWzO7ZlVGbVRX4L6a38+DjTwqisFoJSFTOcpDY2STECfO7
         tNav8v48HN2UwsrYJwFWz3MZZ5s2Bv0rQB4K2rOB5+NidGDTQuwkJkedqW7lrhYEErkY
         6xbw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=dQZtFhQC;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by mx.google.com with ESMTPS id n18si14593185eja.643.2021.04.26.02.54.21
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Apr 2021 02:54:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-309-0DP5rLWiONOiuPd93SWZaw-1; Mon, 26 Apr 2021 05:54:14 -0400
X-MC-Unique: 0DP5rLWiONOiuPd93SWZaw-1
Received: by mail-ej1-f71.google.com with SMTP id q21-20020a170906a095b029038718807866so989845ejy.19
        for <usb-storage@lists.one-eyed-alien.net>; Mon, 26 Apr 2021 02:54:14 -0700 (PDT)
X-Received: by 2002:a50:e607:: with SMTP id y7mr20445235edm.18.1619430853286;
        Mon, 26 Apr 2021 02:54:13 -0700 (PDT)
X-Received: by 2002:a50:e607:: with SMTP id y7mr20445213edm.18.1619430853093;
        Mon, 26 Apr 2021 02:54:13 -0700 (PDT)
Received: from x1.localdomain (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
        by smtp.gmail.com with ESMTPSA id u9sm7438345edq.68.2021.04.26.02.54.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Apr 2021 02:54:12 -0700 (PDT)
Subject: [usb-storage] Re: [PATCH] unbreak all modern Seagate ATA pass-through
 for SMART
To: Rene Rebe <rene@exactcode.com>
Cc: stern@rowland.harvard.edu, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <0e698ca2-06e6-6ee7-1c39-a4352207a40e@redhat.com>
 <83FED4AF-2078-43BA-95A8-1EB44C13329D@exactcode.com>
 <c7f619f8-b5c5-2a27-9a9e-e757c5cf5802@redhat.com>
 <20210426.114009.1308148203829096478.rene@exactcode.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <15433246-75ee-2618-2e20-0ab93b45a111@redhat.com>
Date: Mon, 26 Apr 2021 11:54:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210426.114009.1308148203829096478.rene@exactcode.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: hdegoede@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=dQZtFhQC;
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

On 4/26/21 11:40 AM, Rene Rebe wrote:
> From: Hans de Goede <hdegoede@redhat.com>
> Date: Mon, 26 Apr 2021 10:16:12 +0200
>=20
>> Hi,
>>
>> On 4/25/21 10:52 PM, Ren=C3=A9 Rebe wrote:

<snip>

>> Ideally we could just wave a magic wand and make this all work,
>> but unfortunately reality is not cooperating, so we need to come up
>> with some pragmatic solution here.
>=20
> I did not mean to be compative, however, as usual in real life we just
> do not agree with all the reasoning ;-)

Yes, thank you for understanding.

>>> On further internet searching that there are at least 4 more drivers
>>> listed on the smartmontools page that should work:
>>>
>>> 	https://www.smartmontools.org/wiki/Supported_USB-Devices
>>
>> That is a very interesting link thank you. That certainly advocates
>> for a generic approach introducing a new US_FL_ATA_1X_OK and then
>> adding quirks setting that for both your model and the 4 models
>> listed there.
>>
>> I would really appreciate it if you could submit a patch series
>> for this. But if you don't want to do that then I'll put this on
>> my own TODO list.
>=20
> Maybe another week, however, as this is not the semantic I prefer that
> would only cause more work for me with a bigger reverting patch in our
> tree at the end, ...

Thank you for considering working on this. If you decide not to do
this in the end, please let me know then I'll add this to my
(way too long) TODO list.

> <snip>
>=20
>>> Given this, I will not continue spending my time on implementing
>>> what you suggested and instead simply reverted this for our Linux
>>> SDE as I believe results in the best out of the box experience
>>> for our users:
>>>
>>> 	https://svn.exactcode.de/t2/trunk/package/base/linux/uas-seagate.patch
>>
>> I've taken a quick peek at this and I see that you've also restored
>> the old per model quirks to disable ATA pass-through on known to be
>> broken models, good.
>=20
> Yes, I reverted that, and added two more I found from the old email
> thread that probably triggered the code change back in the day.

Ah I was already why there were more entries then I expected,
good job.


>> Note that the list of broken models which you've added it missing the
>> 0xab25 and 0xab38 product-ids which according to:
>> https://www.smartmontools.org/wiki/Supported_USB-Devices
>> have broken ATA passthrough support with UAS.
>=20
> Thanks, I added those two now as well.

Great, that means your patch will be a good starting point for
the broken devices list if we do ever decide to flip the
default for Seagate devices back to allowing ATA pass-through by
default.

>> If I assume that these behave as some of the other Seagate drivers and
>> the bridge-chip crashes when trying to use ATA pass-through, then once
>> these changes hit your users and customers you have just broken usage
>> of those disks together with your product. This nicely illustrates
>> why we don't want to make this change in the mainline kernel.
>>
>> Note depending on how important disk performance is for you
>> an alternative approach might be to modify the Seagate product-id check
>> to simply disable UAS on Seagate devices, that would be a lot safer.
>=20
> We do not run a smartd by default>

Ah yes that helps, unfortunately in the mainline kernel we cannot
assume that that is the case.

> and I actually prefer a driver that
> deaults to behave by the standard book, and get notified when
> something goes wrong, instead of globally disallow listing a whole
> vendor.
>=20
> Maybe it is still an option to restore the updated unusual quirk list
> entries, that way users with newer devices get their SMART back sooner
> than later and this also encourages Seagate to continue producing
> fully working devices, without hiding any ATA pass-through bugs by
> default ;-)

It is always an option :) I just don't think that this is the right
moment in time to do it. Notice that your email archive digging +
the https://www.smartmontools.org/wiki/Supported_USB-Devices have
turned op 4 new broken devices for which we did not have quirks
before. I'm simply afraid that that is just the tip of the iceberg.
Causing peoples disks to stop working is not just a bug, it is
a very very bad bug, so yeah I'm quite conservative here, sorry.

So for now I believe that the best thing we can do is to agree
that we disagree on the best way to handle this.

(Now if only I had this magic-wand which could give me the complete
list of all broken models, then things would be different.)

Regards,

Hans

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/15433246-75ee-2618-2e20-0ab93b45a111=
%40redhat.com.
