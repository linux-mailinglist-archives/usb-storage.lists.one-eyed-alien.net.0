Return-Path: <usb-storage+bncBDBMLTW6VQDRBJ4JS2CAMGQEXOQQPVQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x348.google.com (mail-wm1-x348.google.com [IPv6:2a00:1450:4864:20::348])
	by mail.lfdr.de (Postfix) with ESMTPS id D364636A7E0
	for <lists+usb-storage@lfdr.de>; Sun, 25 Apr 2021 17:03:03 +0200 (CEST)
Received: by mail-wm1-x348.google.com with SMTP id x10-20020a1ce00a0000b029013893b0532csf2138274wmg.2
        for <lists+usb-storage@lfdr.de>; Sun, 25 Apr 2021 08:03:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619362983; cv=pass;
        d=google.com; s=arc-20160816;
        b=dzJJXuHMcfKhY8iOt9GlNvQJfcmg0XDUU4HCZazj0FyaGbdz6wxwFzbC7Sq5nfNDKq
         50nJwG29ILTYKT4BzUC5pjDC2rlfY4lDNUogl5eDs82AY2/Pue3jSdZ4YmhuOztxAgn9
         SRE5xv7IXUyDLmXTTiXcKbkHdDzhTwLHcbxJTDxdrusIQATXqjnh/H8XRYn/5pA/BwOg
         3+2YzoI9K+dhrrHAbFdjVExgn2xBlhngYfLug9HpCzfO28oTzIBAN0VsHo7NL7hS5gD/
         WWWbw4XhV0mYX7Z3dE//5qslj0Ss09ejjifAY4/3gg3HTWoFVItXNBUbC049qvLpqthq
         3/YA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:from:subject:cc:to:message-id
         :date:sender:dkim-signature;
        bh=BPw38mSmY2+ATZZUwPnK7hJYJ4PqDdDeOWocH9vBgeo=;
        b=kAjUKOsIdlRoEPfNivaG4mWTPSOQIJJQNjW6cN7Ss8gkZu+jWsS2IZJu5izNzfAPvx
         Lgc9xoGGjFoN0RHtIC4aO/UVzNrKI2bN4I2Oh95P85rgC/iSAQMqbwADI91X6jt/gL6U
         9iKcn6VPIg7sGF3AJDwPMOYm3gdNReAkMKw9ZWYab5oB5R0lZbz5qalQR82NcjblGVxa
         zd/OZtbyaMhY41qwt9JCuTw0tfo5vq20JZZ/sf6LuXfqJXpV2p3A/jWZC5bRelWDbq5M
         cjnHWP+yHKD+wnKnOGb2gumRnL5in7C4Q/BJcNZcylopNouci/ToCM1kPMhCj/CvFu95
         +8qQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@exactco.de header.s=x header.b=R1LOFOlU;
       spf=pass (google.com: domain of rene@exactcode.com designates 144.76.154.42 as permitted sender) smtp.mailfrom=rene@exactcode.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:message-id:to:cc:subject:from:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BPw38mSmY2+ATZZUwPnK7hJYJ4PqDdDeOWocH9vBgeo=;
        b=LDfXzhfk5iRKqXQxe5EkrehxVN85eng0E8XpItAzczfXnrTpJ/oK1TU6SePt57vwn7
         okB4FDdoRE0MRG5LT80LGVjYufI6d1RA8ADr/Ybgq5Yh6FgAkUyaCzQZf/fz8o/etJj5
         pHH6XQxaSkRliukO9rEaVxTMRPms3ddDowRJI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:to:cc:subject:from
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BPw38mSmY2+ATZZUwPnK7hJYJ4PqDdDeOWocH9vBgeo=;
        b=fnmhpBc3thAPrUKtoetjp66x3xOrbEy/J0I5Rdy5GkoD2T0YzeAk6XC/vk2Q2Lr/uE
         dmsPlu1yykVboAGTk/ehG8oUbxj5vsZnM1EpzA2+7oooHAh1sdqN3XUXnvJbufCnH3ki
         TmoAZOTbN8nyhVPjdNR0VZNgPSxsepWoviEX74dJA4/N+JQOw8Na0HhtYGoCLzIkrRTw
         Sh1EQCnoTO2al6U3JOnZK/Q/3fPeLomX2c5XFzZ+YHfdOurLgAm+PcdY3JD+7k4b0Eyk
         FxKDF33ZQcnmLZ8CtoYBaJpgy4jaVKNGZTH3pVlt8CwSNaFX00A5FhHI5lrV580mVhd2
         nxNg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530n+Ta1THxm0GUrhkpkBBWaLhT0SGjJ6l/MxxO0BNalIZlwPS5+
	idgfiL3AEWrqA2WPshu01piE0g==
X-Google-Smtp-Source: ABdhPJxxboJ11tSjcAANsdPxX0WdsaoXwm72Q4fCVwzw9b//3i/d8cn3RPSeKr+uovMhuGEBPZsZ1w==
X-Received: by 2002:a05:600c:4ba3:: with SMTP id e35mr360993wmp.47.1619362983618;
        Sun, 25 Apr 2021 08:03:03 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6000:1287:: with SMTP id f7ls5216398wrx.3.gmail; Sun, 25
 Apr 2021 08:03:02 -0700 (PDT)
X-Received: by 2002:adf:e650:: with SMTP id b16mr17105943wrn.273.1619362982453;
        Sun, 25 Apr 2021 08:03:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619362982; cv=none;
        d=google.com; s=arc-20160816;
        b=IQYo7LFmqm8k1Zh/oF5Mom7HbRJnqhVYXhZZFFlVquJLn87hBiCRuiyBsaKZl7FXbb
         QLRdXq06OXS6sWAaPE4aqGJDc3aIDpgOiuMeEXh5B4X3+otuSBBt3nPFlGxLqwAWhfqw
         kbeNyGx3k1RcH2DyZO+rvdkQxm/lC6fY7rEGBcVmXrKnUXYL732zEaJjkdyXOF0GZYE8
         FB5RNmcCUTrANRKDNuJu900qn7+sXTQTh+9kXMTUxN9J5GOH9RKOt8IJ8sOC9qmOJDr0
         9gxkPQIMfNSddXgyOOFEqZv57KfI8FRR1/Tjq6hVLYci6AIRpmsbDm19L/+dPYXGtu/c
         NfGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date:dkim-signature;
        bh=BPw38mSmY2+ATZZUwPnK7hJYJ4PqDdDeOWocH9vBgeo=;
        b=NKzprPuzgmvml8MPtjPxXvrtKnxl5p3bgfKHkiUD/U+Ek3be2DFlGDqXBPRqbqhfDi
         mRENLOfCZGS1tsYAF2U5YAgXgJZ7dCn690qD/6MvDk9n4XvRUrUNmtBF5vXV/d7b2EWp
         SMqXYIxwUuvnlr0AeWMuPyFOYizAhQzaUe8pglgqYGzYmeTUHtSJN5DuX7WDEYsDe2Gg
         yjJ1SiGUWFv7cBVMcz5bNh6sNEmlmbSMju0/NuNBAuLoLYhkQHPWTljFPXJPfh3EqoHl
         y/eSC7ft3qs0uVbqCY2AIrQtDDZb5JA+qXSHaIVKUBXaAb0G09N0izmQTRkMLStOtNpW
         JNVw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@exactco.de header.s=x header.b=R1LOFOlU;
       spf=pass (google.com: domain of rene@exactcode.com designates 144.76.154.42 as permitted sender) smtp.mailfrom=rene@exactcode.com
Received: from mx.exactcode.de (mx.exactcode.de. [144.76.154.42])
        by mx.google.com with ESMTPS id i8si14209818wry.193.2021.04.25.08.03.02
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Apr 2021 08:03:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of rene@exactcode.com designates 144.76.154.42 as permitted sender) client-ip=144.76.154.42;
Received: from exactco.de ([90.187.5.221])
	by mx.exactcode.de with esmtp (Exim 4.82)
	(envelope-from <rene@exactcode.com>)
	id 1lagHr-0003fm-0C; Sun, 25 Apr 2021 15:03:07 +0000
Received: from [192.168.2.131] (helo=localhost)
	by exactco.de with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.86_2)
	(envelope-from <rene@exactcode.com>)
	id 1lagEB-0000Kl-EI; Sun, 25 Apr 2021 14:59:19 +0000
Date: Sun, 25 Apr 2021 17:02:24 +0200 (CEST)
Message-Id: <20210425.170224.894337589208455353.rene@exactcode.com>
To: stern@rowland.harvard.edu
Cc: gregkh@linuxfoundation.org, hdegoede@redhat.com,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH] unbreak all modern Seagate ATA pass-through
 for SMART
From: Rene Rebe <rene@exactcode.com>
In-Reply-To: <20210425144531.GA336783@rowland.harvard.edu>
References: <YIVZ2l9qUfkcyPpG@kroah.com>
	<20210425.141536.1295354861910527121.rene@exactcode.com>
	<20210425144531.GA336783@rowland.harvard.edu>
X-Mailer: Mew version 6.8 on Emacs 27.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable
X-Spam-Score: -3.1 (---)
X-Original-Sender: rene@exactcode.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@exactco.de header.s=x header.b=R1LOFOlU;       spf=pass
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

Alan Stern <stern@rowland.harvard.edu> wrote:

> On Sun, Apr 25, 2021 at 02:15:36PM +0200, Rene Rebe wrote:
> > From: Greg KH <gregkh@linuxfoundation.org>
> > Subject: Re: [PATCH] unbreak all modern Seagate ATA pass-through fo=
r SMART
> > Date: Sun, 25 Apr 2021 14:00:26 +0200
> > =

> > > > I would expect that more modern devices to work. Vendors usuall=
y
> > > > linearly allocate their product ids for new devices, and we cou=
ld
> > > > allow list product ids higher than this Seven to unbreak more m=
odern
> > > > devices by default and limit the amount of device quirks needed=
?
> > > =

> > > Vendors do not allocate device ids that way at all, as there is n=
o
> > > requirement to do so.  I know of many vendors that seemingly use =
random
> > > values from their product id space, so there is no guarantee that=
 this
> > > will work, sorry.
> > =

> > I did not say it is a requirement, just that they usually do speaki=
ng
> > of just this Seagate case. What is wrong with using that to
> > potentially significantly cut down the quirk list?
> =

> You didn't read commit 92335ad9e895, did you?  It lists a large numbe=
r =

> of Seagate devices that don't work with ATA pass-through, and three o=
f =

> them have product IDs that are larger than 0xab03.
> =

> Please check the facts before guessing about things that will cause =

> problems for other people.

I really don't appreciate the unfriendly tone on the linux kernel
mailing lists (which is why for 20 years I never felt like contributing=

here mo), and well so far this change has caused a problem for me.
While I did not read that commit I was speaking from my experience
with USB devices and drivers, like the hundreds of Avision scanenrs my
SANE backend support and Canon, Fujitsu and Panasonic et
al. scanners. While you proof the point that proposed condition would
avoid 6 out of the 9 entires.

> > > What is wrong with just allowing specific devices that you have t=
ested
> > > will work, to the list instead?  That's the safest way to handle =
this.
> > =

> > The problem is that out of the box it does not work for users, and
> > normal users do not dive into the kernel code to find out and simpl=
y
> > think their devices sucks. Even I for years thought the drive sucks=
,
> > before I took a closer look. If you long term want more new devices=
 in
> > an allow list than the previous quirk list included (9 or 10 does n=
ot
> > sound that many to me), ... whatever you prefer ,-) I would rather
> > have 10 quirk disable list than potential many more white listed th=
e
> > next years to come. Maybe we shoudl simply restore the prevoius
> > quirks.
> =

> That's a possibility, and in the future we may do it.  But probably n=
ot =

> until the enable list grows to a comparable length.

Yeah, why future proof it now, ... which is exactly what brought us
here from the original regression. The enable list will likely not
grow quickly as most users will just expect a broken device hw/
firmware and not bother looking into it and instead live w/o SMART.

But of course I do rewrite this as requested.

     Ren=E9

-- =

  Ren=E9 Rebe, ExactCODE GmbH, Lietzenburger Str. 42, DE-10789 Berlin
  https://exactcode.com | https://t2sde.org | https://rene.rebe.de
