Return-Path: <usb-storage+bncBD26DNHQRAJRBPWAXSMAMGQE2EXPT6Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1047.google.com (mail-pj1-x1047.google.com [IPv6:2607:f8b0:4864:20::1047])
	by mail.lfdr.de (Postfix) with ESMTPS id CB1F25A7955
	for <lists+usb-storage@lfdr.de>; Wed, 31 Aug 2022 10:47:59 +0200 (CEST)
Received: by mail-pj1-x1047.google.com with SMTP id e11-20020a17090a630b00b001f8b2deb88dsf12527697pjj.1
        for <lists+usb-storage@lfdr.de>; Wed, 31 Aug 2022 01:47:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661935678; cv=pass;
        d=google.com; s=arc-20160816;
        b=jH64d+imu2/nZb7f8/BHkUEv3vtfj/JswXw/RCGLFKwWPnrkW6HhWfvmkFxZKnUcno
         cK4EnxRFIrLgfLiAGkktsS2YaoqMx2zo7R+OtMEhd9UAvpPhLU28VbyrqgnscRSxj6ks
         u3noLCGWWZNLDuUkr/CkFoEvM/gsYhrz8lBno/Cr885feGhMkb3ObRL8OH3mGljp3+Hr
         NP8A9KYPKGjkGs828EB2ICFUapDCpFGZSm53TcywDZJ/rfNorL75F36efwQ90t7z4q8d
         37566PnLszOFohoVmN/Ey3/uxzNkPCJOnkJrXwGbWkhd21reofuH/2pqiWHIhUqqHtRI
         7FSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:mime-version:references
         :in-reply-to:subject:cc:to:from:date:sender:dkim-signature;
        bh=myFBqmYHJZJupBe2jSWHXNDz053m8nZsc/h4ebx/3es=;
        b=T4mEHOldVKX/3epYYg/aLSGPWIO6+oTLAwJ7scDhW99/JQioLvA3PTxGI2p3MMwHdN
         wb7QMHQc2oGNPJOnH8VN4CuvJZtzLSSQNlH5Rye3IuNg/ZSulANshARf9w0jlzIQeP3t
         gq85Xha1qaopZNW1cjWXpYodw7UAKcMrwK26drAI8agRGMREwi7SekHiYPo9QqEGaumB
         dxwxi0HeJYkRQXoH1UDxuU+tV5KWGpvJtDMd9SYvqf0LKLNAWsL7kmlrC7ZJIvCCMxbv
         er2qn7TaU1q4TrbBkILVL7p82I8JMR3lXuWnjUC95ksqCsk18odeE1C1ByO/DEd83aGJ
         PE1Q==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@126.com header.s=s110527 header.b="g9/MYWdH";
       spf=pass (google.com: domain of zhongling0719@126.com designates 220.181.15.41 as permitted sender) smtp.mailfrom=zhongling0719@126.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=126.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:message-id:mime-version:references:in-reply-to
         :subject:cc:to:from:date:sender:from:to:cc;
        bh=myFBqmYHJZJupBe2jSWHXNDz053m8nZsc/h4ebx/3es=;
        b=MYS62fdidGgPHKDUVqkgAJzjuqS8rLVcdkvbZem2+fbpqOWaw22pod4NzhEuUIeaS8
         CHVKVuLCkpBrPk6sQdhg7/Vt3WCvWxr/VfQlzL4mIbPqvPP+w64z7zQ6wH3U6fEpZk2+
         GCaec8hNzRGUJVO+H2ZYbjk3CyevlTWTWWngE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:message-id
         :mime-version:references:in-reply-to:subject:cc:to:from:date
         :x-gm-message-state:sender:from:to:cc;
        bh=myFBqmYHJZJupBe2jSWHXNDz053m8nZsc/h4ebx/3es=;
        b=GLSY4oO3AUd+xd4vf2kFk+G+XZNOvQddAvTyKi7vs7F/e9huW89zdWsKdRPU2Oiw6y
         7TXwZ6CGgZGoCBWV2KmnYdOwS959oonFMKV+wAmCXQeXPNRNT/kAjha/NLdU4OctCsLv
         tAGKSUQ0KsBgreoIP5RiVo2ujZhSREg/XRgLE9ynOTLawMHOrgS0L10SVR2jFARYfqoC
         BCFauslRZvlsPZMdFBcy4OFHih2EC/KsB/RK1lDo39qFPjDahq3Hi34caQJvUu7HV0IC
         Y+Qz80J7tx/K4hSSpd7ezJGFkygjxGheZcfrC581ltwi9bT1mlum5qa7zxGdkFagnpmH
         0CoA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo1nKKb4df8A+x6hS20EIfxuYj8ofqMdda7qQfObU7kIC5YpDrwv
	hd8ynGO2l1dEL724uhmSfQbZVA==
X-Google-Smtp-Source: AA6agR5BEajQI8LtsI/0QNo29z5zRv0qOiNjWIzeWyAMBwg/yOrYKrIE09FsNv5b86tMWXpg+lcO4g==
X-Received: by 2002:a63:9043:0:b0:42c:552a:3545 with SMTP id a64-20020a639043000000b0042c552a3545mr9065799pge.151.1661935678171;
        Wed, 31 Aug 2022 01:47:58 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:1b64:b0:1fe:2dcc:657a with SMTP id
 q91-20020a17090a1b6400b001fe2dcc657als988567pjq.3.-pod-canary-gmail; Wed, 31
 Aug 2022 01:47:57 -0700 (PDT)
X-Received: by 2002:a17:903:244f:b0:175:34d6:97a8 with SMTP id l15-20020a170903244f00b0017534d697a8mr4986424pls.100.1661935677282;
        Wed, 31 Aug 2022 01:47:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1661935677; cv=none;
        d=google.com; s=arc-20160816;
        b=PUfrTU0zztTcgjDt4iUbLobcmBRwDLootX7N7phlP/JRfy8Yv71f9Gq59jNuf60Vcz
         rCzSzswFPRhuP6IipOW5dgbfsK+v3Y1hhn6hOXa1V2FuFIpnhGJy8rsoHitpbeLVHK00
         42RMf/njNrGIkY2O5+K6moOkZnIH25Vwy+2hvwkBvxpk0dNcu/majJmw5m7ZXCaiP57l
         BLMOGb31FNCWg3GWbR3vKPrLt8YHgiNSNniaE7FX7mt16PgBHBs1ZLXEGufWUHz+kWnK
         x7GkvCRlVKVLK90eCm/OnJhGpsj8yKLQO+d4NQJTi1iYFYHpVeeIj/UOoeOAAh151FGf
         fFnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:mime-version:references:in-reply-to:subject:cc:to:from
         :date:dkim-signature;
        bh=I2b+QgCfeF+dud5MOq3V/9Luzoz28P89Ag2Yc9OALzU=;
        b=O7GxPZKu2vxfxidKVUzWbms4e+ilvS6oRjRh2SkQzzPMo7dRQDqVZiKBqecx7y4t5t
         Izi6JA3U0/4w5mr0UxGwM51R4loYpKIWwnvj3sKxLaZJy0PoQL0sGWufKb69+XJRzbaq
         7uRTJRdhGaPsczTzm+OOd8szr1k95mmY3P9ODv9CT1EiwiCsiIPekXeVEv/iCYJ+qpDQ
         caMtRFQ8RFqP1NWcJig41zOuWjQwSkJWA2Lo1D6RWnyhPP+0buJQxtjyEnw8lQfeKdVZ
         Ou8ujhxogIxtQDKMUhOIry2DNou8w8o0MT4QvrVC1gaZSd4sktoe+dCX2oP57mtihMay
         1maA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@126.com header.s=s110527 header.b="g9/MYWdH";
       spf=pass (google.com: domain of zhongling0719@126.com designates 220.181.15.41 as permitted sender) smtp.mailfrom=zhongling0719@126.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=126.com
Received: from m1541.mail.126.com (m1541.mail.126.com. [220.181.15.41])
        by mx.google.com with ESMTP id s13-20020a17090302cd00b00175284c8e9dsi3478443plk.199.2022.08.31.01.47.56
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 31 Aug 2022 01:47:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhongling0719@126.com designates 220.181.15.41 as permitted sender) client-ip=220.181.15.41;
Received: from zhongling0719$126.com ( [112.64.161.44] ) by
 ajax-webmail-wmsvr41 (Coremail) ; Wed, 31 Aug 2022 16:47:43 +0800 (CST)
X-Originating-IP: [112.64.161.44]
Date: Wed, 31 Aug 2022 16:47:43 +0800 (CST)
From: zhongling0719  <zhongling0719@126.com>
To: "Greg KH" <gregkh@linuxfoundation.org>
Cc: stern@rowland.harvard.edu, linux-usb@vger.kernel.org, 
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re:Re: [PATCH] uas: add no-uas quirk for Thinkplus and
 Hiksemi usb-storage
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.13 build 20220113(9671e152)
 Copyright (c) 2002-2022 www.mailtech.cn 126com
In-Reply-To: <Yw8MNa3vPEtkIQsj@kroah.com>
References: <1661930031-21908-1-git-send-email-zhongling0719@126.com>
 <Yw8MNa3vPEtkIQsj@kroah.com>
Content-Type: multipart/alternative; 
	boundary="----=_Part_71262_1678069528.1661935663993"
MIME-Version: 1.0
Message-ID: <44784fcb.4c24.182f315bb79.Coremail.zhongling0719@126.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: KcqowADn9t4wIA9jhd1tAA--.46073W
X-CM-SenderInfo: x2kr0wpolqwiqxrzqiyswou0bp/1tbiYA5u0FpEI1M0ygABsB
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-Original-Sender: zhongling0719@126.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@126.com header.s=s110527 header.b="g9/MYWdH";       spf=pass
 (google.com: domain of zhongling0719@126.com designates 220.181.15.41 as
 permitted sender) smtp.mailfrom=zhongling0719@126.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=126.com
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

------=_Part_71262_1678069528.1661935663993
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all:


1.sorry,the patch have changed.
2.Yes,about 70m/s for reading / 30m/s for writing after back to the old-sty=
le usb-storage, These USB chips are 3.1 interface and support 400m / s high=
-speed for reading and writing by new UAS protocol, The architecture is not=
 well supported and may cause error and crash , the device will be offlined=
 and not working at all. affect the normal use of users, so submit this pat=
ch.


At 2022-08-31 15:22:29, "Greg KH" <gregkh@linuxfoundation.org> wrote:
>On Wed, Aug 31, 2022 at 03:13:51PM +0800, zenghongling wrote:
>> The UAS mode of Thinkplus and Hiksemi is reported to fail to work on
>> several platforms with the following error message:
>>=20
>> [   39.702439] xhci_hcd 0000:0c:00.3: ERROR Transfer event for disabled =
endpoint or incorrect stream ring
>> [   39.702442] xhci_hcd 0000:0c:00.3: @000000026c61f810 00000000 0000000=
0 1b000000 05038000
>>=20
>> And when running iozone will disconnect from the USB controller, then af=
ter re-connecting the device
>> will be offlined and not working at all.
>
>Plese wrap your changelog at the properly length here (the warning
>message is fine.)
>
>>=20
>> Signed-off-by: zenghongling <zhongling0719@126.com>
>> ---
>>  drivers/usb/storage/unusual_uas.h | 18 ++++++++++++++++++
>>  1 file changed, 18 insertions(+)
>>=20
>> diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unu=
sual_uas.h
>> index cdff7dc..bb0d31d 100644
>> --- a/drivers/usb/storage/unusual_uas.h
>> +++ b/drivers/usb/storage/unusual_uas.h
>> @@ -215,6 +215,24 @@ UNUSUAL_DEV(0x4971, 0x1012, 0x0000, 0x9999,
>>  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>>  		US_FL_IGNORE_UAS),
>> =20
>> +UNUSUAL_DEV(0x17ef, 0x3899, 0x0000, 0x9999,
>> +		"Thinkplus",
>> +		"External HDD",
>> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>> +		US_FL_IGNORE_UAS),
>> +
>> +UNUSUAL_DEV(0x090c, 0x2000, 0x0000, 0x9999,
>> +		"Hiksemi",
>> +		"External HDD",
>> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>> +		US_FL_IGNORE_UAS),
>> +
>> +UNUSUAL_DEV(0x0bda, 0x9210, 0x0000, 0x9999,
>> +		"Hiksemi",
>> +		"External HDD",
>> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>> +		US_FL_IGNORE_UAS),
>
>These need to be in sorted order by vendor and product id in the file.
>
>And all of these do not support UAS?  How slow does this change then
>make this device?  You are defaulting back to the old-style usb-storage
>protocol which is very very slow.  Why are these devices exposing a UAS
>device if it does not work at all?
>
>thanks,
>
>greg k-h

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/44784fcb.4c24.182f315bb79.Coremail.z=
hongling0719%40126.com.

------=_Part_71262_1678069528.1661935663993
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div style=3D"line-height:1.7;color:#000000;font-size:14px;font-family:Aria=
l"><p style=3D"margin: 0;">Hi all:<br></p><div style=3D"margin: 0;">1.sorry=
,the patch have changed.</div><div style=3D"margin: 0;">2.Yes,about 70m/s f=
or reading / 30m/s for writing after back to the old-style usb-storage, The=
se USB chips are 3.1 interface and support 400m / s high-speed for reading =
and writing by new UAS protocol, The architecture is not well supported and=
 may cause error and crash , the device will be offlined and not working at=
 all. affect the normal use of users, so submit this patch.<br></div><pre><=
br>At 2022-08-31 15:22:29, "Greg KH" &lt;gregkh@linuxfoundation.org&gt; wro=
te:
&gt;On Wed, Aug 31, 2022 at 03:13:51PM +0800, zenghongling wrote:
&gt;&gt; The UAS mode of Thinkplus and Hiksemi is reported to fail to work =
on
&gt;&gt; several platforms with the following error message:
&gt;&gt;=20
&gt;&gt; [   39.702439] xhci_hcd 0000:0c:00.3: ERROR Transfer event for dis=
abled endpoint or incorrect stream ring
&gt;&gt; [   39.702442] xhci_hcd 0000:0c:00.3: @000000026c61f810 00000000 0=
0000000 1b000000 05038000
&gt;&gt;=20
&gt;&gt; And when running iozone will disconnect from the USB controller, t=
hen after re-connecting the device
&gt;&gt; will be offlined and not working at all.
&gt;
&gt;Plese wrap your changelog at the properly length here (the warning
&gt;message is fine.)
&gt;
&gt;&gt;=20
&gt;&gt; Signed-off-by: zenghongling &lt;zhongling0719@126.com&gt;
&gt;&gt; ---
&gt;&gt;  drivers/usb/storage/unusual_uas.h | 18 ++++++++++++++++++
&gt;&gt;  1 file changed, 18 insertions(+)
&gt;&gt;=20
&gt;&gt; diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/stora=
ge/unusual_uas.h
&gt;&gt; index cdff7dc..bb0d31d 100644
&gt;&gt; --- a/drivers/usb/storage/unusual_uas.h
&gt;&gt; +++ b/drivers/usb/storage/unusual_uas.h
&gt;&gt; @@ -215,6 +215,24 @@ UNUSUAL_DEV(0x4971, 0x1012, 0x0000, 0x9999,
&gt;&gt;  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
&gt;&gt;  		US_FL_IGNORE_UAS),
&gt;&gt; =20
&gt;&gt; +UNUSUAL_DEV(0x17ef, 0x3899, 0x0000, 0x9999,
&gt;&gt; +		"Thinkplus",
&gt;&gt; +		"External HDD",
&gt;&gt; +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
&gt;&gt; +		US_FL_IGNORE_UAS),
&gt;&gt; +
&gt;&gt; +UNUSUAL_DEV(0x090c, 0x2000, 0x0000, 0x9999,
&gt;&gt; +		"Hiksemi",
&gt;&gt; +		"External HDD",
&gt;&gt; +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
&gt;&gt; +		US_FL_IGNORE_UAS),
&gt;&gt; +
&gt;&gt; +UNUSUAL_DEV(0x0bda, 0x9210, 0x0000, 0x9999,
&gt;&gt; +		"Hiksemi",
&gt;&gt; +		"External HDD",
&gt;&gt; +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
&gt;&gt; +		US_FL_IGNORE_UAS),
&gt;
&gt;These need to be in sorted order by vendor and product id in the file.
&gt;
&gt;And all of these do not support UAS?  How slow does this change then
&gt;make this device?  You are defaulting back to the old-style usb-storage
&gt;protocol which is very very slow.  Why are these devices exposing a UAS
&gt;device if it does not work at all?
&gt;
&gt;thanks,
&gt;
&gt;greg k-h
</pre></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;USB Mass Storage on Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:usb-storage+unsubscribe@lists.one-eyed-alien.net"=
>usb-storage+unsubscribe@lists.one-eyed-alien.net</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/a/lists.one-eyed-alien.net/d/msgid/usb-storage/44784fcb.4c24.182f315bb79=
.Coremail.zhongling0719%40126.com?utm_medium=3Demail&utm_source=3Dfooter">h=
ttps://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/447=
84fcb.4c24.182f315bb79.Coremail.zhongling0719%40126.com</a>.<br />

------=_Part_71262_1678069528.1661935663993--

