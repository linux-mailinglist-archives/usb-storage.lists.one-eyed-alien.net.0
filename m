Return-Path: <usb-storage+bncBDTPNYNWQEIBBIOJW7BQMGQEON54KAA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x447.google.com (mail-pf1-x447.google.com [IPv6:2607:f8b0:4864:20::447])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F5DAFDE4F
	for <lists+usb-storage@lfdr.de>; Wed,  9 Jul 2025 05:40:19 +0200 (CEST)
Received: by mail-pf1-x447.google.com with SMTP id d2e1a72fcca58-740774348f6sf3683200b3a.1
        for <lists+usb-storage@lfdr.de>; Tue, 08 Jul 2025 20:40:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1752032417; cv=pass;
        d=google.com; s=arc-20240605;
        b=kvnoMQrDV6NkXJX1MzlUJOIiShzgNIDkfNBpwEXKygWab+O2LAglh5SridjMiBPdSI
         JkLfBrFeHdajql5KYVD4LcPfIKpO7qXhzyv7r9q4Y2/lrqK9M4K8CY3cAzs1YJyyiTVo
         18wb+6wb3lzFS1xidlGpRP3/dyyiIDJIwo6DZNIuhhBrNbGCjjjHS/4JoOci37B3/jcs
         PqVHvdIGgrm02V8ZBo2pV8/T+h3NddvVCyq4YPphM5EM5jXz8iavQKOaSqqYyjW5FNMw
         yqoXgpR1BrNJYgnwbECm/1rJokgtx2CDpeB33n0TeswiNKldvxIoL59e/gCWLkIOmYea
         2sug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:references:cc:to
         :subject:user-agent:mime-version:date:message-id:sender
         :dkim-signature;
        bh=XGe982Jjc0iMd4/84+S2ytSqpwbPKzsEvDo5DNkLca8=;
        fh=7+23+8aKM5EMeupGjkRPGBEA8LlTpp3F3xYwNyd6tqU=;
        b=kHUyKUYAkknCHG1x9MQsElFIUYtv+TW1GfBpIYxwoTSDrFgc1DFv2rdtU67REakKzj
         Vws/vyw/z/iSZzLshaoddjFFpGFprQVMANe3ePVEZfsQdB0RhUgIy+C90u6oMxYjCfx6
         g1ELbVXpTcofBClU4L2bhYyywLZmyM7qgzPEeLxf6a+NZB19dIiB7Z3/pODxNkRyo1n1
         DyZXU1xDSIQaqAxhkd+dv6oJcF0yLcQzpZ2oGUc1yVZqnHOVB/FVAAix/1z8XRSY4u4d
         rllAOLM5fLSFonPsVkbOmSY0Wx2XrUjhq/2DO+haZ9IDEYyhfh0DxDcF13vv9v3ZYgjJ
         nqkw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted sender) smtp.mailfrom=dengjie03@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1752032417; x=1752637217; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:sender:from:to:cc:subject
         :date:message-id:reply-to;
        bh=XGe982Jjc0iMd4/84+S2ytSqpwbPKzsEvDo5DNkLca8=;
        b=eQ1ZY7f3epyYuoA/7S3ewUiC3VjycnXzTuTSTcvOYzMs9KNnPXWlzRG3rlPxDvO/P4
         S+pfXYHPwILnPLLho+hK6jpzVwBLn5p1a0LfdWxC75a9rCqWBIBnAyIh+W5wWOC6s59r
         DYn8F1x/joxV5S5oFzf05+bc1hs6X5iz5RqEg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752032417; x=1752637217;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-beenthere:x-gm-message-state:sender:from:to:cc:subject
         :date:message-id:reply-to;
        bh=XGe982Jjc0iMd4/84+S2ytSqpwbPKzsEvDo5DNkLca8=;
        b=FZ/L6Vr9pqnsTCoDvFr1QwZwirjYs+j30pz6O/RMCzttFtzPQL3rud/DyXEKgoWTsp
         +Ru9Xz/bNMFk0lQBAYk4i5c/Kc6PckN0WwW/FzGSDvZ81uH6+N2/EWQlMQEivC9Pfee7
         b/sarHyhQRbW9nNdpzpdkakJh3EzjkqPS6Egq+eVScvMWPVgDeXXFUFZYoaH4Uxr89AP
         t/IJJVwvVSTxBhvvItKHNB58iIYalOtq0SIJypfKf0sNorhnGjZctS90bGpa2oiGCvwE
         YAMcs0Z/H4xumRom/Z1EhwzZlhFIICgJ+XUo63XxiU5gm+Idu4W/98ZF86Gzm/M9Q19D
         Qt5A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVm/Re0vRRjiHQpKvvAG/bwhKUiWzXDAqxDCF8tuSV6GqYYk+ARiHo/9I6q+WbZZ49XaQGiTg==@lfdr.de
X-Gm-Message-State: AOJu0YxL76qZ/9A0rNd3UkPsqqEX2vvmW/YzsX14gMES51NZag0yBCYa
	aDPRFTKqxIn7R5znv4N9OCrr8Ceg/C/pEZ7uE0OXTfh9OuXzpdVZiP+S/yzznb1lmoM=
X-Google-Smtp-Source: AGHT+IFNn7tEZ+FoJbHagN8hxSn1jgQk9K09TdsgYtSp/Ba2T+4eBcXu2z4OsU/dmPk6CLfvCEZSQg==
X-Received: by 2002:a05:6a20:7493:b0:22c:6ca1:8d5c with SMTP id adf61e73a8af0-22cd5ff0fb0mr1442310637.18.1752032417497;
        Tue, 08 Jul 2025 20:40:17 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZd026lbZGkFM8pBMqs5dxHg/ThfFzUiuVoejDSeCoMC5w==
Received: by 2002:a05:6a00:848:b0:734:3a51:4ab9 with SMTP id
 d2e1a72fcca58-74ceba09bc9ls4181974b3a.2.-pod-prod-04-us; Tue, 08 Jul 2025
 20:40:16 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW0IjouG2xeiVaKfWGj43bC6izrDp47bY1a/ONsDVblnhwKM1EoJFUvVyWBHuISuY+5P/HKJwpnk+218g==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a20:2445:b0:225:ed50:2278 with SMTP id adf61e73a8af0-22cd7aa424dmr1671570637.32.1752032416009;
        Tue, 08 Jul 2025 20:40:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1752032416; cv=none;
        d=google.com; s=arc-20240605;
        b=LubePxatzBL2l1oDMHdZZ/v4jgzMVHGRUHj8jqN/dKE8N1aMYxtK8gy9zSqYK55Je4
         1SD9R6Y1Dvssy4rcOFFNOaeiGLKnPd3aiTHHyZkfUKqYVDO2MJe3mbMFCipubJ31x7oE
         3V+vA1k7JRBe8IGRw6yF4Ghsr2vCgN6frJ3iwOGaMlJvGxHkgVzybhy/oSpZx3crapW1
         rc+PXlkbWS2NcWr7SM5l047SZwI2NOkPToJzRxas9j6IBzhXezrJzxzlt7msuNPErGCs
         rhMx5FlIeh1rEV62QUCD+lDVl9/xLo9E6RvMaIog0+vVPJxUXlQ6mfc9ObSP15qcYkWo
         xLJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:from:references:cc:to:subject:user-agent:mime-version
         :date:message-id;
        bh=fjAWHugHnbkP/B1iOCwOO1KvDTH5aa5NZWH36XzldnI=;
        fh=aQQzdJRFsORi1PMls268opEIcpN9488iDRYb/9EBMrk=;
        b=X/UvhsFIOlJH1zl8xnICnzzoxYfIbb4TKyFNs/uuej8CxdPWdStegEokPgacpMr6gW
         Q+K/bwelo5Z84RPZcK2jK3w9fBNzRmSY/yhy002uT5JwA2Sm5IehI1fUjfQB5HqM9+Eo
         4E9z3BhvvSN+x0NKm8/FjJuELqInv1yjMEqdOeGwXWNGSf3w9rpELGer/KVdj2QAaj2W
         j9B/XmB3gYtgic4/PMBzABqVAVxpePpvcooiQUW0F4bFvZuwSZjMgJrERziJgM5cKoSx
         AaSl1H+CYVBvtPNyHC5YZ9++jKJ1pfws7Z88iNVDC1WKCZn0MJj67liqwIIgAjEVpUiE
         SC+Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted sender) smtp.mailfrom=dengjie03@kylinos.cn
Received: from mailgw.kylinos.cn (mailgw.kylinos.cn. [124.126.103.232])
        by mx.google.com with ESMTPS id 41be03b00d2f7-b3ba6e2ea77si1063237a12.323.2025.07.08.20.40.14
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Jul 2025 20:40:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted sender) client-ip=124.126.103.232;
X-UUID: 67eeb25a5c7611f0b29709d653e92f7d-20250709
X-CID-CACHE: Type:Local,Time:202507091113+08,HitQuantity:1
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.45,REQID:6bbecd2a-3dfb-44d1-b14b-aba2f4bb72ef,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:6493067,CLOUDID:cf1e7a028788195e57e165485a11aef1,BulkI
	D:nil,BulkQuantity:0,Recheck:0,SF:80|81|82|83|102,TC:nil,Content:0|52,EDM:
	-3,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,
	AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 67eeb25a5c7611f0b29709d653e92f7d-20250709
X-User: dengjie03@kylinos.cn
Received: from [10.42.12.86] [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <dengjie03@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_128_GCM_SHA256 128/128)
	with ESMTP id 1841463811; Wed, 09 Jul 2025 11:40:06 +0800
Content-Type: multipart/alternative;
 boundary="------------qrb6ORDk0RArxZ0c1reDDOLd"
Message-ID: <92f1e73f-5814-4e01-98b6-1c9c0b87f903@kylinos.cn>
Date: Wed, 9 Jul 2025 11:40:03 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH v2] usb: storage: Ignore UAS driver for
 SanDisk Extreme Pro 55AF storage device
To: Greg KH <gregkh@linuxfoundation.org>
Cc: stern@rowland.harvard.edu, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <2025070422-punctured-opal-f51e@gregkh>
 <20250707062507.39531-1-dengjie03@kylinos.cn>
 <2025070702-unsigned-runny-62c6@gregkh>
 <4bac2d53-0e5b-437e-92bc-12921a8efd8d@kylinos.cn>
 <2025070810-nintendo-congenial-95d4@gregkh>
From: Jie Deng <dengjie03@kylinos.cn>
In-Reply-To: <2025070810-nintendo-congenial-95d4@gregkh>
X-Original-Sender: dengjie03@kylinos.cn
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted
 sender) smtp.mailfrom=dengjie03@kylinos.cn
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

This is a multi-part message in MIME format.
--------------qrb6ORDk0RArxZ0c1reDDOLd
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable


=E5=9C=A8 2025/7/8 15:33, Greg KH =E5=86=99=E9=81=93:
>> 2) linux + arm64: The SanDisk Extreme Pro 55AF device will report an err=
or
>> when
>> using the uas driver and the driver cannot be loaded. USB Controller mod=
el
>> (Vendor ID: 1912, Device ID: 0014,uPD720201 USB 3.0 Host Controller).
> Ok, that sounds like an arm64 issue we should resolve.  Why can the
> driver not be loaded at all?  What happens?
1. During the process of loading the uas driver, the following error=20
message will occur,
resulting in the failure of driver loading:
scsi 3:0:0:1: Failed to get diagnostic page 0x1
scsi 3:0:0:1: Failed to bind enclosure -19
ses 3:0:0:1: Attached Enclosure device
sd 3:0:0:0: [sda] tag#10 data cmplt err -75 uas-tag 1 inflight: CMD
sd 3:0:0:0: [sda] tag#10 CDB: Read(10) 28 00 74 6f 6d 00 00 00 08 00
sd 3:0:0:0: [sda] tag#10 uas_eh_abort_handler 0 uas-tag 1 inflight: CMD
sd 3:0:0:0: [sda] tag#10 CDB: Read(10) 28 00 74 6f 6d 00 00 00 08 00

2. 0781:55ab SanDisk Corp.SanDisk 3.2Gen1 device also runs the uas driver,
but there is no error as mentioned above.

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/92f1e73f-5814-4e01-98b6-1c9c0b87f903%40kylinos.=
cn.

--------------qrb6ORDk0RArxZ0c1reDDOLd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">=E5=9C=A8 2025/7/8 15:33, Greg KH =E5=86=
=99=E9=81=93:<span
      style=3D"white-space: pre-wrap">
</span></div>
    <blockquote type=3D"cite"
      cite=3D"mid:2025070810-nintendo-congenial-95d4@gregkh">
      <blockquote type=3D"cite">
        <pre wrap=3D"" class=3D"moz-quote-pre">2) linux + arm64: The SanDis=
k Extreme Pro 55AF device will report an error
when
using the uas driver and the driver cannot be loaded. USB Controller model
(Vendor ID: 1912, Device ID: 0014,uPD720201 USB 3.0 Host Controller).
</pre>
      </blockquote>
      <pre wrap=3D"" class=3D"moz-quote-pre">
Ok, that sounds like an arm64 issue we should resolve.  Why can the
driver not be loaded at all?  What happens?</pre>
    </blockquote>
    1. During the process of loading the uas driver, the following error
    message will occur, <br>
    resulting in the failure of driver loading:<br>
    scsi 3:0:0:1: Failed to get diagnostic page 0x1<br>
    scsi 3:0:0:1: Failed to bind enclosure -19<br>
    ses 3:0:0:1: Attached Enclosure device<br>
    sd 3:0:0:0: [sda] tag#10 data cmplt err -75 uas-tag 1 inflight: CMD<br>
    sd 3:0:0:0: [sda] tag#10 CDB: Read(10) 28 00 74 6f 6d 00 00 00 08 00<br=
>
    sd 3:0:0:0: [sda] tag#10 uas_eh_abort_handler 0 uas-tag 1 inflight:
    CMD<br>
    sd 3:0:0:0: [sda] tag#10 CDB: Read(10) 28 00 74 6f 6d 00 00 00 08 00<br=
>
    <p>2. 0781:55ab SanDisk Corp.SanDisk 3.2Gen1 device also runs the
      uas driver, <br>
      but there is no error as mentioned above.<br>
    </p>
    <br>
  </body>
</html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;USB Mass Storage on Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:usb-storage+unsubscribe@lists.one-eyed-alien.net"=
>usb-storage+unsubscribe@lists.one-eyed-alien.net</a>.<br />
To view this discussion visit <a href=3D"https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/92f1e73f-5814-4e01-98b6-1c9c0b87f903=
%40kylinos.cn?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google=
.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/92f1e73f-5814-4e01-98b6=
-1c9c0b87f903%40kylinos.cn</a>.<br />

--------------qrb6ORDk0RArxZ0c1reDDOLd--
