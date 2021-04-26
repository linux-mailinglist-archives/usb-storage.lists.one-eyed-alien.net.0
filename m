Return-Path: <usb-storage+bncBDRZXY4CYYORBPP6TGCAMGQELHAIHRQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x546.google.com (mail-ed1-x546.google.com [IPv6:2a00:1450:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5F236B000
	for <lists+usb-storage@lfdr.de>; Mon, 26 Apr 2021 10:52:14 +0200 (CEST)
Received: by mail-ed1-x546.google.com with SMTP id i2-20020a0564020542b02903875c5e7a00sf3230820edx.6
        for <lists+usb-storage@lfdr.de>; Mon, 26 Apr 2021 01:52:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619427133; cv=pass;
        d=google.com; s=arc-20160816;
        b=LyvXOPLhESefQkyO102Lvfl6cBimHjrDDls3u3nO/a8ym9FXP+vHk9cAVdKXFFdeG1
         sGASdUErdnIf4W8pVSWBKTzgXHOo+58VWFZ8s/FJLZWXxcgD2GF4h5P1zpfh0Zy9jCaj
         borg7pLio3j5RqulMACndfhhqHQAJFkadT/W9JLL8eEStSW29mDsRE7vLTeMgFxzAdYZ
         Pr3x1XrhshJGGFwCjA8jHpxQz93jEkbNkkudMlAkXHVhJyWF9gWYNPoVOLXC//UtGbL8
         D0hnfHeXP178SC/KxYXxIZiKT+jz55mwemADRayJX0FAK8Y7TGbVscTdU/dusjBEYisW
         Q2pQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:references:cc:to:from
         :subject:sender:dkim-signature;
        bh=dHVsB9BytZzSlBvDkuC/1SdiaYO0GcgSGenM4qqs8L4=;
        b=gAiH+Rjzs1fCMWCc03AJP8IWFOb/CcF5miEUyqE9FKv1SCUfYCBJPR/mziC5ZQuhM+
         R7qCf1293kcOVibX5/FiwN/bdK7TaI95LfheppkkqdW6mi+9YzXTkWG2kwQlMXRtwoCr
         ml0qf+znIn9qPs7FQz/vjX/LsazcCCcQedk82TsFt0YUE4UdORlnktSXgwq5jvTN3969
         g0l8VFY4GCvIMEsKchlUmaBooB9PZGizRGOdsF2YNRZzTIEcAxSbsn07RtPHprsp3aJj
         MjZ0gVr9peiCLtv073aNfBarOAdPXd6HcakmSfoi2IgKO8ifL0aju0V0KHhGFcSavCRV
         vfUg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=jCoCfTIt;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dHVsB9BytZzSlBvDkuC/1SdiaYO0GcgSGenM4qqs8L4=;
        b=JnqdZqgwT7IPPjUsVq3aG9yBNwU08O4edw9HDxzDHT7Na1cBwhgZTGJrwntc+Qlp2j
         gmWlDAvP9MRaegOFKg7cRnDohj8fPLJF9cs8QE5bSh5FV3Kc5pHuNfOe/Yr6FXxb7xdK
         Bt+jXj40Hq4B4prbrg+MGG/xNW7NxhMw2PTqA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:references:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dHVsB9BytZzSlBvDkuC/1SdiaYO0GcgSGenM4qqs8L4=;
        b=e+5HYVgx0kKpFu/XYLJ6ylj0HTKvZB+5WV4iL5PC4xZ+M7YWiEE4eoenPl1KyBNfK0
         GjsnXFis8KY8ucosmwTkuyaftISpfABoF5zO6YXqqPnNAhBYzJDo5h7wHYRfJ10QDlQA
         LmB6G/IXRk7R0nh7QJBNZJlgf5cMTdbwMN6paMTKgPK91/VJzSJi4V7bMDkavZZrPPq/
         kQ6uepsiNy9zMNIF/15vtpo3WhpWJ5GbQ9mKwNmGmaWyT+2L7Z+/grrmDCEn4JhdG18g
         7Knra2RhYOIJRNxU1MvZJEp61KeQ0noxx6jem16YY/ZxWDf2JizydHLA1qm1ZzU1IJG2
         g+4A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533w5oUiKAq0YZQrnfojuFvO4kBdLoqSbXKkK2pu9QhvMuta5kED
	0J+DVcD27vuV5Gn7t+cfwH71dQ==
X-Google-Smtp-Source: ABdhPJxPiGPpFZTB7HDc/e4l6HHmILar1zBs9mzPJ3SakWlTq62EGyEyToB3GiMr7xyf+C38xj4+rg==
X-Received: by 2002:a17:906:dc8:: with SMTP id p8mr172872eji.75.1619427133786;
        Mon, 26 Apr 2021 01:52:13 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:906:acb:: with SMTP id z11ls2083511ejf.2.gmail; Mon, 26
 Apr 2021 01:52:12 -0700 (PDT)
X-Received: by 2002:a17:906:9b15:: with SMTP id eo21mr18078941ejc.237.1619427132656;
        Mon, 26 Apr 2021 01:52:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619427132; cv=none;
        d=google.com; s=arc-20160816;
        b=PKgFroepEIT2TggMLOTc7xVnsqvT6TwLPwbyn1A9GnPDrWjsKSojqWO2GztVFTytW/
         fT239Uri6olpTMwhgVReUh7abfepy4ogYicSdnEYnIxwSBxZeLEONlZqT/nRAIpxTZV6
         Un0v8isq+Ezc49mzqTFIYPVFrA+ksnm9DTEeCxVGofTLab8W/ZtReJURFMjxFPwa8qj0
         cTD70bFKc+Vw3ank4m9mdr6iEd4m2IlHFh2HjDzaC01Gss/qghAuxYo6y82J2kx96vIZ
         2//v5mp7c0EZMb1qjUepYr0Bs1w6QsqMv7dwYT2c21azSc8o1ShreiG4tlOy8qZldESN
         FWeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:from:subject
         :dkim-signature;
        bh=mR9kBwfjPD2WdOx1UrS9vgDOicoGDNzV5OxoVxBVVQc=;
        b=U5HndTXHuLYxIGQLmlE4nI9jq7b0ceDGvWRY78FHWQLVR+OoeAKwcVKCh5Wmy1Xher
         H7im1U8OylTtQWQC88HPkFcTlGPpYpUCBrO62ONaLyeZclWpvs3BeCsU3g4M4+tbb3YS
         0YXGS1skxCLeOYqyTFmnmRc8BWez1zeMF1sb2irT4Ki2ZjX+ySx9GS5KWqCtVaqm8Egy
         2qBRUQ4YiSGlF/I1HhagxVTS17bKBh4Ob7OEx06fRIqTbzEAKX/VHQ2Z5YGP5Qwj4eew
         1ZLjqCyHjtWxBRHPbY9d9rJRt753OO3M2WtbFtOdpz1Ld9FgfFABRsEae/E0JteVRJVU
         FtGA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=jCoCfTIt;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by mx.google.com with ESMTPS id v7si14832768edj.328.2021.04.26.01.52.12
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Apr 2021 01:52:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of hdegoede@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-52-aaHu6WT2O5-l_vUY9q4Jrw-1; Mon, 26 Apr 2021 04:52:08 -0400
X-MC-Unique: aaHu6WT2O5-l_vUY9q4Jrw-1
Received: by mail-ed1-f72.google.com with SMTP id c15-20020a056402100fb029038518e5afc5so15152773edu.18
        for <usb-storage@lists.one-eyed-alien.net>; Mon, 26 Apr 2021 01:52:08 -0700 (PDT)
X-Received: by 2002:a17:906:270a:: with SMTP id z10mr9431527ejc.204.1619427126944;
        Mon, 26 Apr 2021 01:52:06 -0700 (PDT)
X-Received: by 2002:a17:906:270a:: with SMTP id z10mr9431505ejc.204.1619427126693;
        Mon, 26 Apr 2021 01:52:06 -0700 (PDT)
Received: from x1.localdomain (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
        by smtp.gmail.com with ESMTPSA id n11sm11262559ejg.43.2021.04.26.01.52.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Apr 2021 01:52:06 -0700 (PDT)
Subject: [usb-storage] Re: [PATCH] unbreak all modern Seagate ATA pass-through
 for SMART
From: Hans de Goede <hdegoede@redhat.com>
To: =?UTF-8?Q?Ren=c3=a9_Rebe?= <rene@exactcode.com>
Cc: Alan Stern <stern@rowland.harvard.edu>, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <YIVZ2l9qUfkcyPpG@kroah.com>
 <20210425.141536.1295354861910527121.rene@exactcode.com>
 <20210425144531.GA336783@rowland.harvard.edu>
 <20210425.170224.894337589208455353.rene@exactcode.com>
 <0e698ca2-06e6-6ee7-1c39-a4352207a40e@redhat.com>
 <83FED4AF-2078-43BA-95A8-1EB44C13329D@exactcode.com>
 <c7f619f8-b5c5-2a27-9a9e-e757c5cf5802@redhat.com>
Message-ID: <41e49952-e3e8-5e66-d04a-047bd6d914e4@redhat.com>
Date: Mon, 26 Apr 2021 10:52:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <c7f619f8-b5c5-2a27-9a9e-e757c5cf5802@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: hdegoede@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=jCoCfTIt;
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

On 4/26/21 10:16 AM, Hans de Goede wrote:

<snip>

>> 	https://www.smartmontools.org/wiki/SAT-with-UAS-Linux
> 
> Thank you, that is another interesting link. Note that the page does
> acknowledge that the problem with Seagate enclosures is real and
> that in many cases the choice is falling back to usb-storage support
> with working ATA pass-through, or UAS without ATA pass-through.
> 
> Given the huge performance advantages of UAS, especially with SSDs,
> IMHO it is better to go with UAS in this case. But I guess in some
> scenarios SMART support may be more important then UAS support.
> 
> I'll contact the author of that wiki page to discuss this further
> with him and see if he has any good ideas for this problem.

Done:

https://listi.jpberlin.de/pipermail/smartmontools-support/2021-April/000670.html

Note I wasn't sure if I should add any of the people here to the Cc.
I've chosen not to do that. Let me know if you want me to add you
to the Cc in my next email in that thread.

Alternatively you can temporarily subscribe to the list:
https://listi.jpberlin.de/mailman/listinfo/smartmontools-support
it is very low traffic.

Regards,

Hans

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/41e49952-e3e8-5e66-d04a-047bd6d914e4%40redhat.com.
