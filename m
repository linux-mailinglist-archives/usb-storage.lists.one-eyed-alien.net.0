Return-Path: <usb-storage+bncBDD5ZFHSSQARBKEGUP4AKGQEREF3AJI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x445.google.com (mail-wr1-x445.google.com [IPv6:2a00:1450:4864:20::445])
	by mail.lfdr.de (Postfix) with ESMTPS id 05FEA21BDB8
	for <lists+usb-storage@lfdr.de>; Fri, 10 Jul 2020 21:36:09 +0200 (CEST)
Received: by mail-wr1-x445.google.com with SMTP id b14sf7064096wrp.0
        for <lists+usb-storage@lfdr.de>; Fri, 10 Jul 2020 12:36:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594409768; cv=pass;
        d=google.com; s=arc-20160816;
        b=ENPigPj5P6sv318JjkKinLsnLFpVc38TcUGlV8Qz1CfbFYupTNw48KBFHiadz30/G3
         DpvD/wH8fNjpklvpOikT/eRE3MHZ+RVehf0hp25rnIs+J9boRBj/6BLQ2L1W8WyNpGUS
         REGWovVtneTwZtydoNsSJi/SP8OErtx+fqKoNxUsdR9LzjkpIlj2iaa/1/kphe9DtLt5
         A3WbE1xYrWkabmSw12LBQz7l3CZs8/yMpjUmnGtm1agEQ+h/6m1o8qKNTcePXOTl5TuB
         gdqXLihZFZB6UkZ+XY6/XqrU+vB/nCuSLmkur0B0wirBuZVLvmXwK85KaBHmee5DTGHS
         zvdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:date:message-id:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=tMayklTvJo026AYTDJ3rBlHPRl9+5y0knUMIMwPx2Cs=;
        b=q6xzd77i3TN8ypTuqDNv5J/yC9cS5jm3SeK+/wzl/3Ketn6WpTthOMigAThbb9eGfw
         7IveQS+YgTGOAzk5q0QIL5TjsAsJDVGs9XOiTzvMtYUy19OBPpEr8dnLUkUXE7w+sMXm
         4znz9mOyJ46DT82zU31IDBWrEasC89qZzibp73RjaP5woZ0Q+i717c6e2VVEE0fAzJ5R
         nRIYuVbypDvupebwlUxNU4AjtMQPzdNx6rVXX3qNuAdabXPENIGfKgNxiwjMKXAjxHhy
         dMB2jCzzOrbDUpNTEmCZgLt2/qzcl51g66kSUNhsgmSK20xKtgjKf0qhBfoxEk2zGKmP
         8iXw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 2a01:4f8:c0c:1465::1 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:mime-version
         :in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tMayklTvJo026AYTDJ3rBlHPRl9+5y0knUMIMwPx2Cs=;
        b=UDLoAvAl8m/duMU8yPAaxHrAEhFfJjk3vpdUW+QAI2uqUycYHIfhSsI1XTaw6BBC0W
         eImzMOxI3VqMgrAZDQutlom7TKe0yAqT+UKxnkw5akR7dortZn3HlPmx4rmq8iBBJfG1
         Gv7zLYnWr8JOjZtf9OvlfbQtosiC1aNPMf4ZQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tMayklTvJo026AYTDJ3rBlHPRl9+5y0knUMIMwPx2Cs=;
        b=nr6GfeAFVnKtdLAK7SLoxIIkq10l94GUkYmN17YLhNRQadT288MEm8gpJFnsjoyPbx
         5xZa5FXa4iRaU13Q71zauVDfIKWIXhw2V7BubOzHxPitUgb4tt8qx94Zh6gDDyLwyC6c
         fG76/wyYftKpot3T9xTjP6wO92suzZzIa2WaQUi5SCl/7ASPwbm8dnfrluTMD5IObeXm
         EyTCkBDkFuFF8shT6p7767m6a97bvJkwtpX12eoNf0foLU6l2ocyI7lWTRvC2o+mC22p
         ay13/qx2sGsUIkrhQG73xqAcxbFCXF7v1AC7fkGJkmdPYIpwr0WCBqPF8Roy3XB2BgY1
         Ngsg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531TgYi8RoIKOtWIMF0IAa6OQ3o5d+3mvVTKn1sWNzjRCvvQyDtt
	xunsjX82JtCim4uIgigGX72XXA==
X-Google-Smtp-Source: ABdhPJxnRZfBfxmOezH/yAVstFh+X5ogbrdD1k7QmYPcgef+hNv4l9Q2iI+XrdjYUiLGIQcYljClpQ==
X-Received: by 2002:a5d:5341:: with SMTP id t1mr73447663wrv.207.1594409768713;
        Fri, 10 Jul 2020 12:36:08 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:adf:b1cf:: with SMTP id r15ls2066787wra.3.gmail; Fri, 10 Jul
 2020 12:36:08 -0700 (PDT)
X-Received: by 2002:a5d:5084:: with SMTP id a4mr71495663wrt.191.1594409768083;
        Fri, 10 Jul 2020 12:36:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594409768; cv=none;
        d=google.com; s=arc-20160816;
        b=WTJiBRLNxH99ksOblhHM7zAOBqpwoWe3DcJiM4PCbaEPJ2Z0q4OywozxKK8WywV93O
         b/WkkTpn4JgnvBT3LBIO72cagZI9bzevZq4A51MQ0wUGCnVWfyTiWINn3QYLL08Qaugu
         ub2rCzdOWSy5h1Od3EMItYhp1BFxHI4BfvHv2rCLRdz4sljq7E0pNC/u1lPoTSq9TTZB
         0ySv3sVyz/14QKYJD0NyEBBTOOyio5M0tjxNpsbuyuOb2mZf4whEistn+tNpwJqsnWBh
         s16Mmp7oZifvw1EJ/Zspjq3qFrrgPXJvaNlvqtwOEvKFD5/2x3hp5ul73CfBdfWdPOSu
         vJgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :date:message-id:from:references:cc:to:subject;
        bh=vPDKMR4EWkz64TrSQrV5hPlf8hpxsgEAw5nlw/KZgkE=;
        b=xcPfRImAsEW2gxkc6w9TpJjSSRdRfXXV+/iw4P6+sFkrcF7EYS/q2GWuCpdkwdNA1e
         0/LOqFLzHz1+z74gbqcjrhMi71SMw/jcMAJcy2Ucs9eMAFz2U7AiH2Ikbo+GGxTmgAva
         yWwYB4ZmDSkcufKBRPyCbg+b0KvqNjeFJjASnT9Gbh/73hzq+T300tU7bO5zkE0H2QTb
         ocHGNck9jhpmg/3QHXqGjFveQXKP1sXVDQ9AYxGSA7VKMAcu9OrhY94jcZoiN46t1ncf
         6nIwrLTrkKL+aGmdb+pWclIq48a6/hieJnYxY64H+yozaxiKlXnLQIX0y8fYVgpdfBge
         kljg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 2a01:4f8:c0c:1465::1 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
Received: from smtp.al2klimov.de (smtp.al2klimov.de. [2a01:4f8:c0c:1465::1])
        by mx.google.com with ESMTPS id j12si5460447wmi.165.2020.07.10.12.36.08
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jul 2020 12:36:08 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 2a01:4f8:c0c:1465::1 as permitted sender) client-ip=2a01:4f8:c0c:1465::1;
Received: from authenticated-user (PRIMARY_HOSTNAME [PUBLIC_IP])
	by smtp.al2klimov.de (Postfix) with ESMTPA id DE2C0BC116;
	Fri, 10 Jul 2020 19:36:04 +0000 (UTC)
Subject: [usb-storage] Re: [PATCH] Replace HTTP links with HTTPS ones: USB
 MASS STORAGE DRIVER
To: Stafford Horne <shorne@gmail.com>, Greg KH <gregkh@linuxfoundation.org>
Cc: stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>, David Miller <davem@davemloft.net>,
 Linus Torvalds <torvalds@linux-foundation.org>
References: <20200708095500.13694-1-grandmaster@al2klimov.de>
 <20200708103928.GC585606@kroah.com>
 <6b78a3fd-04b9-fc8e-b5c6-f03372a4cd31@al2klimov.de>
 <20200709061409.GA130260@kroah.com>
 <20200710103621.GA437393@lianli.shorne-pla.net>
From: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Message-ID: <53342e1a-8430-2557-94c7-1da979a79e68@al2klimov.de>
Date: Fri, 10 Jul 2020 21:36:03 +0200
MIME-Version: 1.0
In-Reply-To: <20200710103621.GA437393@lianli.shorne-pla.net>
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



Am 10.07.20 um 12:36 schrieb Stafford Horne:
> On Thu, Jul 09, 2020 at 08:14:09AM +0200, Greg KH wrote:
>> On Wed, Jul 08, 2020 at 08:41:54PM +0200, Alexander A. Klimov wrote:
>>>
>>>
>>> Am 08.07.20 um 12:39 schrieb Greg KH:
>>>> On Wed, Jul 08, 2020 at 11:55:00AM +0200, Alexander A. Klimov wrote:
>>>>> Rationale:
>>>>> Reduces attack surface on kernel devs opening the links for MITM
>>>>> as HTTPS traffic is much harder to manipulate.
>>>>>
>>>>> Deterministic algorithm:
>>>>> For each file:
>>>>>     If not .svg:
>>>>>       For each line:
>>>>>         If doesn't contain `\bxmlns\b`:
>>>>>           For each link, `\bhttp://[^# \t\r\n]*(?:\w|/)`:
>>>>> 	  If neither `\bgnu\.org/license`, nor `\bmozilla\.org/MPL\b`:
>>>>>               If both the HTTP and HTTPS versions
>>>>>               return 200 OK and serve the same content:
>>>>>                 Replace HTTP with HTTPS.
>>>>>
>>>>> Signed-off-by: Alexander A. Klimov <grandmaster@al2klimov.de>
>>>>
>>>> Your subject lines are very odd compared to all patches for this
>>>> subsystem, as well as all other kernel subsystems.  Any reason you are
>>>> doing it this way and not the normal and standard method of:
>>>> 	USB: storage: replace http links with https
>>>>
>>>> That would look more uniform as well as not shout at anyone.
>=20
> I would agree.  The OpenRISC patch for this series says:
>    "OPENRISC ARCHITECTURE:..."
>=20
> Here it would just be "openrisc:..." I think fixing the whole series is n=
eeded.
> Greg is not the only on complaining.
>=20
> Ideally, I think, it would be good to have this sent out as a series i.e =
[PATCH 3/55]
> rather than individual patches so this could be discussed as a whole.
1) To who? As right now? As right now plus Torvalds, KH, Miller, etc.?
    As right now, but all-to-all?
2) Apropos "series" and "as whole"... I stumbled over
    `git log --oneline |grep -Fwe treewide`
    and am wondering:
    *Shouldn't all of these patches even begin with "treewide: "?*
    E.g.: "treewide: Replace HTTP links with HTTPS ones: GCC PLUGINS"

>=20
> -Stafford
>=20
>>>> thanks,
>>>>
>>>> greg k-h
>>>>
>>> Hi,
>>>
>>> I'm very sorry.
>>>
>>> As Torvalds has merged 93431e0607e5 and many of you devs (including big
>>> maintainers like David Miller) just applied this stuff, I assumed that'=
s OK.
>>>
>>> And now I've rolled out tens of patches via shell loop... *sigh*
>>>
>>> As this is the third (I think) change request like this, I assume this =
rule
>>> applies to all subsystems =E2=80=93 right?
>>
>> Yes, you should try to emulate what the subsystem does, look at other
>> patches for the same files, but the format I suggested is almost always
>> the correct one.  If not, I'm sure maintainers will be glad to tell you
>> otherwise :)
>=20
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/53342e1a-8430-2557-94c7-1da979a79e68=
%40al2klimov.de.
