Return-Path: <usb-storage+bncBAABBC5UTD4AKGQESADY3SA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x847.google.com (mail-qt1-x847.google.com [IPv6:2607:f8b0:4864:20::847])
	by mail.lfdr.de (Postfix) with ESMTPS id 23179219037
	for <lists+usb-storage@lfdr.de>; Wed,  8 Jul 2020 21:10:05 +0200 (CEST)
Received: by mail-qt1-x847.google.com with SMTP id h24sf18181768qtk.18
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jul 2020 12:10:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594235404; cv=pass;
        d=google.com; s=arc-20160816;
        b=nsCGdqo3vhlyJBpaKRRQ+pSeFnWEjqulU+dITgcZQoiMxAFPXjpjnb/InyGJNEQlu9
         1uF6/3VaqeaSmQyrVz272PmcON+OaEIIMP9qgbZK16Kz/6lJhsjhGyHAB8FPVjegfOvW
         uj3DztnJwCPXJQOHoNNlkpLzNDu2KrO/+jiIOJ6eVn3vsyiVjB6PK6jGTFvIe97uOGOV
         2r4yaq5VEPHuFLOGAdHVKx32ZQvQEH+VLBk9FeEmYWaGO/XynvxIWZLpVTmsxUK2USwW
         uP0kO+KS5oqLJqggWwBXkItrchnTC7aYZzTXD/S6ckuDgvJJpY715CBemoPD3ijcftfK
         ciuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:date:message-id:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=qLHbm6IR+AT9G+OxBIgetGD/IjaPELFP+EVIh5uKMwU=;
        b=c+uxDphEL4OJCiApLC2FR95nGa9mYrbhCYQ1enlf24/agM2PxHpjK7OJ0SDcy77rMu
         X4aIpAecdku9/pRuv59gMp8LQR48Grc7MGkGzBSuip9/XGEpT7q2DKQkQKaoLkU9l0Om
         URMjevqE+nuF9Lr44Ohnq8qQyoRuhiT5YXNg2TJo+7k73Z1lKncSEw2jOqW+HT2RDHIu
         eiEadD8rQloijlu2g+SJh9sdE1j9gqmZ9z+jgGSzOfEvsGmkLFgefEmPgOFYB15pektJ
         sPpgtmeSJxVF1oJHOzjSzNFMzH5YtCyVCYfpSxLhBu3jUhtr/F2Nx5HWPLtT+5kUymm6
         39CQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 2a01:4f8:c0c:1465::1 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:mime-version
         :in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qLHbm6IR+AT9G+OxBIgetGD/IjaPELFP+EVIh5uKMwU=;
        b=MuHW70jI0PS25MW8QZxuEfkGQmcnJ+sQ6jdPEjDjz+DjQYpOulJ4pHUpUjrqlWV5Kw
         6XYSy1VhBNKs308ztsu9eLNW+M+tTMNhdQSVbBpgk+3v9kkdZhH7Dg99oclW2sFdrJVY
         luVk/awsCaJq5cHSPiniK4hwg8AzTxE9y6FAI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qLHbm6IR+AT9G+OxBIgetGD/IjaPELFP+EVIh5uKMwU=;
        b=Ah8GwWeA1EV5q/pOdZM7PIs41HV/DaXvMwWPWJ+4x5NWo6PlnBj7jhaAq1Yds4G/pM
         MEqqE698XkSQGuXJyIH52oVzlqvauhvdFjk7XfjPzGlr682S1B+DqAZ57BrjUXnluLXx
         ttGzBNhMYcIdL/A4XxPGKQGzLOpF36DW6TC91P6SDPiN8P8Z3hFa1/A1tXQqXn1+EUqj
         fapwnKVlFArKjb/kU3+UbjXzHnhWOvSIYGzULqLfn1402GdozXoZabJZE8Tbcl5CFu4l
         q6UNPQwReYt8uAhTuNcI2dygL0c2XKrMqaqU2I9j3RZ+dDhTVzfUDzYwrDkB+NmCSz70
         rcaQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM5301kSSaW+vMDnt9MVpjAPDHct9JeHsUc6LIV/SohoveGxCB2pL1
	P8wNd+8Vg9Wy4TjeooPDp/5KEA==
X-Google-Smtp-Source: ABdhPJwtTYtt0dLxiWfduwPNowf0pwadid/a5lmX5ngG8I/TGE3vEOF2MEtm5bLUTXx6QBtEcbxjLg==
X-Received: by 2002:ad4:5483:: with SMTP id q3mr55607391qvy.99.1594235404026;
        Wed, 08 Jul 2020 12:10:04 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aed:2f43:: with SMTP id l61ls1214182qtd.11.gmail; Wed, 08
 Jul 2020 12:10:03 -0700 (PDT)
X-Received: by 2002:ac8:4d85:: with SMTP id a5mr36815337qtw.60.1594235403742;
        Wed, 08 Jul 2020 12:10:03 -0700 (PDT)
Received: by 2002:a05:620a:1274:b029:fa:473b:86c9 with SMTP id b20-20020a05620a1274b02900fa473b86c9msqkl;
        Wed, 8 Jul 2020 11:41:59 -0700 (PDT)
X-Received: by 2002:a05:6000:111:: with SMTP id o17mr63268612wrx.178.1594233718609;
        Wed, 08 Jul 2020 11:41:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594233718; cv=none;
        d=google.com; s=arc-20160816;
        b=E8H7ep2Lqqr1AWbdwV+Ukpff2feSRfLJH5eRXfIV9LE0YPmJTjF736qGJiERghpp+/
         EBtRmW2Fo9msIuiXjU+wegbvTq/fXkX4X6B7AZMmPfLt+9pS/s1tivmxYAx8uMaEWMDZ
         Ewmr1Xd+6U8g7gDxUAAlMd3wCjoy1RsS4Uy7+SM2YbeytbK2JXKBo8sqUimzvTp4SnKp
         wpphdoZuw1FC8nJKLVikeC33AfuxuoBHgwW14cID8bAGDRCbskFm2cKYFt3wGUY+Lyfi
         1HpFhjINW60ScQC7LcWyVLlRuqE2fWjUb7AsoWdBY91ZR8Ej65ok87x+LP2kLURCg1oQ
         xcFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :date:message-id:from:references:cc:to:subject;
        bh=MblCNpf5zESRZVXHvCrtjDSoWqftx1uMxmS/hUf0YBo=;
        b=w0LQ4CeL5qGlYaUgUV5TytfBvAd7zyRGnKz/1LRQAyEmyL7iT+hukq+tJEFfKBODQ2
         EFGSzaA+oa5BbE4IvIBPDs5McdmdMB+ab+WNZ5aDyANb6JYm/A4xQgAW4M7+2Tvb+Ra0
         0uGClHlvI+V/ZyBA6jjGO3uTKFZHWGOX7WbFK5q2TGhvxBCS4picN/piKkYQ6Kj19RV+
         X2GA7un7nCBuCF85a06zhhTTaMHrXFy2MymQQIqLnmqqjFcIuZ3tK41qfgJhcf6gKwPL
         RVvLePWnK6XMCagmcSfqLzErpjaQbpuHUVwsPM4/OKHaUHH72ELyBygHEGRHpfK+0oMm
         kHag==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 2a01:4f8:c0c:1465::1 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
Received: from smtp.al2klimov.de (smtp.al2klimov.de. [2a01:4f8:c0c:1465::1])
        by mx.google.com with ESMTPS id s16si304486wrw.160.2020.07.08.11.41.58
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2020 11:41:58 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 2a01:4f8:c0c:1465::1 as permitted sender) client-ip=2a01:4f8:c0c:1465::1;
Received: from authenticated-user (PRIMARY_HOSTNAME [PUBLIC_IP])
	by smtp.al2klimov.de (Postfix) with ESMTPA id F22C1BC102;
	Wed,  8 Jul 2020 18:41:55 +0000 (UTC)
Subject: [usb-storage] Re: [PATCH] Replace HTTP links with HTTPS ones: USB
 MASS STORAGE DRIVER
To: Greg KH <gregkh@linuxfoundation.org>
Cc: stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>, David Miller <davem@davemloft.net>,
 Linus Torvalds <torvalds@linux-foundation.org>
References: <20200708095500.13694-1-grandmaster@al2klimov.de>
 <20200708103928.GC585606@kroah.com>
From: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Message-ID: <6b78a3fd-04b9-fc8e-b5c6-f03372a4cd31@al2klimov.de>
Date: Wed, 8 Jul 2020 20:41:54 +0200
MIME-Version: 1.0
In-Reply-To: <20200708103928.GC585606@kroah.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Spamd-Bar: /
X-Original-Sender: grandmaster@al2klimov.de
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 best guess record for domain of grandmaster@al2klimov.de designates
 2a01:4f8:c0c:1465::1 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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



Am 08.07.20 um 12:39 schrieb Greg KH:
> On Wed, Jul 08, 2020 at 11:55:00AM +0200, Alexander A. Klimov wrote:
>> Rationale:
>> Reduces attack surface on kernel devs opening the links for MITM
>> as HTTPS traffic is much harder to manipulate.
>>
>> Deterministic algorithm:
>> For each file:
>>    If not .svg:
>>      For each line:
>>        If doesn't contain `\bxmlns\b`:
>>          For each link, `\bhttp://[^# \t\r\n]*(?:\w|/)`:
>> 	  If neither `\bgnu\.org/license`, nor `\bmozilla\.org/MPL\b`:
>>              If both the HTTP and HTTPS versions
>>              return 200 OK and serve the same content:
>>                Replace HTTP with HTTPS.
>>
>> Signed-off-by: Alexander A. Klimov <grandmaster@al2klimov.de>
>=20
> Your subject lines are very odd compared to all patches for this
> subsystem, as well as all other kernel subsystems.  Any reason you are
> doing it this way and not the normal and standard method of:
> 	USB: storage: replace http links with https
>=20
> That would look more uniform as well as not shout at anyone.
>=20
> thanks,
>=20
> greg k-h
>=20
Hi,

I'm very sorry.

As Torvalds has merged 93431e0607e5 and many of you devs (including big=20
maintainers like David Miller) just applied this stuff, I assumed that's OK=
.

And now I've rolled out tens of patches via shell loop... *sigh*

As this is the third (I think) change request like this, I assume this=20
rule applies to all subsystems =E2=80=93 right?

Best,
AK

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/6b78a3fd-04b9-fc8e-b5c6-f03372a4cd31=
%40al2klimov.de.
