Return-Path: <usb-storage+bncBDBMLTW6VQDRBOVNS6CAMGQEU6B6XKY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x345.google.com (mail-wm1-x345.google.com [IPv6:2a00:1450:4864:20::345])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F9636A946
	for <lists+usb-storage@lfdr.de>; Sun, 25 Apr 2021 22:53:14 +0200 (CEST)
Received: by mail-wm1-x345.google.com with SMTP id d78-20020a1c1d510000b0290132794b7801sf2374942wmd.1
        for <lists+usb-storage@lfdr.de>; Sun, 25 Apr 2021 13:53:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619383994; cv=pass;
        d=google.com; s=arc-20160816;
        b=HNTADnm7CNWoXYu5JrM/IWP3ny7djObVOrxy4/QnizAX6uejgZnms2atukdMUP56Qq
         eWmbeTNTgVuxeAtwj14GV7XpKgBXExbt6b/LqNJDOAgd3eNCVYE6Fn9Cd7mdZnN/OzXg
         GoS/yr9v+KFzWspDTmI9oGBjd7TjLicrI22nsM7P/uU3gIyRmGxHhnHI8TkZeI28V6/P
         Y4Z+RzkyNGtJlvC2wJbBPcw5ek9RfTpBtoEzi2NJgG04wQ7N03mkq02mxuKvoRcFUWJl
         m8M8fdwKQ6Y2wkRtJ5k2ksRFi6y0CJOw6652lgdGrXCnHTzAw7ZmOBktMG5lv+BKFybK
         lzow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:references:message-id
         :content-transfer-encoding:cc:date:in-reply-to:from:subject
         :mime-version:sender:dkim-signature;
        bh=QKSTR9BsrHFRhu2s/Qt/I2ZTqrPE90Q9HHBHdpP2sLU=;
        b=xc+OTWsIsJIFER4++Wg+8TnGzxd+p7YHK/UDx7qPGMDc9Ivfgn9d8HLys13qjdGpXt
         GHpfgQpe8fAXZF43U4Hfrg60PHIQl5cJvCFKthSteHxtv80bTNOJYARBm4LoallcKdlK
         4UpmRgz5Dx1xj0gti8xb6rDQjcxJgowaMZEQFtnfQzPzoyq0SAZ3kPZ0jwZEvLgyDik0
         PKpzEJhS63H20SSjcjrLZ0rhgiTK47K4lR3+VoJ/D7Lt9R49284zHL1LNzrqXPekLh9/
         /Lq3ivcZ4UMtamSjBnwsjWjpl+fMlnmhmjyUhdVx3sd0t2QqJAsqaVroEyHeh2wgBjv0
         PAQA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@exactco.de header.s=x header.b=K82egPiq;
       spf=pass (google.com: domain of rene@exactcode.com designates 144.76.154.42 as permitted sender) smtp.mailfrom=rene@exactcode.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QKSTR9BsrHFRhu2s/Qt/I2ZTqrPE90Q9HHBHdpP2sLU=;
        b=L+qadWBq+ut4j66eN47Jl2JhhFRFxbSFBZz+ouubIYDTop5uxfFiHz3jkQkN0uTFWx
         bkp/+42ktVYhqJS2YB5mnGPRS0Ixj2f9R6znUTZo1NaqIQXu4oou7YULqNG2MIg3Z0ae
         KbjmwE0Mb+pDw65snJaLZdKY2IUyGzmpS69Hk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:in-reply-to
         :date:cc:content-transfer-encoding:message-id:references:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QKSTR9BsrHFRhu2s/Qt/I2ZTqrPE90Q9HHBHdpP2sLU=;
        b=Z5dE2BrDuxcVWEprMefMzs2aknr+mPd8v540fweeh0h+BJppCcWrA0wKpKIlV7hzXg
         UqlSaDdqVGXpzlGB+k6PxIixFWQQ7sj7e4z0TRAs7TFOhjnycFk1N5p9+StY5x/nR39O
         rO/9ga0S9e7oIULfXzx9Vgos/H6Vq0SP74CWfGNvIsQU5PzDVXNrvGRhJ9H0npWl5Frd
         KBkoUB1Uxu+cg7P5BL+FbT9+ojoKle4r56flJKlwHfZu2HHFzJ0jv/gW1VZDqe564PR8
         c+IWFeQNaGUt6GFMn+nB4xvrDl/lLTIVBdtVpssmEGo+3z6QwnDtpUu/7JSiOP/wkZBo
         Sc6g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM53232+AYpKN0lpWnA8qFiVXjMcF5riKIHaKZt2FmCCoThyeODuPD
	GpKdP3GQ5JrsmOBvMGeBUvAH3w==
X-Google-Smtp-Source: ABdhPJwP3v4r5Ub89kkraQTxadJ7gcq2b13dbTwrvu4f2H7XvDloL3qS9uAc7Ajd7xKkqJnsx/w4RA==
X-Received: by 2002:a1c:7215:: with SMTP id n21mr16440533wmc.61.1619383994404;
        Sun, 25 Apr 2021 13:53:14 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:adf:fb47:: with SMTP id c7ls5766095wrs.0.gmail; Sun, 25 Apr
 2021 13:53:13 -0700 (PDT)
X-Received: by 2002:a05:6000:1209:: with SMTP id e9mr18893298wrx.192.1619383993260;
        Sun, 25 Apr 2021 13:53:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619383993; cv=none;
        d=google.com; s=arc-20160816;
        b=P27mbSsDPAzFKYIz+p0p9o5eaI9DhhJaSTycv3qV53C7y42dqwDDYvtIIGH6kCqqzj
         D9i1LG/H3lT3CT2SyOGBWUZOUgN0YkNtEH+suu1/w0uwHBcXp9E9MG6uM9kBdk2Y0VzX
         5DzzrLq8b2hfAdoKrDBhWK+RYzl4uRJdyoo5Xqs7wo+UMvan1wAcQkyVq2JW61xDwcjs
         Lifmi8qkY2m+gRGYtbw5ywvcL+IiQEbPzuGAWcbHgeJYXkuFx5dYfJwR2KSeTjGfd8cy
         k9hglYG6EhSEx+/xqpaKZxRgfjkfRiVzaVC1d8k9q4401GACW02DvTTCr4wzz9QvfxXZ
         0Lfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:dkim-signature;
        bh=OUL/CalyBcMSfR8f+GSsyGkvIPqUdS0mhRF0+NxvX9s=;
        b=ishHcOVprfRax05ShEh52YiVsDepLdN8F8HylzRHA0JsYy5vYGkVlovoz5dWC4Wnlm
         VZl/ojselNMPDzJLD0dE+DU7u9dn1GXlKp0blWC4wxWncSh8NJGCgksYqIc/U6LSagkT
         cS4l1kdo2atb90HKxL+Fx2pzT7IIEGAw3Mxh9FS+QV92vEX7JjeE/R+/hhZcwDCmVGOZ
         +njL/OUSLA2p0rqHN2ffFCkXVbUFLJk7w05ss4BLFLg7qv1hlL2JDIX/S7lPfjy4IubT
         un2Q3JA2AhnGhuxTTrMbhpicc/Y4pZsc/qETARzRClnBESMxiI+IKT9UWV9rjJdA8lvU
         SlJg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@exactco.de header.s=x header.b=K82egPiq;
       spf=pass (google.com: domain of rene@exactcode.com designates 144.76.154.42 as permitted sender) smtp.mailfrom=rene@exactcode.com
Received: from mx.exactcode.de (mx.exactcode.de. [144.76.154.42])
        by mx.google.com with ESMTPS id s8si3501866wrv.211.2021.04.25.13.53.13
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Apr 2021 13:53:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of rene@exactcode.com designates 144.76.154.42 as permitted sender) client-ip=144.76.154.42;
Received: from exactco.de ([90.187.5.221])
	by mx.exactcode.de with esmtp (Exim 4.82)
	(envelope-from <rene@exactcode.com>)
	id 1lalki-0004oU-UU; Sun, 25 Apr 2021 20:53:17 +0000
Received: from ip5f5bd0cf.dynamic.kabel-deutschland.de ([95.91.208.207] helo=[192.168.0.14])
	by exactco.de with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.86_2)
	(envelope-from <rene@exactcode.com>)
	id 1lalgz-0000dC-1j; Sun, 25 Apr 2021 20:49:30 +0000
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.4\))
Subject: [usb-storage] Re: [PATCH] unbreak all modern Seagate ATA pass-through
 for SMART
From: =?utf-8?Q?Ren=C3=A9_Rebe?= <rene@exactcode.com>
In-Reply-To: <0e698ca2-06e6-6ee7-1c39-a4352207a40e@redhat.com>
Date: Sun, 25 Apr 2021 22:52:25 +0200
Cc: Alan Stern <stern@rowland.harvard.edu>,
 gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net
Content-Transfer-Encoding: quoted-printable
Message-Id: <83FED4AF-2078-43BA-95A8-1EB44C13329D@exactcode.com>
References: <YIVZ2l9qUfkcyPpG@kroah.com>
 <20210425.141536.1295354861910527121.rene@exactcode.com>
 <20210425144531.GA336783@rowland.harvard.edu>
 <20210425.170224.894337589208455353.rene@exactcode.com>
 <0e698ca2-06e6-6ee7-1c39-a4352207a40e@redhat.com>
To: Hans de Goede <hdegoede@redhat.com>
X-Mailer: Apple Mail (2.3608.120.23.2.4)
X-Spam-Score: -0.5 (/)
X-Original-Sender: rene@exactcode.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@exactco.de header.s=x header.b=K82egPiq;       spf=pass
 (google.com: domain of rene@exactcode.com designates 144.76.154.42 as
 permitted sender) smtp.mailfrom=rene@exactcode.com
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

> On 25. Apr 2021, at 20:25, Hans de Goede <hdegoede@redhat.com> wrote:
>=20
> Hi Rene,
>=20
> On 4/25/21 5:02 PM, Rene Rebe wrote:
>> Alan Stern <stern@rowland.harvard.edu> wrote:
>>=20
>>> On Sun, Apr 25, 2021 at 02:15:36PM +0200, Rene Rebe wrote:
>>>> From: Greg KH <gregkh@linuxfoundation.org>
>>>> Subject: Re: [PATCH] unbreak all modern Seagate ATA pass-through for S=
MART
>>>> Date: Sun, 25 Apr 2021 14:00:26 +0200
>>>>=20
>>>>>> I would expect that more modern devices to work. Vendors usually
>>>>>> linearly allocate their product ids for new devices, and we could
>>>>>> allow list product ids higher than this Seven to unbreak more modern
>>>>>> devices by default and limit the amount of device quirks needed?
>>>>>=20
>>>>> Vendors do not allocate device ids that way at all, as there is no
>>>>> requirement to do so.  I know of many vendors that seemingly use rand=
om
>>>>> values from their product id space, so there is no guarantee that thi=
s
>>>>> will work, sorry.
>>>>=20
>>>> I did not say it is a requirement, just that they usually do speaking
>>>> of just this Seagate case. What is wrong with using that to
>>>> potentially significantly cut down the quirk list?
>>>=20
>>> You didn't read commit 92335ad9e895, did you?  It lists a large number=
=20
>>> of Seagate devices that don't work with ATA pass-through, and three of=
=20
>>> them have product IDs that are larger than 0xab03.
>>>=20
>>> Please check the facts before guessing about things that will cause=20
>>> problems for other people.
>>=20
>> I really don't appreciate the unfriendly tone on the linux kernel
>> mailing lists (which is why for 20 years I never felt like contributing
>> here mo),
>=20
> I'm sorry to hear that the admittently sometimes unfriendly tone
> on the kernel mailinglists have stopped you from contributing.
>=20
> Note that I do believe that things have gotten better recently.
>=20
> As for this email-thread, I don't really see anything wrong with
> Alan's reply here. You have been quite argumentative in this entire
> thread about how things would be much better if they are done your
> way.
>=20
> I cannot speak for the others but I certainly have gotten annoyed by
> the tone of your emails so far, I apologize if any of that annoyance
> has bleed through in the tone of my emails. I do strive to always
> stay professional (but as all of us I'm only human).
>=20
> <snip>
>=20
>>>>> What is wrong with just allowing specific devices that you have teste=
d
>>>>> will work, to the list instead?  That's the safest way to handle this=
.
>>>>=20
>>>> The problem is that out of the box it does not work for users, and
>>>> normal users do not dive into the kernel code to find out and simply
>>>> think their devices sucks. Even I for years thought the drive sucks,
>>>> before I took a closer look. If you long term want more new devices in
>>>> an allow list than the previous quirk list included (9 or 10 does not
>>>> sound that many to me), ... whatever you prefer ,-) I would rather
>>>> have 10 quirk disable list than potential many more white listed the
>>>> next years to come. Maybe we shoudl simply restore the prevoius
>>>> quirks.
>>>=20
>>> That's a possibility, and in the future we may do it.  But probably not=
=20
>>> until the enable list grows to a comparable length.
>>=20
>> Yeah, why future proof it now, ...
>=20
> Perhaps look in the mirror and start with improving the tone of your
> own emails ?

Thanks, I re-read them and find them pretty ok.

>> which is exactly what brought us
>> here from the original regression. The enable list will likely not
>> grow quickly as most users will just expect a broken device hw/
>> firmware and not bother looking into it and instead live w/o SMART.
>=20
> Right because people can happily live without SMART most users won't
> even know they're missing some optional functionality. Non working disks
> OTOH will lead to bug reports, bug reports of which Alan, Greg and I
> will be on the receiving end.
>=20
> Moreover the kernel has a very strong no regressions policy, and what
> you suggest would almost certainly break stuff for some of our users,
> so we can simply not do as you suggest.
>=20
> I notice that you call the lack of SMART support on your own disk
> a regression, but that has never worked with any recent kernel
> (due to the discussed code which has been present since 2017) so
> from the no-regressions kernel policy pov that is not a regression.

Well, it was working before, and does not since the quoted commit.
I call that a regression. Weather that was recently or some years
ago does not change the definition of regression IMHO.

On further internet searching that there are at least 4 more drivers
listed on the smartmontools page that should work:

	https://www.smartmontools.org/wiki/Supported_USB-Devices

Plus a dedicated page about this change and devices stopped working:

	https://www.smartmontools.org/wiki/SAT-with-UAS-Linux

Given this, I will not continue spending my time on implementing
what you suggested and instead simply reverted this for our Linux
SDE as I believe results in the best out of the box experience
for our users:

	https://svn.exactcode.de/t2/trunk/package/base/linux/uas-seagate.patch

Have a great day,
	Ren=C3=A9 Rebe

--=20
 ExactCODE GmbH, Lietzenburger Str. 42, DE-10789 Berlin, https://exactcode.=
com
 https://exactscan.com | https://ocrkit.com | https://t2sde.org | https://r=
ene.rebe.de

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/83FED4AF-2078-43BA-95A8-1EB44C13329D=
%40exactcode.com.
