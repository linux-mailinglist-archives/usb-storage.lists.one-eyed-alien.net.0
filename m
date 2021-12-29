Return-Path: <usb-storage+bncBCJLBW6OUMMRBXWBWWHAMGQESRNPXWQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x848.google.com (mail-qt1-x848.google.com [IPv6:2607:f8b0:4864:20::848])
	by mail.lfdr.de (Postfix) with ESMTPS id EED25481A6B
	for <lists+usb-storage@lfdr.de>; Thu, 30 Dec 2021 08:33:51 +0100 (CET)
Received: by mail-qt1-x848.google.com with SMTP id p9-20020ac84089000000b002c57e01f812sf4351558qtl.17
        for <lists+usb-storage@lfdr.de>; Wed, 29 Dec 2021 23:33:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1640849631; cv=pass;
        d=google.com; s=arc-20160816;
        b=Yi3geVfK5k5O0uQbL/iLYK0BU8MoA+9YwwzmO/7KI0xXXTdO7NWIpnJEeYkB3XiLPi
         Yj4F7udOXIxm+vUPjV7MLn+qx2xrAFVsnh4G6c2ISMaUkrwQ6jzAwM5x74XS0JdE9+Ne
         2p9Z2b8UJL4ysYQKXNoJgHvdEa3AAcmShho3kzJmO934UCfLwJG2gsK1L2fz1xm6Cib5
         GEooRoVqg/wSUxljB/7X8oF98M4OMTQKIZGjprU3y5rCGiE6rQ5UbWx6PFK1soJ++DfE
         lCp+BquM4xJtZevVv0Dlrn9vvg9O8at4hNlCTmlQGCZvLODRWqnaE3LJ56KE+QhNIlhw
         eBCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=9J8ZvgNPlcDlqUVE4HJH4pmc8VIq16qDuNx9RDX1SBI=;
        b=ZnGlKZRycedMrZja6YhkwF8TTQJH+pnfk2n9GxnWaLMLi7FF1QgYI7UWvRFKffKihN
         cUAp9k+V+Zvgb6SsKEn/C/eL1Cr4UrV88U+dzoeXRIPM+IIeLt4pWVOYUOl2cDedn5jh
         T403At9uB6BcN0H8TH/f36YeGNmuHNlQekLSxykU2qANC2E0igEeUL3OVO4WToycKOc6
         VQ3rDwmauAv47cMI6ZHRXSLQkrEgTh9Yv+H/59MbShammeUNS3IHkaL7nH95sGT4Cnq3
         pQ/U4CJfwPQe/7H9NIN3PxqYY6MEXGqO+h1+0JPxLeAr3B+khW9lRAglUNdL/bFJRR+3
         I6Jw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 80.12.242.128 is neither permitted nor denied by best guess record for domain of christophe.jaillet@wanadoo.fr) smtp.mailfrom=christophe.jaillet@wanadoo.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9J8ZvgNPlcDlqUVE4HJH4pmc8VIq16qDuNx9RDX1SBI=;
        b=aC6mtVYo4K5BWuPjtEQ+/QyBGXOxpw+l8iRElrg2r5u4CneVZzTd6iC4KR4K7hqvI0
         bUAXU9ZORgV65pdk86PG0BHLk8Yvl6dQCAKyOzwpXwqK5tMCRMzk2k2fDJE8GT2K40mg
         CJZypgEjmNqcp9MmBKDxF60RQhmYEDNX5b3CM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:mime-version:user-agent
         :subject:content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9J8ZvgNPlcDlqUVE4HJH4pmc8VIq16qDuNx9RDX1SBI=;
        b=eZ1qsOagU6V0YCVY4pIMwAzuvr4uvd3FxCpa5XYmMnu/s4revhSGHv8+DzzYONCMUo
         49AE2kfWmtgQWT0ODKH7+od3y3nnzB3BNS+pcO/UqiKTCJx/5G78wZsnTZv4Z9P8YlQp
         uiyIBpJSxD6+XnLvuZ4Bf1/AlU7aXz1ZKASao473dQpR8JHnXkSDRqiq6lhW6nTVT61f
         d9sf448oMGgH1BPLXU6PkqIoDE0S5Ai1QGJoymsWU9+vIBIfwokib8ns0I6EmseNtzZ9
         nha8TJP/SY5v3xJ9LWmemhVYR9C3tIEdn7Yiuqasn7cgcp/tISqFABRUQZz/VTUgJL2R
         nSuw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531tHQPVgKgcCsT62sPtEC7Dtuf5oVBsVqmwwm6TUZ4W2Vo0Ffuh
	TAXmo4NerIoBfXtRa1ykAuNudg==
X-Google-Smtp-Source: ABdhPJxn+L8mPxAdWkF4YrNFHeZd1KvStNQl+XGh3VybiVhuuVB6nV534T0PsQkcjMpTjFF+sA+D6A==
X-Received: by 2002:a05:6214:e6d:: with SMTP id jz13mr26511957qvb.27.1640849630796;
        Wed, 29 Dec 2021 23:33:50 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:1789:: with SMTP id s9ls12528359qtk.7.gmail; Wed,
 29 Dec 2021 23:33:50 -0800 (PST)
X-Received: by 2002:ac8:5c54:: with SMTP id j20mr25871614qtj.438.1640849630358;
        Wed, 29 Dec 2021 23:33:50 -0800 (PST)
Received: by 2002:a05:620a:2237:b0:468:222f:bd29 with SMTP id af79cd13be357-4757ed492bfms85a;
        Wed, 29 Dec 2021 01:16:25 -0800 (PST)
X-Received: by 2002:adf:fd02:: with SMTP id e2mr19732339wrr.139.1640769384553;
        Wed, 29 Dec 2021 01:16:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1640769384; cv=none;
        d=google.com; s=arc-20160816;
        b=y2UOigse3PcyG0bpWMF2wg7h2m8imFLbxKhSUZ1FyTI5+R8tQIil6CLzKfUuXBo6/0
         2IDVILtF3xkexDDSWiKSRbilytNTKZBOv46hlNeyyhhYOA3mQCW2lcZ4q1QWLG1kaEka
         xcAlnEKmY/d8AR6UkGP4D/82wUBfnLu3P6qnnUfi7Oc3Hn8f7nODkLQyhmR71dcnC8OU
         MIWJk+eZ09P38q27sZt1BkTBXFgpq2u9psgzUaj7SFUeGbrWPUcOMFJKjZwQABHWgjQs
         Kyx5tFR3hiJZ7w/u0DdOVJFRcAipX4cqPHpG1K+w70BpeKtM4t11HVl+BeXlmx90PsLR
         3GkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=aPHo8GIqHylhhlqLwwJLGrm0N7w+HsNUVW7nbqq8+fI=;
        b=xGtqRZ2T/JQQWyJVWAj9PPzH6Xk+7r5IAP8ytsJzsl72U/ovGrZB7lXjgjPG3RDL7H
         wl5O4BdPGrqKe6kQerv3I8JvWRuBCM3SgexNQvrBUhXGVWULJL0K69dzMtrulFFt1tyH
         4HAqPYwgUg724GNS/PE8z11CSnE6FZaawkjuwctEZ06Q0xUvjYOCUt8Az7R15AOo5VoC
         CGpjr9ZvkdDvGZl9y0D/dh6x8MKzC8P5gM4cXGomGrlbHLbESmeVyksWsrv1Jg+6Hhkl
         /2oAQO+YrD9eQVK9gVIdpk2LymJKsdJ577u0JCuN5JsAb57Q+rwi2YvsX9c1X3DOGvtW
         hJZA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 80.12.242.128 is neither permitted nor denied by best guess record for domain of christophe.jaillet@wanadoo.fr) smtp.mailfrom=christophe.jaillet@wanadoo.fr
Received: from smtp.smtpout.orange.fr (smtp06.smtpout.orange.fr. [80.12.242.128])
        by mx.google.com with ESMTPS id n15si12836991wrf.954.2021.12.29.01.16.24
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Dec 2021 01:16:24 -0800 (PST)
Received-SPF: neutral (google.com: 80.12.242.128 is neither permitted nor denied by best guess record for domain of christophe.jaillet@wanadoo.fr) client-ip=80.12.242.128;
Received: from [192.168.1.18] ([86.243.171.122])
	by smtp.orange.fr with ESMTPA
	id 2V4InTzq1MxZu2V4InMidO; Wed, 29 Dec 2021 10:16:24 +0100
X-ME-Helo: [192.168.1.18]
X-ME-Auth: YWZlNiIxYWMyZDliZWIzOTcwYTEyYzlhMmU3ZiQ1M2U2MzfzZDfyZTMxZTBkMTYyNDBjNDJlZmQ3ZQ==
X-ME-Date: Wed, 29 Dec 2021 10:16:24 +0100
X-ME-IP: 86.243.171.122
Message-ID: <156fb7f1-cf12-e6cb-63c0-5c0413ce2b2e@wanadoo.fr>
Date: Wed, 29 Dec 2021 10:16:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: [usb-storage] Re: KMSAN: uninit-value in alauda_check_media
Content-Language: en-US
To: Alan Stern <stern@rowland.harvard.edu>
Cc: glider@google.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 syzkaller-bugs@googlegroups.com, usb-storage@lists.one-eyed-alien.net,
 Kernel Janitors <kernel-janitors@vger.kernel.org>
References: <0000000000007d25ff059457342d@google.com>
 <f78b974a-e36b-6d23-6977-fdf50c05600b@wanadoo.fr>
 <YcuUX6BVo+HA1TcI@rowland.harvard.edu>
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
In-Reply-To: <YcuUX6BVo+HA1TcI@rowland.harvard.edu>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: christophe.jaillet@wanadoo.fr
X-Original-Authentication-Results: mx.google.com;       spf=neutral
 (google.com: 80.12.242.128 is neither permitted nor denied by best guess
 record for domain of christophe.jaillet@wanadoo.fr) smtp.mailfrom=christophe.jaillet@wanadoo.fr
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

Le 28/12/2021 =C3=A0 23:49, Alan Stern a =C3=A9crit=C2=A0:
> On Tue, Dec 28, 2021 at 08:47:15AM +0100, Christophe JAILLET wrote:
>> Hi,
>>
>> (2nd try - text only format - sorry for the noise)
>>
>>
>> first try to use syzbot. I hope I do it right.
>> Discussion about the syz report can be found at
>> https://lore.kernel.org/linux-kernel/0000000000007d25ff059457342d@google=
.com/
>>
>> This patch only test if alauda_get_media_status() (and its embedded
>> usb_stor_ctrl_transfer()) before using the data.
>> In case of error, it returns USB_STOR_TRANSPORT_ERROR as done elsewhere.
>>
>> #syz test: git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next=
.git
>> master
>>
>> CJ
>>
>=20
>> diff --git a/drivers/usb/storage/alauda.c b/drivers/usb/storage/alauda.c
>> index 20b857e97e60..6c486d964911 100644
>> --- a/drivers/usb/storage/alauda.c
>> +++ b/drivers/usb/storage/alauda.c
>> @@ -318,7 +318,8 @@ static int alauda_get_media_status(struct us_data *u=
s, unsigned char *data)
>>   	rc =3D usb_stor_ctrl_transfer(us, us->recv_ctrl_pipe,
>>   		command, 0xc0, 0, 1, data, 2);
>>  =20
>> -	usb_stor_dbg(us, "Media status %02X %02X\n", data[0], data[1]);
>> +	if (rc =3D=3D USB_STOR_XFER_GOOD)
>> +		usb_stor_dbg(us, "Media status %02X %02X\n", data[0], data[1]);
>=20
> Instead of adding this test, you could initialize data[0] and data[1]
> to zero before the call to usb_stor_ctrl_transfer.

Well, having the test is cleaner, IMHO.
If usb_stor_ctrl_transfer() fails, a message explaining the reason is=20
already generated by the same usb_stor_dbg(). Having an error message=20
followed by another one stating that the Media Status is 0x00 0x00 could=20
be confusing I think.

Let me know if you have a real preference for a memset(data, 0, 2).
If so, I'll add it.

>=20
>>  =20
>>   	return rc;
>>   }
>> @@ -453,8 +454,11 @@ static int alauda_check_media(struct us_data *us)
>>   {
>>   	struct alauda_info *info =3D (struct alauda_info *) us->extra;
>>   	unsigned char status[2];
>> +	int rc;
>>  =20
>> -	alauda_get_media_status(us, status);
>> +	rc =3D alauda_get_media_status(us, status);
>> +	if (rc !=3D USB_STOR_TRANSPORT_GOOD)
>> +		return USB_STOR_TRANSPORT_ERROR;
>>  =20
>>   	/* Check for no media or door open */
>>   	if ((status[0] & 0x80) || ((status[0] & 0x1F) =3D=3D 0x10)
>=20
> In general this looks fine.  Let us know when you are ready to submit
> the patch.

I was unsure that this patch would get any interest because the driver=20
looks old. That's why I first tried to play with syzbot :)

In the syzbot history, you also mentioned that 'unsigned char status[2]'=20
should be 'unsigned char *status =3D us->iobuf;'

This is more a blind fix for me, but it looks consistent with other=20
places that call alauda_get_media_status().

So, once you confirm if you prefer my 'if' or a 'memset', I'll resend a=20
small serie for fixing both issues.

CJ


>=20
> Alan Stern
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/156fb7f1-cf12-e6cb-63c0-5c0413ce2b2e=
%40wanadoo.fr.
