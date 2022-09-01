Return-Path: <usb-storage+bncBD26DNHQRAJRBJNQYCMAMGQEDY4OSKQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id 023575A8B64
	for <lists+usb-storage@lfdr.de>; Thu,  1 Sep 2022 04:25:48 +0200 (CEST)
Received: by mail-pl1-x648.google.com with SMTP id m15-20020a170902db0f00b001753b1c5adesf3002254plx.18
        for <lists+usb-storage@lfdr.de>; Wed, 31 Aug 2022 19:25:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661999141; cv=pass;
        d=google.com; s=arc-20160816;
        b=N8zFwtsc/KnePXG5YmY3mjlZBEzQgXvZtTDAVmzUeJ/2X/BDbiemVpM9U5RTmSRqXI
         wRNAoxs72BY4uL2k0CdlvSOiXczfwWPK8J/PqEgsLiB+XI4nB4aAjg4ecL9o7sJYoP1B
         6kcavcoc4BUM64/AvaUW7zTOpJfUcgQBBsmclpOK+ag8pZLngq/Hu45QUYpXpAodbnAy
         op+h3m/T8G4BQZcfoj00CTKfPm1kslhXjKY4XWxw4xj//TLq3TtrIt9Sji8gio2yX/Ca
         FDk9L7CRpp8FQYkYWbnH8+qZLCb+c/1r+TXXNsiW2bMKUkcWs3x2jxrUEfAa1/TkJEvy
         LnWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:mime-version:references
         :in-reply-to:subject:cc:to:from:date:sender:dkim-signature;
        bh=Trlu8nb3rZL/rT0kmk7K4CkbPVRayWxdoiyE4JUuU3E=;
        b=kYG/uBEyeqpErgPD4I3zLALTA0ribVKqonPq6E9g060UAI8MQOkB8IVmDx2qSnnRuU
         G40CGWpa9rSlLA8bhfTtvPTPxQRxJrJ19vv2i7vX5VZcfTuMK8pCTnGlRVB/H84Qv7Lh
         4gX4Oj5vc33n8JQBV0BONl9COoGWHrCb5YOWP5W0PKrrcy0JWwrOEYS6RBBUs9B8MTJN
         uw2Df0RbTq9EAm1jz44AOJxdxqVFz0Yxy7vxwAjGHpYG6s+8zWNpV33W4AGulPfwr3G5
         6AtrwOz+VFMZiO60YwdO0jOl4UqwGG6WYHPvV0V4pEfm3/dTgrEeB2TVA8nNQaiyD7Gj
         wbTA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@126.com header.s=s110527 header.b=EIfNg1mO;
       spf=pass (google.com: domain of zhongling0719@126.com designates 220.181.15.29 as permitted sender) smtp.mailfrom=zhongling0719@126.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=126.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:message-id:mime-version:references:in-reply-to
         :subject:cc:to:from:date:sender:from:to:cc;
        bh=Trlu8nb3rZL/rT0kmk7K4CkbPVRayWxdoiyE4JUuU3E=;
        b=ctp1vT3wBlB9kSWvhAtbfeFQoWmIL1y3lGVQEDz5+nK6K3v3BY1Cw8o7EEIJ0sFgMm
         IVKkiWEYlogtHhkPK7OINatGzOywfLfAgrpdrc497/3QjUzpv0XKRu2pKuV8HRHDp/2N
         5vAZ0FzAvPO7scTPViXtVTZ82AGaYL+0gSPys=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:message-id
         :mime-version:references:in-reply-to:subject:cc:to:from:date
         :x-gm-message-state:sender:from:to:cc;
        bh=Trlu8nb3rZL/rT0kmk7K4CkbPVRayWxdoiyE4JUuU3E=;
        b=2TeSMgUWHuPOEdBCT/CpLVgIW0py/tGwmhSlolSD/TqmnoBmGsfI5ussKvq4uOmyhD
         gQRRJFO9oY03PogOv5sfk7OGl+pI1LUc8aAPSrf5Q0VJBACUA4Uatn7QVy9+982UkUNe
         t6tn5+CVPNzrbJuVh2/YzUGojaPeyS/Z7Th6oIRrsyXrSZvlfHlKy7Y0yFalrYGgxH8f
         6q7Y1Ilq2Dhx2ubE85+feGoaCJsejih+BAhfdpkcHkVKZP5V2rkDxMxYDFawf6pBDKu+
         DRJ5JxyiU87PNuQATGgy1zSec2iLSptup8IwyrhGnW5vDeUbP/29p3CWsltno+rfK8HD
         O96w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo0CsRv5HpolKUvXi5CJxwPkiOJ4xzSvVXCUOmeaEptDKda0jxrN
	gNj2Su0XJ58xMwjRU1LsSE9HUg==
X-Google-Smtp-Source: AA6agR79Qna8aJc614KCFaAX0nHDb7lEXYGDcG0nVbYkWHwiCy6ukz4FdoXPNlvZQLcD63sciR8i+A==
X-Received: by 2002:a05:6a00:1a14:b0:52d:5fee:d46b with SMTP id g20-20020a056a001a1400b0052d5feed46bmr29049233pfv.82.1661999141341;
        Wed, 31 Aug 2022 19:25:41 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6a00:88c:b0:536:147d:f350 with SMTP id
 q12-20020a056a00088c00b00536147df350ls382845pfj.0.-pod-prod-gmail; Wed, 31
 Aug 2022 19:25:40 -0700 (PDT)
X-Received: by 2002:a05:6a00:a8f:b0:530:3c05:4644 with SMTP id b15-20020a056a000a8f00b005303c054644mr29352591pfl.79.1661999140527;
        Wed, 31 Aug 2022 19:25:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1661999140; cv=none;
        d=google.com; s=arc-20160816;
        b=ItKoaHqswpiXmP4x5vCPAEp8jcgcgFkWbwja9fm+/X+06oLGLZ/MrNXM8smE1rgro3
         PD7WscV4/ucmn64CN8ssC7znwr0JZXElzAroMIKhg0nbI4Z0yCqsSIxQvCSnZQuzuREu
         llNGBqlIAHxRnIhXQJsvJ2dmuFDc6R2NUohdmQ8MwXjlGWK+w5yq3FXLDVcTS9GTDGHV
         Sb22x6J52KdpTx2zD+C6ziG6HW66waGju88MHprko4ABiXLTr2tt9C+fy6JMbDzPFVUt
         GR40VmVmVbcEs2be4dlDIejUrpK1og0RNdC+I4rgsShdKvyGz+vKvJyf+ch8FzlfP2+z
         gjIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:mime-version:references:in-reply-to:subject:cc:to:from
         :date:dkim-signature;
        bh=0AXFVcXsp89o4yAqyjllwpuh/46f3ceoBGtt9FgIEu4=;
        b=FsklVRBd5O6SOJ9NcpRRfBXFNFD58ygxQb0S7+Papp1Audi1F62j+Jo0X/sYyuQ+J8
         sqWG9IW7efmGD5DistiiOC3LU74nEHEBuOvuKJXeAnSAG778Ztsn11RedlBEcHa2T86x
         tryM+op6xlJR9T85zP36TYWdI2rU0dbsqamlHcS40YhDbxDpV1+iSEjEVnB4SCeMvmI7
         aGBxso+iQPzrWdxVkqVJW9wc+FnBiIczhQTIm7CRiBoSUZra95GANRvnzQCUXeoaElMJ
         7/60zwNn2SnodkQeMY4qs1bxroWybiU9FQSKMeUQaf5edhP0vWVmN+TOSvSxAj9n0KwX
         jhdw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@126.com header.s=s110527 header.b=EIfNg1mO;
       spf=pass (google.com: domain of zhongling0719@126.com designates 220.181.15.29 as permitted sender) smtp.mailfrom=zhongling0719@126.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=126.com
Received: from m1529.mail.126.com (m1529.mail.126.com. [220.181.15.29])
        by mx.google.com with ESMTP id t16-20020a17090340d000b00172bb36712fsi2646251pld.514.2022.08.31.19.25.39
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 31 Aug 2022 19:25:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhongling0719@126.com designates 220.181.15.29 as permitted sender) client-ip=220.181.15.29;
Received: from zhongling0719$126.com ( [112.64.161.44] ) by
 ajax-webmail-wmsvr29 (Coremail) ; Thu, 1 Sep 2022 10:24:44 +0800 (CST)
X-Originating-IP: [112.64.161.44]
Date: Thu, 1 Sep 2022 10:24:44 +0800 (CST)
From: dd  <zhongling0719@126.com>
To: "Alan Stern" <stern@rowland.harvard.edu>
Cc: gregkh@linuxfoundation.org, linux-usb@vger.kernel.org, 
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re:Re: [PATCH] uas: add no-uas quirk for Thinkplus and
 Hiksemi usb-storage
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.13 build 20220113(9671e152)
 Copyright (c) 2002-2022 www.mailtech.cn 126com
In-Reply-To: <Yw9xSSAse3ATVRtk@rowland.harvard.edu>
References: <1661930031-21908-1-git-send-email-zhongling0719@126.com>
 <Yw9xSSAse3ATVRtk@rowland.harvard.edu>
Content-Type: multipart/alternative; 
	boundary="----=_Part_24216_1487550090.1661999084178"
MIME-Version: 1.0
Message-ID: <65f882a3.19c9.182f6dd7292.Coremail.zhongling0719@126.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: HcqowABnd3PtFxBjZyaAAA--.36833W
X-CM-SenderInfo: x2kr0wpolqwiqxrzqiyswou0bp/1tbiYA1v0FpEI1pZeQAAsV
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-Original-Sender: zhongling0719@126.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@126.com header.s=s110527 header.b=EIfNg1mO;       spf=pass
 (google.com: domain of zhongling0719@126.com designates 220.181.15.29 as
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

------=_Part_24216_1487550090.1661999084178
Content-Type: text/plain; charset="UTF-8"

Hi:


    Add more comprehensive error message for reference: 


[  587.401191][ 0] xhci_hcd 0000:0c:00.3: ERROR Transfer event for disabled endpoint or incorrect stream ring
[  587.411969][ 0] xhci_hcd 0000:0c:00.3: @000000026c61f280 00000000 00000000 1b000000 05048000
[  587.421394][ 1] sd 8:0:0:0: [sda] tag#19 uas_eh_abort_handler 0 uas-tag 20 inflight: CMD OUT 
[  587.430911][ 1] sd 8:0:0:0: [sda] tag#19 CDB: Write(10) 2a 00 03 6f 90 00 00 04 00 00
[  587.439667][ 0] xhci_hcd 0000:0c:00.3: ERROR Transfer event for disabled endpoint or incorrect stream ring
[  587.450446][ 0] xhci_hcd 0000:0c:00.3: @000000026c61f2a0 00000000 00000000 1b000000 05048000
[  587.459878][ 1] sd 8:0:0:0: [sda] tag#18 uas_eh_abort_handler 0 uas-tag 19 inflight: CMD OUT 
[  587.469396][ 1] sd 8:0:0:0: [sda] tag#18 CDB: Write(10) 2a 00 03 6f 8c 00 00 04 00 00
[  592.481237][ 1] xhci_hcd 0000:0c:00.3: xHCI host not responding to stop endpoint command.
[  592.490369][ 1] xhci_hcd 0000:0c:00.3: Assuming host is dying, halting host.
[  592.518442][ 2] sd 8:0:0:0: [sda] tag#17 uas_eh_abort_handler 0 uas-tag 18 inflight: CMD 
[  592.527575][ 2] sd 8:0:0:0: [sda] tag#17 CDB: Write(10) 2a 00 03 6f 88 00 00 04 00 00
[  592.536330][ 2] sd 8:0:0:0: [sda] tag#0 uas_eh_abort_handler 0 uas-tag 1 inflight: CMD 
[  592.545266][ 2] sd 8:0:0:0: [sda] tag#0 CDB: Write(10) 2a 00 07 44 1a 88 00 00 08 00
[  592.553905][ 1] usb 2-2: cmd cmplt err -108




          We changed a lot of USB devices and contact relevant manufacturers to confirm the driver is ok,


          This bug not cause by  xHCI controller or drivers , I tested these USB disks on other architecture platforms as arm/loongson for different xHCI controller ,  the same error occurred.

          if back to the old-style usb-storage can fix.


         The drivers can work well on Windows, We are all work on linux systsm, sorry to  Investigate whether Windows or Mac OSX systems use uasp protocol.


Thanks!






At 2022-08-31 22:33:45, "Alan Stern" <stern@rowland.harvard.edu> wrote:
>On Wed, Aug 31, 2022 at 03:13:51PM +0800, zenghongling wrote:
>> The UAS mode of Thinkplus and Hiksemi is reported to fail to work on
>> several platforms with the following error message:
>> 
>> [   39.702439] xhci_hcd 0000:0c:00.3: ERROR Transfer event for disabled endpoint or incorrect stream ring
>> [   39.702442] xhci_hcd 0000:0c:00.3: @000000026c61f810 00000000 00000000 1b000000 05038000
>> 
>> And when running iozone will disconnect from the USB controller, then after re-connecting the device
>> will be offlined and not working at all.
>
>Are you sure these failures are caused by bugs in the devices and not 
>by bugs in the xHCI controller or its driver?
>
>What happens if you plug one of these drives into a computer running 
>Windows or Mac OSX?  Do those operating systems avoid using the UAS 
>protocol with the drive?
>
>Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/65f882a3.19c9.182f6dd7292.Coremail.zhongling0719%40126.com.

------=_Part_24216_1487550090.1661999084178
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div style=3D"line-height:1.7;color:#000000;font-size:14px;font-family:Aria=
l"><div>Hi:<br>
   =20



                               =20
      <div class=3D"output-bd" dir=3D"ltr" style=3D"padding-bottom: 0px;"> =
      <p class=3D"ordinary-output target-output clearfix">&nbsp;&nbsp;&nbsp=
; <span class=3D"high-light-bg">Add more comprehensive error message </span=
>for reference:&nbsp; <br></p><pre>[  587.401191][ 0] xhci_hcd 0000:0c:00.3=
: ERROR Transfer event for disabled endpoint or incorrect stream ring
[  587.411969][ 0] xhci_hcd 0000:0c:00.3: @000000026c61f280 00000000 000000=
00 1b000000 05048000
[  587.421394][ 1] sd 8:0:0:0: [sda] tag#19 uas_eh_abort_handler 0 uas-tag =
20 inflight: CMD OUT=20
[  587.430911][ 1] sd 8:0:0:0: [sda] tag#19 CDB: Write(10) 2a 00 03 6f 90 0=
0 00 04 00 00
[  587.439667][ 0] xhci_hcd 0000:0c:00.3: ERROR Transfer event for disabled=
 endpoint or incorrect stream ring
[  587.450446][ 0] xhci_hcd 0000:0c:00.3: @000000026c61f2a0 00000000 000000=
00 1b000000 05048000
[  587.459878][ 1] sd 8:0:0:0: [sda] tag#18 uas_eh_abort_handler 0 uas-tag =
19 inflight: CMD OUT=20
[  587.469396][ 1] sd 8:0:0:0: [sda] tag#18 CDB: Write(10) 2a 00 03 6f 8c 0=
0 00 04 00 00
[  592.481237][ 1] xhci_hcd 0000:0c:00.3: xHCI host not responding to stop =
endpoint command.
[  592.490369][ 1] xhci_hcd 0000:0c:00.3: Assuming host is dying, halting h=
ost.
[  592.518442][ 2] sd 8:0:0:0: [sda] tag#17 uas_eh_abort_handler 0 uas-tag =
18 inflight: CMD=20
[  592.527575][ 2] sd 8:0:0:0: [sda] tag#17 CDB: Write(10) 2a 00 03 6f 88 0=
0 00 04 00 00
[  592.536330][ 2] sd 8:0:0:0: [sda] tag#0 uas_eh_abort_handler 0 uas-tag 1=
 inflight: CMD=20
[  592.545266][ 2] sd 8:0:0:0: [sda] tag#0 CDB: Write(10) 2a 00 07 44 1a 88=
 00 00 08 00
[  592.553905][ 1] usb 2-2: cmd cmplt err -108<br><br><br></pre><p class=3D=
"ordinary-output target-output clearfix">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&=
nbsp; We changed a lot of USB devices and contact relevant manufacturers to=
 confirm the driver is ok,<br></p><p class=3D"ordinary-output target-output=
 clearfix">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; This bug not cause by&nbsp; x=
HCI controller or drivers , <span class=3D"">I tested these USB disks on ot=
her </span><span class=3D""><span id=3D"w_170" class=3D"">architecture </sp=
an>platforms as arm/loongson for different xHCI controller ,&nbsp; the same=
 error occurred.</span></p><p class=3D"ordinary-output target-output clearf=
ix"><span class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 if </span>back to the old-style usb-storage can fix. <br></p><p class=3D"o=
rdinary-output target-output clearfix"><span class=3D""></span></p><p class=
=3D"ordinary-output target-output clearfix"><span class=3D"">&nbsp;&nbsp; &=
nbsp; &nbsp; &nbsp; The drivers can work well on Windows, We are all work o=
n linux systsm, sorry to&nbsp; Investigate whether </span>Windows or Mac OS=
X<span class=3D""> systems use uasp protocol.<br></span>      </p><p class=
=3D"ordinary-output target-output clearfix"> </p>     </div></div><p style=
=3D"margin: 0;">Thanks!<br></p><div style=3D"position:relative;zoom:1"></di=
v><div id=3D"divNeteaseMailCard"></div><p style=3D"margin: 0;"><br></p><pre=
><br>At 2022-08-31 22:33:45, "Alan Stern" &lt;stern@rowland.harvard.edu&gt;=
 wrote:
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
&gt;Are you sure these failures are caused by bugs in the devices and not=
=20
&gt;by bugs in the xHCI controller or its driver?
&gt;
&gt;What happens if you plug one of these drives into a computer running=20
&gt;Windows or Mac OSX?  Do those operating systems avoid using the UAS=20
&gt;protocol with the drive?
&gt;
&gt;Alan Stern
</pre></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;USB Mass Storage on Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:usb-storage+unsubscribe@lists.one-eyed-alien.net"=
>usb-storage+unsubscribe@lists.one-eyed-alien.net</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/a/lists.one-eyed-alien.net/d/msgid/usb-storage/65f882a3.19c9.182f6dd7292=
.Coremail.zhongling0719%40126.com?utm_medium=3Demail&utm_source=3Dfooter">h=
ttps://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/65f=
882a3.19c9.182f6dd7292.Coremail.zhongling0719%40126.com</a>.<br />

------=_Part_24216_1487550090.1661999084178--

