Return-Path: <usb-storage+bncBD26DNHQRAJRBZX2YGMAMGQEZPU5BBA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x546.google.com (mail-pg1-x546.google.com [IPv6:2607:f8b0:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A275A934B
	for <lists+usb-storage@lfdr.de>; Thu,  1 Sep 2022 11:37:44 +0200 (CEST)
Received: by mail-pg1-x546.google.com with SMTP id h13-20020a63530d000000b0043087bbf72dsf342415pgb.17
        for <lists+usb-storage@lfdr.de>; Thu, 01 Sep 2022 02:37:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662025062; cv=pass;
        d=google.com; s=arc-20160816;
        b=n/27p+V1I/8CqpJrBVC5FEnsXeD2E2RP59XlRNuVBUPqC1qGWQUfXjHhu7GWlFeaKT
         pSHkHnHiVwyqedc+526Ma4p/vlTDXwdSIgy7wdAwkmfjZcQH8Op6ocxQKwqQvhGBKguI
         KrhIpF9rrvzPkrV4VUcWEGs7m0+hjZAwLy4TcNd8w8A2FNy3aZcuKvjuodM1EfTGaZkE
         UFWB9X4MJNI86o5F12Zhf4YJUj3uIELQl6X6hqu27xCoYTNbfeEScRdjiAhWuh9qKyvo
         iN0nsxxWp+ckJiVcbIeRpE/I056IcpM8lhviQNLTthXSuzxVDGgoO0r+apZ2jUbBOfNB
         aulg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:mime-version:references
         :in-reply-to:subject:cc:to:from:date:sender:dkim-signature;
        bh=rKBKtR5tbE7MZdEZZ5SWFiK3cwUjdCQzCxeEJyjA0QM=;
        b=mE/NeubSOdg2XhPxf9p/oJrVLWvB5aWkWxcN2TkKaMXms//HC6pTpAwevQtF1p0un5
         tCcycdEgne8CDTyb2OgqiMQwx07tAL+QqwchOTfrVILlpLrTtjo/yF0MDB2fzsQ5i29a
         hNFGHcXTr2pqtdc1wBWTavQYjBnMb1rRp1aRywodWV8AShbn7yJNeM22dti0pJi90072
         9GfAWW6AJl4hm9enj2/n3uySLS+JuBaDTZaj3PGARgbX5lp7n0+LRluZZQHMvN+iDVXy
         sZcWTIN0ikj98e5+2ZrZsbtnZNKdvFk9v93sb0L9wcYcD+bAZ0ReOm2gsF21hQdhTl4E
         QPew==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@126.com header.s=s110527 header.b=gKy16PLZ;
       spf=pass (google.com: domain of zhongling0719@126.com designates 220.181.15.46 as permitted sender) smtp.mailfrom=zhongling0719@126.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=126.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:message-id:mime-version:references:in-reply-to
         :subject:cc:to:from:date:sender:from:to:cc:subject:date;
        bh=rKBKtR5tbE7MZdEZZ5SWFiK3cwUjdCQzCxeEJyjA0QM=;
        b=kjBkhYktMhZf4qxHgh+XTDMz06BIHZgl2qZQdXHn1tPiv9RAYMG9KJ3klzks3Jsp02
         6kcBZ3liUMQvX9zzF9MhZXSXIZaQpouRIM8YqrmpxXJEHVFMbwytzE7eZ7qb2wIW2WVV
         RKKZNWQWGb8a0HQUDntBkQRMvqKdFDLYoG5+o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:message-id
         :mime-version:references:in-reply-to:subject:cc:to:from:date
         :x-gm-message-state:sender:from:to:cc:subject:date;
        bh=rKBKtR5tbE7MZdEZZ5SWFiK3cwUjdCQzCxeEJyjA0QM=;
        b=xHxoOzg2llKBvhv9LdGRxZvkRC81c3Gjd+lK5Tvmlux+/OwQffg1MbdkyReJJ7cSlG
         p7rZNtsTXq4TupXMjU5nvugmOEXIIeDKkTZ/pjFV38hvbav/iJCxrGp6HnJw2FiFJZC2
         5UDU0jPovZGjzEqjKRikbFHrBuf5yZst5wp7ndJJegZORb/aZQGuwTla7MpDsHalQdbX
         HEiDStKjvQVspeNesXsI/rAu5KeuLQCUflpZVrUJvmkzMLPAgIcUYw++7DCYL+dDCfpN
         1sMABOvAjDBBGtbsDkM7yZJ/PPE5DpiWWaUmm33Aw2GIP8ABsrKQVKlhGS1JI+QPvj4y
         j9OQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo032BJOcTKnGDpf4sVkKNzc5VtX3P7SpOnDUh7tdyvOxIlx5RRv
	pwqkHNXmJUMBnw+7OG4WrYJxyA==
X-Google-Smtp-Source: AA6agR62EY0KRx/xzrpIG6LbqpKmcyjcURMAdqrRhlOi6U6yQKfrdlPWi+1+UyMYz4+6xSg+do6xJw==
X-Received: by 2002:a05:6a00:a82:b0:530:2f3c:ec99 with SMTP id b2-20020a056a000a8200b005302f3cec99mr30041844pfl.53.1662025062461;
        Thu, 01 Sep 2022 02:37:42 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:bd8d:b0:1fd:c959:dbcc with SMTP id
 z13-20020a17090abd8d00b001fdc959dbccls1288777pjr.1.-pod-control-gmail; Thu,
 01 Sep 2022 02:37:41 -0700 (PDT)
X-Received: by 2002:a17:90b:4d12:b0:1f5:5af8:c093 with SMTP id mw18-20020a17090b4d1200b001f55af8c093mr7907222pjb.33.1662025061588;
        Thu, 01 Sep 2022 02:37:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662025061; cv=none;
        d=google.com; s=arc-20160816;
        b=tK5GSVtBduDGugq6WIaZBgo3guGfCrv44s53dCeWAYZELFmEiTh7njt9MtR7uJhAAd
         A4NF9kKOLLaNq8VdT1ufN+AV8+A/WrelJbNSUAbgUW9R0HTV91DSTJX9NleK2nSAHHyZ
         vhzbe3EgHc3uipg9nden9YjvNDFULX1tvx4xIN7ZbJP7CM0ZrJy9z40olhS7PW9sXPUC
         3PB7gtkaPZ7y5HkIH0Nk/Vir3ezDK6CCoEqbxxM9zjbpeiYm81LQty5v7klEspaxevmY
         tFQuHh72FMP16dIG+RqQuttLXO9ZLGpZuxOEjLGKLLrb9vbNK61/iXJpsjnZTgXvb2Gw
         wm4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:mime-version:references:in-reply-to:subject:cc:to:from
         :date:dkim-signature;
        bh=arAnoVEoZ0zgEuHsWRjwqyltVSbD3/xI0kURU1XcVUc=;
        b=zF7xsgrXqztf9pl/z2DxnkvFTMK9s4SQxgBEXGb+MslYSRTANWzNKvfkq/85yXErRg
         C59il2lApxYMA5TwqVQKzRqzAhHD4MWf9RnOq1yFMNwJtfDFfcq1WFgsCeihV/KeMcWx
         mbUZLu68cW3ZTGRX/5inHQP0CyjG8KkbsUv7SAGtufD+MK2kWjuus3JLJ3IcJ5zNCVqJ
         PaaDPgLbPE8wF+9SpIZLeOEd0cOuVD7EN7eB05qmMZAwk0Zm/CmHcVqbOrZ5BaXsimbM
         G4k7DZjNh47LZKvmOTK9jCawXEqswMCzBSDEcmjXQyERVGH8yOYJBuPwiUKrOACjM9zu
         il/w==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@126.com header.s=s110527 header.b=gKy16PLZ;
       spf=pass (google.com: domain of zhongling0719@126.com designates 220.181.15.46 as permitted sender) smtp.mailfrom=zhongling0719@126.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=126.com
Received: from m1546.mail.126.com (m1546.mail.126.com. [220.181.15.46])
        by mx.google.com with ESMTP id a21-20020a63e855000000b0041bc27b1bd5si1565051pgk.462.2022.09.01.02.37.40
        for <usb-storage@lists.one-eyed-alien.net>;
        Thu, 01 Sep 2022 02:37:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhongling0719@126.com designates 220.181.15.46 as permitted sender) client-ip=220.181.15.46;
Received: from zhongling0719$126.com ( [112.64.161.44] ) by
 ajax-webmail-wmsvr46 (Coremail) ; Thu, 1 Sep 2022 17:35:50 +0800 (CST)
X-Originating-IP: [112.64.161.44]
Date: Thu, 1 Sep 2022 17:35:50 +0800 (CST)
From: dd  <zhongling0719@126.com>
To: "Greg KH" <gregkh@linuxfoundation.org>
Cc: zenghongling <zenghongling@kylinos.cn>, stern@rowland.harvard.edu, 
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re:Re: [PATCH v4] uas: add no-uas quirk for Thinkplus
 and Hiksemi usb-storage
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.13 build 20220113(9671e152)
 Copyright (c) 2002-2022 www.mailtech.cn 126com
In-Reply-To: <YxBvNEn0jEEd0lXV@kroah.com>
References: <1662015653-12976-1-git-send-email-zenghongling@kylinos.cn>
 <YxBvNEn0jEEd0lXV@kroah.com>
Content-Type: multipart/alternative; 
	boundary="----=_Part_85279_1268440017.1662024950628"
MIME-Version: 1.0
Message-ID: <409cbf8b.5b1a.182f8682364.Coremail.zhongling0719@126.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: LsqowAAXAtr3fBBjcO5nAA--.11403W
X-CM-SenderInfo: x2kr0wpolqwiqxrzqiyswou0bp/1tbiJAhv0FpEFghUbwABsp
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-Original-Sender: zhongling0719@126.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@126.com header.s=s110527 header.b=gKy16PLZ;       spf=pass
 (google.com: domain of zhongling0719@126.com designates 220.181.15.46 as
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

------=_Part_85279_1268440017.1662024950628
Content-Type: text/plain; charset="UTF-8"

Hi:
   The drivers manufacturers advertised high speed support platform is Windows,MacOSX, not include linux 4.9 , this bug will affect the users

normal use, run iozone is just one of the behaviors that trigger UAS crash, sorry,We will handle that slow
issue with driver manufacturers.


Thanks!









At 2022-09-01 16:37:08, "Greg KH" <gregkh@linuxfoundation.org> wrote:
>On Thu, Sep 01, 2022 at 03:00:53PM +0800, zenghongling wrote:
>> UAS:if ignore uas feature for these drivers can fix the not working and
>> output error message bug.
>> 
>> The UAS mode of Thinkplus and Hiksemi is reported to fail to work on
>> several platforms with the following error message,I tested these USB
>> disks on other architecture platforms as arm/loongson for different xHCI
>> controller,the same error occurred:
>> 
>> [   39.702439] xhci_hcd 0000:0c:00.3: ERROR Transfer event for disabled
>>                endpoint or incorrect stream ring
>> [   39.702442] xhci_hcd 0000:0c:00.3: @000000026c61f810 00000000 00000000
>>                1b000000 05038000
>> 
>> [  592.490369][ 1] xhci_hcd 0000:0c:00.3: Assuming host is dying, halting host.
>> [  592.518442][ 2] sd 8:0:0:0: [sda] tag#17 uas_eh_abort_handler 0 uas-tag 18
>>                    inflight: CMD
>> [  592.527575][ 2] sd 8:0:0:0: [sda] tag#17 CDB: Write(10) 2a 00 03 6f 88 00 00
>>                    04 00 00
>> [  592.536330][ 2] sd 8:0:0:0: [sda] tag#0 uas_eh_abort_handler 0 uas-tag 1
>>                    inflight: CMD
>> [  592.545266][ 2] sd 8:0:0:0: [sda] tag#0 CDB: Write(10) 2a 00 07 44 1a 88 00
>>                    00 08 00
>> 
>> And when running iozone will disconnect from the USB controller, then after
>> re-connecting the device will be offlined and not working at all.
>> 
>> We changed a lot of USB devices and contact relevant manufacturers to 
>> confirm the USB disk is ok.
>
>I do not understand why there are failures on Linux, yet not on other
>operating systems.  If you run iozone on OS-X, does the same errors
>happen?  How about a storage stress-test on Windows?  Why is Linux going
>to have to make these devices go very very slow and what will happen to
>the users that now can not operate their devices at the advertised
>speeds?  Who will handle that support issue?
>
>thanks,
>
>greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/409cbf8b.5b1a.182f8682364.Coremail.zhongling0719%40126.com.

------=_Part_85279_1268440017.1662024950628
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div style=3D"line-height:1.7;color:#000000;font-size:14px;font-family:Aria=
l"><div>Hi:</div>&nbsp;&nbsp; The drivers manufacturers advertised high spe=
ed support platform is Windows,MacOSX, not include linux 4.9 , this bug wil=
l affect the users <br><div style=3D"margin: 0;">normal use, run iozone is =
just one of the behaviors that trigger UAS crash, sorry,We will handle that=
 slow</div><div style=3D"margin: 0;">issue with driver manufacturers.</div>=
<div style=3D"margin: 0;"><br></div><div style=3D"margin: 0;">Thanks!<br></=
div><p style=3D"margin: 0;"><br></p><div style=3D"position:relative;zoom:1"=
></div><div id=3D"divNeteaseMailCard"></div><p style=3D"margin: 0;"><br></p=
><pre><br>At 2022-09-01 16:37:08, "Greg KH" &lt;gregkh@linuxfoundation.org&=
gt; wrote:
&gt;On Thu, Sep 01, 2022 at 03:00:53PM +0800, zenghongling wrote:
&gt;&gt; UAS:if ignore uas feature for these drivers can fix the not workin=
g and
&gt;&gt; output error message bug.
&gt;&gt;=20
&gt;&gt; The UAS mode of Thinkplus and Hiksemi is reported to fail to work =
on
&gt;&gt; several platforms with the following error message,I tested these =
USB
&gt;&gt; disks on other architecture platforms as arm/loongson for differen=
t xHCI
&gt;&gt; controller,the same error occurred:
&gt;&gt;=20
&gt;&gt; [   39.702439] xhci_hcd 0000:0c:00.3: ERROR Transfer event for dis=
abled
&gt;&gt;                endpoint or incorrect stream ring
&gt;&gt; [   39.702442] xhci_hcd 0000:0c:00.3: @000000026c61f810 00000000 0=
0000000
&gt;&gt;                1b000000 05038000
&gt;&gt;=20
&gt;&gt; [  592.490369][ 1] xhci_hcd 0000:0c:00.3: Assuming host is dying, =
halting host.
&gt;&gt; [  592.518442][ 2] sd 8:0:0:0: [sda] tag#17 uas_eh_abort_handler 0=
 uas-tag 18
&gt;&gt;                    inflight: CMD
&gt;&gt; [  592.527575][ 2] sd 8:0:0:0: [sda] tag#17 CDB: Write(10) 2a 00 0=
3 6f 88 00 00
&gt;&gt;                    04 00 00
&gt;&gt; [  592.536330][ 2] sd 8:0:0:0: [sda] tag#0 uas_eh_abort_handler 0 =
uas-tag 1
&gt;&gt;                    inflight: CMD
&gt;&gt; [  592.545266][ 2] sd 8:0:0:0: [sda] tag#0 CDB: Write(10) 2a 00 07=
 44 1a 88 00
&gt;&gt;                    00 08 00
&gt;&gt;=20
&gt;&gt; And when running iozone will disconnect from the USB controller, t=
hen after
&gt;&gt; re-connecting the device will be offlined and not working at all.
&gt;&gt;=20
&gt;&gt; We changed a lot of USB devices and contact relevant manufacturers=
 to=20
&gt;&gt; confirm the USB disk is ok.
&gt;
&gt;I do not understand why there are failures on Linux, yet not on other
&gt;operating systems.  If you run iozone on OS-X, does the same errors
&gt;happen?  How about a storage stress-test on Windows?  Why is Linux goin=
g
&gt;to have to make these devices go very very slow and what will happen to
&gt;the users that now can not operate their devices at the advertised
&gt;speeds?  Who will handle that support issue?
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
om/a/lists.one-eyed-alien.net/d/msgid/usb-storage/409cbf8b.5b1a.182f8682364=
.Coremail.zhongling0719%40126.com?utm_medium=3Demail&utm_source=3Dfooter">h=
ttps://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/409=
cbf8b.5b1a.182f8682364.Coremail.zhongling0719%40126.com</a>.<br />

------=_Part_85279_1268440017.1662024950628--

