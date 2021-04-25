Return-Path: <usb-storage+bncBCUJ7YGL3QFBBI5WSSCAMGQEATSWS4Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1047.google.com (mail-pj1-x1047.google.com [IPv6:2607:f8b0:4864:20::1047])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CBBC36A589
	for <lists+usb-storage@lfdr.de>; Sun, 25 Apr 2021 09:32:53 +0200 (CEST)
Received: by mail-pj1-x1047.google.com with SMTP id lk6-20020a17090b33c6b029015542757d77sf1966903pjb.3
        for <lists+usb-storage@lfdr.de>; Sun, 25 Apr 2021 00:32:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619335972; cv=pass;
        d=google.com; s=arc-20160816;
        b=uOMnIhoz0OH2dWwNf0lPfqJgfqjX4My85QuPv1C4pLKHqvFKzbihDEv11FA4nOu3dU
         ZEQC+98dIX7DOzGGEL3trHnP56cpOv8HovPn8XhYaECwjbsFZ0dxTKWnzusOawdmokjd
         MAu1+BJzfokx1ZoH0Gs7Y+zK38UKvrQvaO3/V7BBd7ZJQx10ernfUXTuwQr7ZjvI/273
         I+QpHpMuvwzu75c4dbbpbgN24fwCcTn3r3UYctmnjmksmYmqDq354T4Ejn5kd9YD3Dmd
         uWJOaFuNWsT3Q6b6lyBjdXr5BTPiMB+AMNlohX5Y23w2icpAcA42WL3N8+1AapqGxzUo
         +l/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=2vAyru3ZdzBebWXMkmuW7lVWTndAZlknS5X/r3sein0=;
        b=WLCqtV6gVMuYf+Yz38Uq0Hw60+VWjsObnHEVf5UpPuEONomV0sJm6kbatdYpcF1Fmq
         FLH345M7p0UY1RW89NzkkmV+Ii4L0Z1MCNjmNkF/Z+BTc3/1P18BqRdnVxDfLPQ5/lOm
         OTqvRSL6CAa31oSCSKjlSWNOLuWro/gIqu58tc6sNLoZ43fKwRvSaXDYrsQsZRwHvOpu
         RTh5FZGY/8Fa5EqMqset7oN95hHGMgiMUexKmQlq3YU3LuRW0hdPRTe3CDszUnshhLd7
         1I8Wb6r42KdN070nl6W59HcNTWSQN2u/gaaB9eGqFlTXbjCmzzK4waOhU9oUIj+QfhB8
         Y2FA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=rktpxgsd;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2vAyru3ZdzBebWXMkmuW7lVWTndAZlknS5X/r3sein0=;
        b=c7Hs+0cJkY4XieZPuEgVSTMn/iF/rKXunQYgSPyZ6+TpgumB/2GR+Mug4MdTLFWUD+
         t3KqfR2o9I1aUhNNF5jrKHMy74/CZobaPbVFq7YsMiSh9PgIO7tLPdicRCg2/8HZ6yA7
         S2kfufwYRQaDQxgEmUbiSsvTdeEJduR3M/mZk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2vAyru3ZdzBebWXMkmuW7lVWTndAZlknS5X/r3sein0=;
        b=L1Q+UgYwSuTZlfM7cUHLSatCaOL6LAdKPfU0tYUWYe+Rj6r3O0aP+zrF4QMpw9ABer
         nPRqTTb0xPlBGZss222GeZNm87Kv89CLA8Q/207p/n/ttwZodUGH8z+ozCfAx4AEFz1K
         mjhddzb0cWxM+38N8rR7dQR7WhMMjdKO+8Y623RumWZT2XvdTU9VBCArHEZdXLVPNMwk
         pgXHAG9GLCkGwjpM+nE7JF5aP2vqDmU6CxiMlISVmMPlcgButcet33NXCuO9bYb/mRJF
         DhPPR0+c7gQv3kYZL7jTThjYi/s8UT6taSEKHybiOzWOderwZr6YaH2XINE72EKSlcNk
         eNbA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533cC10MKXCV7zEQ3RLXhpLlxHqWgsAsu0AbRE2XrKctJzH0+ITn
	9YzUmnY1wxnzplokizoiJA1rKA==
X-Google-Smtp-Source: ABdhPJwBKbgYB6e5c/fAP9p97busw42h1B0ShrvFM6Wp5zkNUbwMON47zqrUVK02fzEZO+KAbyHSeg==
X-Received: by 2002:a62:63c7:0:b029:251:4c9a:5744 with SMTP id x190-20020a6263c70000b02902514c9a5744mr12077197pfb.39.1619335971779;
        Sun, 25 Apr 2021 00:32:51 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aa7:8184:: with SMTP id g4ls5600725pfi.4.gmail; Sun, 25 Apr
 2021 00:32:51 -0700 (PDT)
X-Received: by 2002:a62:1b50:0:b029:257:da1e:837f with SMTP id b77-20020a621b500000b0290257da1e837fmr11742669pfb.57.1619335971129;
        Sun, 25 Apr 2021 00:32:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619335971; cv=none;
        d=google.com; s=arc-20160816;
        b=VGnszDYbLtWg0C0BJV289bodSJzWi2MT0g9YyzjKrtmFr7DJRiw68jkoA/uGQdoo3o
         JQIJ47a7WWrwqkWaLm8fmt9FQcmsvvQn50JLlw50WuzGNOJXvq3Rq0Gxoxniwal1gzZY
         RFFaHN2qfN7e9aVbk8yWua9aYJP+lNwQYcpPyLHtjtK0sMaftY49SCiBik6IjE6nzTeS
         +cn+anukOlDaNf52Sh/b5FgMJZlguxV1SDRsxd+oPzv+1sYbd/yZ5nc0mXsEEdca+6yo
         k0gSBI96wjse5+1CnJnwM8l/7VWpSdml4rncdDWRaLJ1t3dBe2gGgep3RQ3pVwy/7wL7
         fFMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=C51mlRauBDRm9EhO8Mil7YtDWbQdSKmhqxcrPnljeEc=;
        b=Uy7594uNkNInT6qaqaD6k6Dvf9VZis+EFdVbWqaqzYxskZu/ngAuuNrza6T97aNoOE
         2nmQf8F0wOf4pXYMgHDd6HLeLLNFgkuaYOs1Mnt283BV99H2lRGDfnXgk9ZE/l6pb9Py
         A4g/N/GunqzctTvy+xUn1TuAfNXfNH5pU1rv7AsG9eNFQd5Rbzc9v+FIGo1X2DUVouI1
         KYTo3X67VhGDrIaHbIma1fUIj4dGvRczvLxSnXByEQsvnUe1JEYGZxcM3vcQq+6Z+fAl
         dkxJQDli04tbGIglIaWriuKbm9LspJ+8DIp1cbQwhMXMasvsBOibP68kLq/5e5bHIzM6
         Qqtw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=rktpxgsd;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id o10si13464084pgs.138.2021.04.25.00.32.51
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Apr 2021 00:32:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id E6D06613CB;
	Sun, 25 Apr 2021 07:32:49 +0000 (UTC)
Date: Sun, 25 Apr 2021 09:32:44 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: =?iso-8859-1?Q?Ren=E9?= Rebe <rene@exactcode.com>
Cc: Alan Stern <stern@rowland.harvard.edu>,
	Hans de Goede <hdegoede@redhat.com>, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH] unbreak all modern Seagate ATA pass-through
 for SMART
Message-ID: <YIUbHKqs2gQPAu2T@kroah.com>
References: <20210424.220316.855336714119430355.rene@exactcode.com>
 <20210425023133.GC324386@rowland.harvard.edu>
 <883AF188-7817-42E2-84E8-F1DD7A5F3C08@exactcode.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <883AF188-7817-42E2-84E8-F1DD7A5F3C08@exactcode.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=rktpxgsd;       spf=pass
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

On Sun, Apr 25, 2021 at 09:20:59AM +0200, Ren=C3=A9 Rebe wrote:
> Hey,
>=20
> > On 25. Apr 2021, at 04:31, Alan Stern <stern@rowland.harvard.edu> wrote=
:
> >> Seagate devices" in 2017. Apparently some early ones where buggy, ...
> >>=20
> >> However, fast forward a couple of years and this is no longer true,
> >> this Segate Seven even is already from 2016, and apparently first
> >> available in 2015. I suggest removing this rather drastic global
> >> measure, and instead only add very old broken ones with individual
> >> quirks, should any of them still be alive ;-)
> >>=20
> >> Signed-off-by: Ren=C3=A9 Rebe <rene@exactcode.com>
> >>=20
> >> --- linux-5.11/drivers/usb/storage/uas-detect.h.backup	2021-03-05 11:3=
6:00.517423726 +0100
> >> +++ linux-5.11/drivers/usb/storage/uas-detect.h	2021-03-05 11:36:16.37=
3424544 +0100
> >> @@ -113,8 +113,4 @@
> >> 	}
> >>=20
> >> -	/* All Seagate disk enclosures have broken ATA pass-through support =
*/
> >> -	if (le16_to_cpu(udev->descriptor.idVendor) =3D=3D 0x0bc2)
> >> -		flags |=3D US_FL_NO_ATA_1X;
> >> -
> >> 	usb_stor_adjust_quirks(udev, &flags);
> >=20
> > I don't want to do this unless you can suggest an approach that won't=
=20
> > suddenly break all those old buggy drives.  Just because they are now=
=20
> > five years old or more doesn't mean they are no longer in use.
>=20
> Well, what do you propose then? A allow quirk for all new devices going f=
orward?
> Given that the user usually needs to actively run something like smartctl
> manually on the drive I don=E2=80=99t see that this should cause too many=
 issues.
> I don=E2=80=99t have any non-supporting device - can we not just add them=
 to the
> quirk list when someone reports one?

How about since you know your device works, you make the check detect
your specific device and not apply the flag to it?  You should be able
to do so based on the version of the device, right?

thanks,

greg k-h

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/YIUbHKqs2gQPAu2T%40kroah.com.
