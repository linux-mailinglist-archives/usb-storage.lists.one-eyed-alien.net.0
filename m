Return-Path: <usb-storage+bncBCUJ7YGL3QFBBHGASWCAMGQEJTXQQ2Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1048.google.com (mail-pj1-x1048.google.com [IPv6:2607:f8b0:4864:20::1048])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C2E36A72F
	for <lists+usb-storage@lfdr.de>; Sun, 25 Apr 2021 14:27:09 +0200 (CEST)
Received: by mail-pj1-x1048.google.com with SMTP id e2-20020a17090a7c42b029014d9d6b18afsf5022700pjl.8
        for <lists+usb-storage@lfdr.de>; Sun, 25 Apr 2021 05:27:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619353628; cv=pass;
        d=google.com; s=arc-20160816;
        b=oMKyrVvFKro9cUp0VyskM5F7/IYSw7pNGiW/FcyFd4uJlgUMAROM4vo9C+WmERhvM6
         pToMYcuiSnSj9iCIuhyA6+bHY313ebEMcV81oeVRfvHls7PljqXbLLs6tiiySocuIjl7
         mKVDocS7Ljt+jfzJSqAcffXRz/7FvQKZHDrimzCQO6uEbVAVGlcXVlAoV3VT78rHyzyD
         1f8/dqEDVMPWemfcJxYm9zzqvgPclVR2MZ3k75RmVkvIW5tVzPLBNaTNS7nOLNPtFwjP
         vmPTfhK4S/IjeBizN0XBxRD9DiEmTBD/tzzwR93XkxaO8U7YsvdxflJCTypYTZKFQxYd
         T/Gw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=EaPVYvkF8woSeBVbbVk/9nrza1V+42HJEiS4Kxmq/IE=;
        b=Ud6PiHBy66QsryS5F9t7FRzce/aucxJzdJyzDWv1kTaqgjU6wq/uABac/hsdI58Ax8
         m+8F4TPnECSF7cW0Cuolago4gyHYsgag/CFGHhi8q3AHWewM/roHdwWc2dk1L88uJBmw
         xJiijTcLNbh3axfguUr+lNU4sypCmkPMCCIFRo/o+6TxfXX0ASSRWsRlse03HfjzKZes
         +Y/6u5G45sBk23TD+cuekAOymddNLDZyhxLvShGbRoMzcJf+Sonl1bXEHsVdfXRoX43h
         tLCYVC/DNPwgDN+b3+UrKAgxxJ7tOacsioyaXGUeFPaRpIUCOhkYU+LodKYI+hUqPHi+
         /SHg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=o1lB1+eL;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EaPVYvkF8woSeBVbbVk/9nrza1V+42HJEiS4Kxmq/IE=;
        b=LCiJCBQFDc6WnoKPnW0xCJVML4/6kxMf4DdrRoL4MAgutms7PZgnaj2JgMzcaxWfS2
         gC0EfigwKbCKFx5a4u7XdtOP4zhu9l0va5bdodPaNvSzffh6RIPxHHj3UxroyF4PdFQc
         2FyUvvNs8gzYFBTjsaoXUBKpdVAQWc5NDnyVo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EaPVYvkF8woSeBVbbVk/9nrza1V+42HJEiS4Kxmq/IE=;
        b=NL0UU8gkUVpkLA+YOfxCvKfx6XaBXnfG39S2Mw6n1v5V+qHofEnGqliAK0angs2dsF
         BwrxB83WxEA8lo94tG3OHwltQKq0S9VVG4w3EAybRVoHxkM4/xWhdHYGlK+h8feVqeSn
         oJrq34bUByfv6aWXWSrVgq+Pe1/n0YYIWMozzSRodYWRr7sP37jK+mqH36JQURJ+r1/v
         vFZPBMuofIe3C1gFU4wjpR7xgQH59liedrfzYXCSsVkdaVdctPuDrnqkQWWae2qDPIU1
         gAjmV4htI9KVmoTDiF6QwzaiHz+MG6hF1ZVY/d1YqHWVybbnmS3SkCcQD8QiY6zCgTf0
         UZOg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533b+dRUUmC5CAPxxhX6Ee2kbTU4CK9w2IDKI3giqVKGMAbsZ6DO
	AgTSF1oqEcDa8kFsxxz0yKGyIA==
X-Google-Smtp-Source: ABdhPJxJctQ3vInVFZkdMLjh81kSHU5s4YKLPKtgEv/5GAObl5WUMW9TdAhwUu3/L9E5abMspU1c6w==
X-Received: by 2002:a65:6a07:: with SMTP id m7mr12311397pgu.136.1619353628561;
        Sun, 25 Apr 2021 05:27:08 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a62:4e81:: with SMTP id c123ls166919pfb.3.gmail; Sun, 25 Apr
 2021 05:27:08 -0700 (PDT)
X-Received: by 2002:a65:6856:: with SMTP id q22mr12489358pgt.5.1619353627874;
        Sun, 25 Apr 2021 05:27:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619353627; cv=none;
        d=google.com; s=arc-20160816;
        b=coqPTDhED7XUrgrBlOyPZU+lz04WDEZBj3rF4BPoyjoUMaMDfpDKQ2nM4R0c6eJDR5
         BdnSRxzpgyyKniBl5vwaTQ3WNOH9Y8C3wPr2BTqIkWaSOYs2IYL7O65XmIutAd6rcW3V
         8nDVLxcbH7y41WEerYBi0eIAKfyKXRkal5xrXAFewFfO2FuYCRmsHw6REagU9q0FD8hy
         BKmbGm+kifhfL5sVrzZELXDzx9W75IDgZjoytuSqPS0q17HpLgsThOlsTu0P92ab2dUg
         MgXFALCiGaTfx24SOcfypoBc23jFrdk9rlAyLg1rRbcyC8s/BYrgujrpWCqGdx/+oEte
         XIUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=7w72w7dWk/7LqthhnB/nZp9N6OWmlitNSMD0eWNEN+o=;
        b=ShtVoXSgWCnrTMaP9MnpIipTWm3cOOZM/Uqk3LKW23vY9zuBRlxtLV+cHKhxquv4Xt
         Bc6qzE6duR1XQJa/gHqxsM1uw1Q8DjK9vqHrNM7vTw6RjW/s6diwyuxVhTx1ajwQQFS9
         Cu+39MLckSw/Ip7yjvclyJOCpJ6u5i0DKiF71shL7Zen+9qzxB2zYDczNillszt8VD6z
         Ip+Rd7//S1h3I7L1lc9KY/Ae9eC/GbNH0zrLaL1LsB/3Ul7jJEuP1gDjqAgO/jYoG7eK
         cG6zMHsaCOzJkG1eOdg3ijMQwcp4TDQoQ+D10VlXP4oZV5IzxJUKA80YST6LYxqW3xir
         Imcg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=o1lB1+eL;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id r15si13253530pga.317.2021.04.25.05.27.07
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Apr 2021 05:27:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id E3DF261177;
	Sun, 25 Apr 2021 12:27:06 +0000 (UTC)
Date: Sun, 25 Apr 2021 14:27:05 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Rene Rebe <rene@exactcode.com>
Cc: hdegoede@redhat.com, stern@rowland.harvard.edu,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH] unbreak all modern Seagate ATA pass-through
 for SMART
Message-ID: <YIVgGdGbSpQ1norU@kroah.com>
References: <ee48ea5d-c820-ae24-b557-2a7b7372821c@redhat.com>
 <20210425.135048.1651130854722875318.rene@exactcode.com>
 <YIVZ2l9qUfkcyPpG@kroah.com>
 <20210425.141536.1295354861910527121.rene@exactcode.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210425.141536.1295354861910527121.rene@exactcode.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=o1lB1+eL;       spf=pass
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

On Sun, Apr 25, 2021 at 02:15:36PM +0200, Rene Rebe wrote:
> From: Greg KH <gregkh@linuxfoundation.org>
> Subject: Re: [PATCH] unbreak all modern Seagate ATA pass-through for SMAR=
T
> Date: Sun, 25 Apr 2021 14:00:26 +0200
>=20
> > On Sun, Apr 25, 2021 at 01:50:48PM +0200, Rene Rebe wrote:
> > > From: Hans de Goede <hdegoede@redhat.com>
> > > Subject: Re: [PATCH] unbreak all modern Seagate ATA pass-through for =
SMART
> > > Date: Sun, 25 Apr 2021 12:58:40 +0200
> > >=20
> > > > Hi,
> > > >=20
> > > > On 4/25/21 12:47 PM, Hans de Goede wrote:
> > > > > Hi,
> > > > >=20
> > > > > On 4/25/21 12:41 PM, Rene Rebe wrote:
> > > > >> Greg KH wrote:
> > > > >>
> > > > >>> On Sun, Apr 25, 2021 at 09:20:59AM +0200, Ren=C3=A9 Rebe wrote:
> > > > >>>> Hey,
> > > > >>>>
> > > > >>>>> On 25. Apr 2021, at 04:31, Alan Stern <stern@rowland.harvard.=
edu> wrote:
> > > > >>>>>> Seagate devices" in 2017. Apparently some early ones where b=
uggy, ...
> > > > >>>>>>
> > > > >>>>>> However, fast forward a couple of years and this is no longe=
r true,
> > > > >>>>>> this Segate Seven even is already from 2016, and apparently =
first
> > > > >>>>>> available in 2015. I suggest removing this rather drastic gl=
obal
> > > > >>>>>> measure, and instead only add very old broken ones with indi=
vidual
> > > > >>>>>> quirks, should any of them still be alive ;-)
> > > > >>>>>>
> > > > >>>>>> Signed-off-by: Ren=C3=A9 Rebe <rene@exactcode.com>
> > > > >>>>>>
> > > > >>>>>> --- linux-5.11/drivers/usb/storage/uas-detect.h.backup	2021-=
03-05 11:36:00.517423726 +0100
> > > > >>>>>> +++ linux-5.11/drivers/usb/storage/uas-detect.h	2021-03-05 1=
1:36:16.373424544 +0100
> > > > >>>>>> @@ -113,8 +113,4 @@
> > > > >>>>>> 	}
> > > > >>>>>>
> > > > >>>>>> -	/* All Seagate disk enclosures have broken ATA pass-throug=
h support */
> > > > >>>>>> -	if (le16_to_cpu(udev->descriptor.idVendor) =3D=3D 0x0bc2)
> > > > >>>>>> -		flags |=3D US_FL_NO_ATA_1X;
> > > > >>>>>> -
> > > > >>>>>> 	usb_stor_adjust_quirks(udev, &flags);
> > > > >>>>>
> > > > >>>>> I don't want to do this unless you can suggest an approach th=
at won't=20
> > > > >>>>> suddenly break all those old buggy drives.  Just because they=
 are now=20
> > > > >>>>> five years old or more doesn't mean they are no longer in use=
.
> > > > >>>>
> > > > >>>> Well, what do you propose then? A allow quirk for all new devi=
ces going forward?
> > > > >>>> Given that the user usually needs to actively run something li=
ke smartctl
> > > > >>>> manually on the drive I don=E2=80=99t see that this should cau=
se too many issues.
> > > > >>>> I don=E2=80=99t have any non-supporting device - can we not ju=
st add them to the
> > > > >>>> quirk list when someone reports one?
> > > > >>>
> > > > >>> How about since you know your device works, you make the check =
detect
> > > > >>> your specific device and not apply the flag to it?  You should =
be able
> > > > >>> to do so based on the
> > > > >>
> > > > >> Sure, while that does not really solve this for all the other ne=
wer
> > > > >> Seagate drives other users might have at home, here is a patch
> > > > >> checking for this one USB product ID. I hope that is what you me=
ant:
> > > > >>
> > > > >> Signed-off-by: Ren=C3=A9 Rebe <rene@exactcode.com>
> > > > >>
> > > > >> --- linux-5.11/drivers/usb/storage/uas-detect.h.backup	2021-03-0=
5 11:36:00.517423726 +0100
> > > > >> +++ linux-5.11/drivers/usb/storage/uas-detect.h	2021-03-05 11:36=
:16.373424544 +0100
> > > > >> @@ -113,5 +113,6 @@
> > > > >> =20
> > > > >>  	/* All Seagate disk enclosures have broken ATA pass-through su=
pport */
> > > > >> -	if (le16_to_cpu(udev->descriptor.idVendor) =3D=3D 0x0bc2)
> > > > >> +	if ((le16_to_cpu(udev->descriptor.idVendor) =3D=3D 0x0bc2) &&
> > > > >> +	    (le16_to_cpu(udev->descriptor.idProduct) !=3D 0xab03))
> > > > >>  		flags |=3D US_FL_NO_ATA_1X;
> > > > >> =20
> > > > >>
> > > > >=20
> > > > > As I indicated in my other email which crossed with this one, ple=
ase make this
> > > > > more generic, add a new US_FL_ATA_1X_OK flag and make the above c=
ode check that +
> > > > > add a new unusual_uas.h entry for your device setting the new fla=
g.
> > > > >=20
> > > > > Note there is no need to add support for the new flag to usb_stor=
_adjust_quirks()
> > > > > if a user overrides quirks for a device on the kernel commandline=
 without specifying
> > > > > the "t" flag then the US_FL_NO_ATA_1X flag will already get clear=
ed.
> > > > >=20
> > > > > I deliberately put the:
> > > > >=20
> > > > >         if (le16_to_cpu(udev->descriptor.idVendor) =3D=3D 0x0bc2)
> > > > >                 flags |=3D US_FL_NO_ATA_1X;
> > > > >=20
> > > > > code before the usb_stor_adjust_quirks() call to allow users to o=
verride this
> > > > > from the kernel commandline.
> > > >=20
> > > > p.s.
> > > >=20
> > > > A "git log drivers/usb/storage/unusual_uas.h" quickly finds the com=
mit which removed the
> > > > quirks which the generic Seagate check replaces. At that time there=
 were US_FL_NO_ATA_1X
> > > > quirks for *9* different Seagate models present in unusual_uas.h an=
d I assume someone
> > > > reporting a 10th model is what made me go for the just disable this=
 for all Seagate
> > > > driver option.
> > > >=20
> > > > See commit 92335ad9e895 ("uas: Remove US_FL_NO_ATA_1X unusual devic=
e entries for Seagate devices")
> > > >=20
> > > > Also I did a quick websearch for the "Seagate Seven" and rather the=
n the usual re-usable
> > > > drive-enclosure with a standard 2.5" or 3.5" drive in there, this s=
eems to be a custom
> > > > model where the enclosure is actually integrated into the drive to =
make it smaller.
> > > >=20
> > > > So I would not be surprised if this is using another chipset then t=
heir usual enclosures,
> > > > which would explain why it does have working ATA1x passthrough.
> > >=20
> > > I would expect that more modern devices to work. Vendors usually
> > > linearly allocate their product ids for new devices, and we could
> > > allow list product ids higher than this Seven to unbreak more modern
> > > devices by default and limit the amount of device quirks needed?
> >=20
> > Vendors do not allocate device ids that way at all, as there is no
> > requirement to do so.  I know of many vendors that seemingly use random
> > values from their product id space, so there is no guarantee that this
> > will work, sorry.
>=20
> I did not say it is a requirement, just that they usually do speaking
> of just this Seagate case. What is wrong with using that to
> potentially significantly cut down the quirk list?

Because the down-side of this is if we guess wrong, we break things.

> > What is wrong with just allowing specific devices that you have tested
> > will work, to the list instead?  That's the safest way to handle this.
>=20
> The problem is that out of the box it does not work for users, and
> normal users do not dive into the kernel code to find out and simply
> think their devices sucks. Even I for years thought the drive sucks,
> before I took a closer look. If you long term want more new devices in
> an allow list than the previous quirk list included (9 or 10 does not
> sound that many to me), ... whatever you prefer ,-) I would rather
> have 10 quirk disable list than potential many more white listed the
> next years to come. Maybe we shoudl simply restore the prevoius
> quirks.

No, let's explicitly add the devices that you know will work properly.
That way we default to a working system overall and do not cause
problems.

"first cause no harm" is a good mantra to follow...

thanks,

greg k-h

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/YIVgGdGbSpQ1norU%40kroah.com.
