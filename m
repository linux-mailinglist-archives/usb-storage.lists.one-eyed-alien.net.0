Return-Path: <usb-storage+bncBCF37CNFREKRBT4G5PUAKGQEN4VXTUY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb47.google.com (mail-yb1-xb47.google.com [IPv6:2607:f8b0:4864:20::b47])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CEAD5C764
	for <lists+usb-storage@lfdr.de>; Tue,  2 Jul 2019 04:37:05 +0200 (CEST)
Received: by mail-yb1-xb47.google.com with SMTP id v6sf1591504ybq.21
        for <lists+usb-storage@lfdr.de>; Mon, 01 Jul 2019 19:37:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562035024; cv=pass;
        d=google.com; s=arc-20160816;
        b=EKJfsU5FiStvFd/VVnEVRdu1SwJsUmRcz7JWUONWIjomiwxoqNgXySvSH19/LGvVOS
         GWBZC9OK6z1fa6Zk+rNYnwE5t8vcKim2m5OAq7P7CPgg/kmxz1pDLD3AeHa0TBW1w5JR
         kOrP9pTusPc9tX0FAGqSkdiCq8QgzFS9pHBJaWCidauDr2EgoEvH53lupTybQKT3QnVp
         HiFV+4AzVakwBI2L/efUYX+ewiHjSIIvvgfzxpRXkCGx5qJpBFbYrd2ZbHF+bzMam7ps
         8jrO/S/3vuJUZibzg7vzLvYwTS7Nymm8gJH842jeCMlIGKmT2AZbmxXHiE6rtIYo+qRr
         gqZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=9caEpeobNsooqhxca4yk+dm02r3anngq3oCNbu8D0tU=;
        b=s1JTJQM6oonvnPMVIdijWw3RZqY9M2P0CQTCmQIfD0PNTGkH29A7JX8AsOAkwNgHsf
         tF8c6t9u3PKpEUwOTaX317GqB4qlezPiX84OHxMmMkWpLVo1BlrGDdj0q38g9jv6ebv3
         Im/Di3OhGRX8RRvzi66dTPa+l1DVEYv14aR6dsY5SbZ0iy/yrBEWv3JCTAC6uAvtStKR
         OS54Snw5RrSYGaQZ6LTOMOx3OjTdegnGWljb7586oD6K8d3hIBc3EskFLOS2OiDADh5l
         A+RLU+RJXRl9Lfy2LPXR/+E6uBduKaWCQj4bbhQRYy0W5m7MlfYhJRQ/5W8q+a8D5ZT4
         oT9A==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@nvidia.com header.s=n1 header.b=AnYkRgAP;
       spf=pass (google.com: domain of jckuo@nvidia.com designates 216.228.121.65 as permitted sender) smtp.mailfrom=jckuo@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9caEpeobNsooqhxca4yk+dm02r3anngq3oCNbu8D0tU=;
        b=i8E253E23JfVfs1nzpyPHxHbEMjciOb6GLxS//syTYpeRN9H9WN16STdhAOd+tAINk
         VyhyyUHJH+cXGww8rdn7ZHv+UJpfxu2u2MEFuetJDuWLZKHuQ77HTA0gA6VyWk3a3tHj
         lSVBrAW/lVCUZzqZB1RaVElAbSpP3jCwZaBhc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9caEpeobNsooqhxca4yk+dm02r3anngq3oCNbu8D0tU=;
        b=YrvFo32Av+vI0BH3LMBVPOT3ZSiDHQnqdBVFEM1ZE0GGYUJG/TkqKUj3kUoDEEmfUS
         Xxzf5tZH2lL7/yt3IV8zp7/WI62LaNvMn8pGZGJfCinX91KxeQl/xT8wV8xWdGDulvAy
         m7j3GO9mp99NvKcsfdztFgtct3XHkeiaJ5CPtNBRl/GgBXhoioPaKaH5fYIqdpUuN5QH
         vQvZpHDRbJCmiWdCFOeRftggbdy6t2kubN2HQFjPGHTPKS9fCQD7yExDsYYukhkvOvN6
         A6fAdLIXhXQo7uIvusRbNG99vbVhF/68lF7XJEK+hgYuKnGlrU6m4Uw+bqRH3q8he8Tt
         /HAg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAX8pyzJRs9mBv+6jZqj5wX+QDqJA0lVLuxUfcY/sKwcfvngvkxY
	Lsm4QDWl6DdDDMh5k6lEvc9adw==
X-Google-Smtp-Source: APXvYqyq+Pnyu0p12SFRXI0N7N+xzRePQxo9T/C9/KNLk6yw6qY05zGKxOPq4iNkrIHBxtyRHJYxRw==
X-Received: by 2002:a81:3cf:: with SMTP id 198mr16115462ywd.219.1562035023743;
        Mon, 01 Jul 2019 19:37:03 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a81:14b:: with SMTP id 72ls1556906ywb.15.gmail; Mon, 01 Jul
 2019 19:37:03 -0700 (PDT)
X-Received: by 2002:a81:347:: with SMTP id 68mr16988516ywd.478.1562035023286;
        Mon, 01 Jul 2019 19:37:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562035023; cv=none;
        d=google.com; s=arc-20160816;
        b=wojUqbWWqegAFOqz1CpILTYx+CuNGn/jyWaYA06Xjb8l3BE9xqtOp+4KelhxI2tgz6
         y9nMdKoPv3cvaeQSMCh/KWcJWTQ4iPRF43g3oGUIcyO801Q73gi0VY4IYsn6pojD43jm
         NPB2n+SqKWQk4RAqPIe4p3Ohq78EODZ00I0XkbFxD3sdrRlbcLOJVSnXpG9EMzXPsMeR
         ouZ059qBipuozv9dyqCE9I4lB+5n3dmCd/4/+GMCl2l2q/KWoGO4+7I5TOxw57SUuJsQ
         MuR1fS/HBazyd11qxJb+H1Mhs7vH1FXqhLyvclDR320HqLWylRXPyu/RWQLyAZSeoGZo
         OPzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=dkim-signature:content-transfer-encoding:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject;
        bh=77aJVnm/xorkjQ2KebRy3Sx0Cp8Zc4bA3d8JzQexgwo=;
        b=hT7AHkJn7aslo5r5ZnbzLZtVEJjZEZ9GPvoNYw3jgUzEML+AsBF55M1brGIY2s9fOb
         o1ncDd3GeyiiUAHAwwk/n86jGajWRyfpLAYVt5PHg/UfOrdgwOGlCe7xV8mjCjV8WnZm
         qkEzcPRMTBgO8cfIsVt3hu+qO8xFsv8CQ5joKbeqH7Qr4F69doKHxMy3dl4wYImBTsPv
         G8+ukG9teU3EwVeEC33qUavaBjmAoMe0PpF4+i/bBF74Is8jmPRlBxoLe7xhM/RByPKT
         m7XZrGHrOBS/PROYkJbuwAMYJF9OzVktxE60iuKVN+FHVs5/QNVfsRK8aYkcsIrvQrCh
         rtoQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@nvidia.com header.s=n1 header.b=AnYkRgAP;
       spf=pass (google.com: domain of jckuo@nvidia.com designates 216.228.121.65 as permitted sender) smtp.mailfrom=jckuo@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
Received: from hqemgate16.nvidia.com (hqemgate16.nvidia.com. [216.228.121.65])
        by mx.google.com with ESMTPS id n74si1099882ywd.187.2019.07.01.19.37.03
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Jul 2019 19:37:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of jckuo@nvidia.com designates 216.228.121.65 as permitted sender) client-ip=216.228.121.65;
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
	id <B5d1ac34d0000>; Mon, 01 Jul 2019 19:37:01 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
  by hqpgpgate101.nvidia.com (PGP Universal service);
  Mon, 01 Jul 2019 19:37:02 -0700
X-PGP-Universal: processed;
	by hqpgpgate101.nvidia.com on Mon, 01 Jul 2019 19:37:02 -0700
Received: from [10.19.108.127] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 2 Jul
 2019 02:37:01 +0000
Subject: [usb-storage] Re: [PATCH] usb: storage: skip only when uas driver is loaded
To: Greg KH <gregkh@linuxfoundation.org>
CC: <linux-usb@vger.kernel.org>, <stern@rowland.harvard.edu>,
	<usb-storage@lists.one-eyed-alien.net>, <oneukum@suse.com>
References: <20190701084848.32502-1-jckuo@nvidia.com>
 <20190701085248.GA28681@kroah.com>
From: JC Kuo <jckuo@nvidia.com>
Message-ID: <8e8e8703-8620-b625-4917-bbb8d999caa4@nvidia.com>
Date: Tue, 2 Jul 2019 10:36:59 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190701085248.GA28681@kroah.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL101.nvidia.com (172.20.187.10) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jckuo@nvidia.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@nvidia.com header.s=n1 header.b=AnYkRgAP;       spf=pass
 (google.com: domain of jckuo@nvidia.com designates 216.228.121.65 as
 permitted sender) smtp.mailfrom=jckuo@nvidia.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=nvidia.com
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

On 7/1/19 4:52 PM, Greg KH wrote:
> On Mon, Jul 01, 2019 at 04:48:48PM +0800, JC Kuo wrote:
>> When usb-storage driver detects a UAS capable device, it ignores the
>> device if CONFIG_USB_UAS is enabled. usb-storage driver assumes uas
>> driver certainly will be loaded. However, it's possible that uas
>> driver will not be loaded, for example, uas kernel module is not
>> installed properly or it is in modprobe blacklist.
>>
>> In case of uas driver not being loaded, the UAS capable device will
>> not fallback to work at Bulk-only-transfer mode. The device just
>> disappears without any notification to user/userspace.
>>
>> This commit changes usb-storage driver to skip UAS capable device
>> only when uas driver is already loaded to make sure the device will
>> at least work with Bulk protocol.
>=20
> But what happens if the driver is loaded afterward, because 'modprobe'
> was called by the driver core (or it should have been, because this is a
> device that supports that protocol)?
If uas driver is loaded after usb-storage driver probed the device, the dev=
ice will still work with Bulk-only protocol, though it can't make uses of s=
treams.

>=20
> I think you just broke working systems :(
>=20
> Why wouldn't the UAS driver get loaded automatically if it is configured
> in the system as it is today?
An user might want to completely disable uas for some reason so he/she adds=
 "blacklist uas" to modprobe conf file. I think in case of this, usb-storag=
e driver has to enable this device with the legacy Bulk-only protocol inste=
ad of ignoring the device.

As an alternative to this patch, I thought I could get uas driver loaded be=
fore usb-storage driver so I tried moving the functions in drivers/usb/stor=
age/uas-detect.h into uas.c and letting usb-storage links uas_use_uas_drive=
r() of uas.ko. However, that didn't work because uas driver actually depend=
s on usb-storage driver for usb_stor_adjust_quirks(). There will be a recur=
sive dependency.

Please let me know if there is better approach to avoid the issue.

Thanks,
JC
>=20
> thanks,
>=20
> greg k-h
>=20

---------------------------------------------------------------------------=
--------
This email message is for the sole use of the intended recipient(s) and may=
 contain
confidential information.  Any unauthorized review, use, disclosure or dist=
ribution
is prohibited.  If you are not the intended recipient, please contact the s=
ender by
reply email and destroy all copies of the original message.
---------------------------------------------------------------------------=
--------

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/8e8e8703-8620-b625-4917-bbb8d999caa4=
%40nvidia.com.
