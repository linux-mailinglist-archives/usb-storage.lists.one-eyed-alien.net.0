Return-Path: <usb-storage+bncBCUJ7YGL3QFBBXVTSWCAMGQEEH6AKGA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1045.google.com (mail-pj1-x1045.google.com [IPv6:2607:f8b0:4864:20::1045])
	by mail.lfdr.de (Postfix) with ESMTPS id D565B36A6FE
	for <lists+usb-storage@lfdr.de>; Sun, 25 Apr 2021 14:00:31 +0200 (CEST)
Received: by mail-pj1-x1045.google.com with SMTP id oa1-20020a17090b1bc1b02901507fafb74fsf4986471pjb.7
        for <lists+usb-storage@lfdr.de>; Sun, 25 Apr 2021 05:00:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619352030; cv=pass;
        d=google.com; s=arc-20160816;
        b=Is12U9HMF7YHca69xFfC/JWYH56qO5UvsNF27oXIMSzr0YEcXIEe4aBnybZZSntklR
         qNvl9gqw4SEZYrVX+r1/PKYIllChJ6afYfhw1XhY0S17+CmPclH61kKKNRT0iV8NZnB2
         M9HQ8d1JUyWvUhzHh7Irz4zT5Cnfh+up9fELKOxVT+PiEqJez+AOcbJbj4zMpXcAhBMs
         8fvAE+G7De3v5K0Sy2lr03BXh6m5wUKdfSwU0iDfRrOhmHHDQz94NQ/5dC1CIJFCz5JF
         fCIALNGhWXRXrYDwJu5t16PmwVzCJD5DdOATaCcDqUpoEo0Un5SXx5eGUjK3s/pC7n7A
         QAnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=fwECuUImEv2gh/+id7IC/GNT8SuLkBhngkxdq5cfbSI=;
        b=R2aKHMt5Hva0muIXQ1JHnqv/N4gJdWVF/yd3Hq4YEVUpoHsEjnaCXXejGWKfHnwlvf
         IadDMqNRoeKqvlzbLKU2fEnya/dQ62sIuUKLK88r8b4IRKhhx2SAokDw7OC9/URgfLzS
         nM7ufQAEqpASnP38VTVPOzBlo12RSgEcnT5s8ZuRAJimUhWOAmw/um9V+FTn4dzI6vQl
         ekNA6FBRLnquFYStnuJ7nyGwGL455l+pXEuUp7TDMy65NeyRQsLKHFaYUEaOpvkvw1ff
         l17Cj6qErLdoyqRbBt50iQY/ykgs+e89YRcLoZYXR1SrJKqe2qcsL1U8kjEbMIFBQyWK
         UQKw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=vnaoHgZ1;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fwECuUImEv2gh/+id7IC/GNT8SuLkBhngkxdq5cfbSI=;
        b=lthCeRPxNVO8ZWtXVrJUGNc2YWVbsZ8lDdCPkCvNtRa0xLjaKXUnFflupWpLls2hhs
         OCSOC6Xy4SX229oRHmb5+eXRUBtOF/G0by/svvYLMTmeN918SP35Ts9t6afdHeCyTJWv
         BuVsfh0P90ppZx5C3bic5uMlzWpn9gzOxku4s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fwECuUImEv2gh/+id7IC/GNT8SuLkBhngkxdq5cfbSI=;
        b=tiN5X20xNz/b9l2UcjbW0BXFZqLMqmRV/rr83bwYjZUYCXOK03O2d4WbZXr1PDAGK6
         jc3xPoOk3pwKOy7ZW4qu1O/sL+iKuBJf/gpwEzOQR33cF3+PYM7Xo80Nhvj3F8Y6NU3K
         43CWgiQdtnqhhovrLE46IifUxemLAOcB3BOSoThNBpsHsTFTIi8C4P4MuokeZK1+EIPr
         0lPw0+6n3M1DoBJKxTROa/5sMS9ct6XsLDr4CZReQ1k05shuDflzpPcdKwJ30zHW7xX5
         y8lczt6hd9N/HaZ2JwHW11HsxpJq9747jNMzUTzY54e7WC36+z8guTsGn8q5p0uudd4i
         Eepw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531D8ddkeUTUpvsNZ4iSDrQwOcrTub5QL1GAIgBd5G7ea6GoJle2
	80gpaH53S92Au5p3v3i949XRBg==
X-Google-Smtp-Source: ABdhPJzvxJLxqKrT87cSYDqIpeHLlI4dSV5NjUNXX2FvIQ/2DaFapzWxlpO7zGsVOVBmTlPjf7jjTg==
X-Received: by 2002:a17:90b:808:: with SMTP id bk8mr14732082pjb.222.1619352030628;
        Sun, 25 Apr 2021 05:00:30 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:ff13:: with SMTP id f19ls217089plj.0.gmail; Sun, 25
 Apr 2021 05:00:30 -0700 (PDT)
X-Received: by 2002:a17:903:1ca:b029:ea:fc69:b6ed with SMTP id e10-20020a17090301cab02900eafc69b6edmr13203231plh.80.1619352029976;
        Sun, 25 Apr 2021 05:00:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619352029; cv=none;
        d=google.com; s=arc-20160816;
        b=ea/3CbMvkWPOKuWcf8/HNzIJzg3Z4xAPCzhgkWH+ix6BAMIeRHPKtbslNRXW9/CHRP
         cqU58d8hpLPGeOKGaM+UfViqZKQSkxNHdjM0xRX7ZPMYayhqu7x0SFGZ/+0dNiHGJH62
         wacK2UAzqjfct/oLx8GT0mBZ4b+ef4FudhV48vsk3g6EgOktNs3WIxCw7jHfGx0PLg6/
         nqTYU6u/bEWZ3Bh8n75/jS6DTLT9W6zg+YkPpWZiJ3/9XAIdbHoYSzP6ZK0trj60jPrT
         aq6OkWPM8MtHldCAio7dKp48aiwyrOXV/74OV1USTF0Uy856C0WkhIO3hr99Q0B4ssCM
         K39A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=RpWeGMBj/m2Vsuj8sqg3VeotkDtn9orfZLbykdfCM0Q=;
        b=u9Gwzuc38GkhpZUpReayEH/+HtQv5k4ditw9yWGVrVuBN9WYAwCgUZKdyz6poAHMXH
         ajrnn1YLIE86knrhNlShpDg+sonPvBt4Ikc+EN4jrq/Yi2OWDxoYwN80WW0/fMONSjWV
         I8skpApCs189M1H7cPSJ2lLFDUn0X7iaCj6vl3spxoG9Y2VliilEinuSIc+LBS//LNiL
         Be6H1DjIjH0YGQRDVD22jER/XBsXpQQiJlSkAmMdcZu3oKqftLNhOKHax2cJz7561wZm
         hZIKBauOs4b2hO8fCvBqUQs1BlpY/Gm4agkxUEeJp4A4DF1STUn9+AGACTq0JbYZtQWD
         haNw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=vnaoHgZ1;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id d15si14842157pgv.130.2021.04.25.05.00.29
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Apr 2021 05:00:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id E1F7261076;
	Sun, 25 Apr 2021 12:00:28 +0000 (UTC)
Date: Sun, 25 Apr 2021 14:00:26 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Rene Rebe <rene@exactcode.com>
Cc: hdegoede@redhat.com, stern@rowland.harvard.edu,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH] unbreak all modern Seagate ATA pass-through
 for SMART
Message-ID: <YIVZ2l9qUfkcyPpG@kroah.com>
References: <20210425.124119.1949311822603950729.rene@exactcode.com>
 <7187e934-b87a-edce-2ac6-f201ea9c7b7d@redhat.com>
 <ee48ea5d-c820-ae24-b557-2a7b7372821c@redhat.com>
 <20210425.135048.1651130854722875318.rene@exactcode.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210425.135048.1651130854722875318.rene@exactcode.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=vnaoHgZ1;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Sun, Apr 25, 2021 at 01:50:48PM +0200, Rene Rebe wrote:
> From: Hans de Goede <hdegoede@redhat.com>
> Subject: Re: [PATCH] unbreak all modern Seagate ATA pass-through for SMAR=
T
> Date: Sun, 25 Apr 2021 12:58:40 +0200
>=20
> > Hi,
> >=20
> > On 4/25/21 12:47 PM, Hans de Goede wrote:
> > > Hi,
> > >=20
> > > On 4/25/21 12:41 PM, Rene Rebe wrote:
> > >> Greg KH wrote:
> > >>
> > >>> On Sun, Apr 25, 2021 at 09:20:59AM +0200, Ren=C3=A9 Rebe wrote:
> > >>>> Hey,
> > >>>>
> > >>>>> On 25. Apr 2021, at 04:31, Alan Stern <stern@rowland.harvard.edu>=
 wrote:
> > >>>>>> Seagate devices" in 2017. Apparently some early ones where buggy=
, ...
> > >>>>>>
> > >>>>>> However, fast forward a couple of years and this is no longer tr=
ue,
> > >>>>>> this Segate Seven even is already from 2016, and apparently firs=
t
> > >>>>>> available in 2015. I suggest removing this rather drastic global
> > >>>>>> measure, and instead only add very old broken ones with individu=
al
> > >>>>>> quirks, should any of them still be alive ;-)
> > >>>>>>
> > >>>>>> Signed-off-by: Ren=C3=A9 Rebe <rene@exactcode.com>
> > >>>>>>
> > >>>>>> --- linux-5.11/drivers/usb/storage/uas-detect.h.backup	2021-03-0=
5 11:36:00.517423726 +0100
> > >>>>>> +++ linux-5.11/drivers/usb/storage/uas-detect.h	2021-03-05 11:36=
:16.373424544 +0100
> > >>>>>> @@ -113,8 +113,4 @@
> > >>>>>> 	}
> > >>>>>>
> > >>>>>> -	/* All Seagate disk enclosures have broken ATA pass-through su=
pport */
> > >>>>>> -	if (le16_to_cpu(udev->descriptor.idVendor) =3D=3D 0x0bc2)
> > >>>>>> -		flags |=3D US_FL_NO_ATA_1X;
> > >>>>>> -
> > >>>>>> 	usb_stor_adjust_quirks(udev, &flags);
> > >>>>>
> > >>>>> I don't want to do this unless you can suggest an approach that w=
on't=20
> > >>>>> suddenly break all those old buggy drives.  Just because they are=
 now=20
> > >>>>> five years old or more doesn't mean they are no longer in use.
> > >>>>
> > >>>> Well, what do you propose then? A allow quirk for all new devices =
going forward?
> > >>>> Given that the user usually needs to actively run something like s=
martctl
> > >>>> manually on the drive I don=E2=80=99t see that this should cause t=
oo many issues.
> > >>>> I don=E2=80=99t have any non-supporting device - can we not just a=
dd them to the
> > >>>> quirk list when someone reports one?
> > >>>
> > >>> How about since you know your device works, you make the check dete=
ct
> > >>> your specific device and not apply the flag to it?  You should be a=
ble
> > >>> to do so based on the
> > >>
> > >> Sure, while that does not really solve this for all the other newer
> > >> Seagate drives other users might have at home, here is a patch
> > >> checking for this one USB product ID. I hope that is what you meant:
> > >>
> > >> Signed-off-by: Ren=C3=A9 Rebe <rene@exactcode.com>
> > >>
> > >> --- linux-5.11/drivers/usb/storage/uas-detect.h.backup	2021-03-05 11=
:36:00.517423726 +0100
> > >> +++ linux-5.11/drivers/usb/storage/uas-detect.h	2021-03-05 11:36:16.=
373424544 +0100
> > >> @@ -113,5 +113,6 @@
> > >> =20
> > >>  	/* All Seagate disk enclosures have broken ATA pass-through suppor=
t */
> > >> -	if (le16_to_cpu(udev->descriptor.idVendor) =3D=3D 0x0bc2)
> > >> +	if ((le16_to_cpu(udev->descriptor.idVendor) =3D=3D 0x0bc2) &&
> > >> +	    (le16_to_cpu(udev->descriptor.idProduct) !=3D 0xab03))
> > >>  		flags |=3D US_FL_NO_ATA_1X;
> > >> =20
> > >>
> > >=20
> > > As I indicated in my other email which crossed with this one, please =
make this
> > > more generic, add a new US_FL_ATA_1X_OK flag and make the above code =
check that +
> > > add a new unusual_uas.h entry for your device setting the new flag.
> > >=20
> > > Note there is no need to add support for the new flag to usb_stor_adj=
ust_quirks()
> > > if a user overrides quirks for a device on the kernel commandline wit=
hout specifying
> > > the "t" flag then the US_FL_NO_ATA_1X flag will already get cleared.
> > >=20
> > > I deliberately put the:
> > >=20
> > >         if (le16_to_cpu(udev->descriptor.idVendor) =3D=3D 0x0bc2)
> > >                 flags |=3D US_FL_NO_ATA_1X;
> > >=20
> > > code before the usb_stor_adjust_quirks() call to allow users to overr=
ide this
> > > from the kernel commandline.
> >=20
> > p.s.
> >=20
> > A "git log drivers/usb/storage/unusual_uas.h" quickly finds the commit =
which removed the
> > quirks which the generic Seagate check replaces. At that time there wer=
e US_FL_NO_ATA_1X
> > quirks for *9* different Seagate models present in unusual_uas.h and I =
assume someone
> > reporting a 10th model is what made me go for the just disable this for=
 all Seagate
> > driver option.
> >=20
> > See commit 92335ad9e895 ("uas: Remove US_FL_NO_ATA_1X unusual device en=
tries for Seagate devices")
> >=20
> > Also I did a quick websearch for the "Seagate Seven" and rather then th=
e usual re-usable
> > drive-enclosure with a standard 2.5" or 3.5" drive in there, this seems=
 to be a custom
> > model where the enclosure is actually integrated into the drive to make=
 it smaller.
> >=20
> > So I would not be surprised if this is using another chipset then their=
 usual enclosures,
> > which would explain why it does have working ATA1x passthrough.
>=20
> I would expect that more modern devices to work. Vendors usually
> linearly allocate their product ids for new devices, and we could
> allow list product ids higher than this Seven to unbreak more modern
> devices by default and limit the amount of device quirks needed?

Vendors do not allocate device ids that way at all, as there is no
requirement to do so.  I know of many vendors that seemingly use random
values from their product id space, so there is no guarantee that this
will work, sorry.

What is wrong with just allowing specific devices that you have tested
will work, to the list instead?  That's the safest way to handle this.

thanks,

greg k-h

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/YIVZ2l9qUfkcyPpG%40kroah.com.
