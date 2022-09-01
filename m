Return-Path: <usb-storage+bncBD26DNHQRAJRB47UYKMAMGQERRUKK4Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x647.google.com (mail-pl1-x647.google.com [IPv6:2607:f8b0:4864:20::647])
	by mail.lfdr.de (Postfix) with ESMTPS id CEDD05A998A
	for <lists+usb-storage@lfdr.de>; Thu,  1 Sep 2022 15:58:12 +0200 (CEST)
Received: by mail-pl1-x647.google.com with SMTP id q6-20020a17090311c600b0017266460b8fsf11837161plh.4
        for <lists+usb-storage@lfdr.de>; Thu, 01 Sep 2022 06:58:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662040691; cv=pass;
        d=google.com; s=arc-20160816;
        b=t345n57iIkB1vlyCJPUKiOtVh9w4ER+PE0kKSc0prq1KwCG8qFpk0I7F9OZTRCaGGC
         2PkTICh1418bhtXB43LKQ17Ph975WTCGgG3v7VAcQ7O2KzA0jTjdwYT3bCwzeJVfc12i
         4pRCbmdJC2BOMI3a02+qkzujfUVTH05x8J/qRj5DcR2Zvs7FoGSAFv0VaVpT9+iao4wb
         As1S2GvLIWfPOwYrfM+hfOh3BH5UnGN9P/Er104z2u17REZWngUNkvxpo4NZ8N+p4JfW
         fyrmbIaAoHNGNyOhlSOwu59XG+6p+G3gtAJinrBU8kJ7mAjvKctRncFkZZ2zLXDDsAzN
         /M0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :message-id:mime-version:references:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=rHruNLdpvRq9IgZnMz5ew+v6vvRz348BalzPvK4W7GQ=;
        b=oBWpsXbB6welgndnyxxvc0EW7FOB+59/LxrUvU/GlgJqHyPOZLYxbCWGL+QZb53oHZ
         wDkChCop3k4CGQZDkuhGeoI2LqwUo6ha3CJFAMcRvTy3giNFK8Ws27T+mChSXtTlcdLe
         MbfymMqk+/fR5tcMZEPiRGASq+koUb1TYlpIw2++Rqke+Dp/nMltGyWPnHnpRm82KlL8
         UKs8hsC440kGXoh9xbLvn/mCttg2JlzpfzU7mD7RJJXy1ZuiJuAG+98FKPMV+K5RcOG2
         L9CIkwFXxVyhC53h1JF8MCXgyponr78+GWeJ3ZvsSEob057EowBQUOzkHAeBf0591yJT
         HD4w==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@126.com header.s=s110527 header.b="XiO/XwYa";
       spf=pass (google.com: domain of zhongling0719@126.com designates 220.181.15.111 as permitted sender) smtp.mailfrom=zhongling0719@126.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=126.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:message-id:mime-version
         :references:subject:cc:to:from:date:sender:from:to:cc:subject:date;
        bh=rHruNLdpvRq9IgZnMz5ew+v6vvRz348BalzPvK4W7GQ=;
        b=bnFg2UrbBAiJ89NIXWefAtrb3WAhQpy2Yxy64UIdJmmlS74JfZyb5bQq83szIj7t9M
         01Z9+bgBf2SRWmpBeBiO61M3+yBVsgL9TC0+oEfAq/lDk25xLmhSTWlgA3IPLZvV1Mij
         OYK+wdINa5yT+7x1R+2Ob1tEXHgrh6pCPx2o8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:message-id:mime-version:references
         :subject:cc:to:from:date:x-gm-message-state:sender:from:to:cc
         :subject:date;
        bh=rHruNLdpvRq9IgZnMz5ew+v6vvRz348BalzPvK4W7GQ=;
        b=UKIC8mdkK2UYB0X6aWwn1mzD/EzjiBFae2JrVZZNPYmfkg0DUOrykQO698z2nBlI5e
         OTuZw65qZv65beWv6rBg0eBMESXXHrF4wN1DA868V53FDhdA/xegxsga3qLBRVyw6+yj
         8MatUtqOoLofyNXJwilQExWa3tFkWDkx2On6swypNumBXBLwYB7eT+RANCwa/Okcx+IK
         aGPAC1xVFa8TOvLc31YnloMWGf1rViLJ5JbgnNnbtRTuZ6yMXaWvxba+gdbHzNTHHmGh
         untlKovXF8EgwALBQXxJgj1eLxcZlmR9M+oqAaOPI5jZZ0xRww7kY3g9rbtQPbv/oeu1
         OdQQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo2NxcN8WiRL6XxZdDZyisITrRFRgKMy/pTwcTCz2qPZbOSiOvQ4
	qvu8oyCy7gTjSBfcs+DkFeqyPw==
X-Google-Smtp-Source: AA6agR65oHoJN2ttkrnT1YmfekFIeEDeKnNjIfw2yIuyFFBzd0/de8/Rk79j879OTXLCblR2GqiKDA==
X-Received: by 2002:a05:6a02:286:b0:422:f1ba:745 with SMTP id bk6-20020a056a02028600b00422f1ba0745mr25784345pgb.569.1662040691415;
        Thu, 01 Sep 2022 06:58:11 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:903:3243:b0:16e:ebfe:70e9 with SMTP id
 ji3-20020a170903324300b0016eebfe70e9ls1530529plb.2.-pod-prod-gmail; Thu, 01
 Sep 2022 06:58:10 -0700 (PDT)
X-Received: by 2002:a17:90a:cf8c:b0:1fd:7783:c340 with SMTP id i12-20020a17090acf8c00b001fd7783c340mr8674445pju.16.1662040690582;
        Thu, 01 Sep 2022 06:58:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662040690; cv=none;
        d=google.com; s=arc-20160816;
        b=W3H0db7a5JrWlvczvMKCoH78yRlwrX8wpR68Cg6ux9xINIECYOa9Fe2ZtNBHwPVbUZ
         2SzfOlkpH9F/BrRkP1MLufmNpqE1GAz1mgjGVyYhvWHGt41pwWJ/GqpyHaJy+DnLArAG
         PDisr/tHxvoP9l+lSsiGew6EhR6mkU//9iopfoUUEDzF88G95aXldUDGXWkRHB+Qj+/j
         v0E6ACnUrzTqPCqca7fwpzrHHOomxL6KExRoFzKwediEvA+MqTPm4AT6+XHLTyW6LQ0c
         Km2GpsZcg7/BqeRLA30A0bViQLtz366CRLydlZ3z1nopYb3pk2SeuLNn/bSaAKgCSegd
         LgNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:message-id:mime-version:references
         :subject:cc:to:from:date:dkim-signature;
        bh=hBIOoMV+cXU9axnqwGlbAvTWbqki8xi1NwRvakGOe/4=;
        b=cy2TIGhuRzRzdXUZUM1Z6CRGWBlaQQ12znVF1yuQF1Tdgh5V6w+gbcl/XzQwhR0f5B
         gYEG7cfTcl6IJBlaygvFqtEMYqmsi8i+cnIm0OYtLjtKr6hLS7pMCxlp/EYvZQmC5R4l
         hwRRBGMy18tMWyllbzcwvZjONme1Z4YT621wnp1S20ir6235wmV1b2WSNT035h2j76yt
         NQkbMs4FSW3PN8+msI7pJ/928z6jJ/zZUl9gVjEid2ex4t3caXwWURb3CHTlyhFzdFj3
         pjOlKrfThv6n6gGyey+P1AyE27gq6FTTXBTBL6+2MrJoPWiwzKIB8QjIsJMH10Yzfc0+
         zf4g==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@126.com header.s=s110527 header.b="XiO/XwYa";
       spf=pass (google.com: domain of zhongling0719@126.com designates 220.181.15.111 as permitted sender) smtp.mailfrom=zhongling0719@126.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=126.com
Received: from m15111.mail.126.com (m15111.mail.126.com. [220.181.15.111])
        by mx.google.com with ESMTP id y124-20020a62ce82000000b00539064e6476si8321967pfg.18.2022.09.01.06.58.09
        for <usb-storage@lists.one-eyed-alien.net>;
        Thu, 01 Sep 2022 06:58:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhongling0719@126.com designates 220.181.15.111 as permitted sender) client-ip=220.181.15.111;
Received: from 0V5ZS2WE6VIK6H0 (unknown [120.204.148.63])
	by smtp1 (Coremail) with SMTP id C8mowAD3_3NouhBjYA+JAg--.65149S2;
	Thu, 01 Sep 2022 21:58:01 +0800 (CST)
Date: Thu, 1 Sep 2022 21:58:03 +0800
From: "zhongling0719@126.com" <zhongling0719@126.com>
To: gregkh <gregkh@linuxfoundation.org>
Cc: zenghongling <zenghongling@kylinos.cn>, 
	stern <stern@rowland.harvard.edu>, 
	linux-usb <linux-usb@vger.kernel.org>, 
	usb-storage <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: Re: [PATCH v4] uas: add no-uas quirk for Thinkplus
 and Hiksemi usb-storage
References: <1662015653-12976-1-git-send-email-zenghongling@kylinos.cn>, 
	<YxBvNEn0jEEd0lXV@kroah.com>, 
	<2022090120371974113815@126.com>, 
	<YxCtyOUkRlIqcC4d@kroah.com>
X-Priority: 3
X-GUID: 26133602-71BF-4214-A545-22782F44F048
X-Has-Attach: no
X-Mailer: Foxmail 7.2.16.188[cn]
Mime-Version: 1.0
Message-ID: <2022090121570194160929@126.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CM-TRANSID: C8mowAD3_3NouhBjYA+JAg--.65149S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7Jw4rKr13GFW5Gw4rKry5CFg_yoWkurX_uw
	nrWrW8K3ykCa17Gw1xKrsrtrW3Xayv9r1xGr4fWr13AasxAF4DuFWvkrZ7Zw1IvF4UGrZ7
	GF15A3y0vr1a9jkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7xRKWrWDUUUUU==
X-Originating-IP: [120.204.148.63]
X-CM-SenderInfo: x2kr0wpolqwiqxrzqiyswou0bp/1tbiuQpv0FpD+bec0wAAsU
X-Original-Sender: zhongling0719@126.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@126.com header.s=s110527 header.b="XiO/XwYa";       spf=pass
 (google.com: domain of zhongling0719@126.com designates 220.181.15.111 as
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

Some UASP capable USB-to-SATA bridge controllers are not compatible,this pr=
oblem has always existed. you can refer to
other auther submit the similar patch.=C2=A0this patch is fixed no speed,no=
t slow speed.

Thanks! =C2=A0

zhongling0719@126.com
=C2=A0
From:=C2=A0gregkh
Date:=C2=A02022-09-01=C2=A021:04
To:=C2=A0zhongling0719@126.com
CC:=C2=A0zenghongling; stern; linux-usb; usb-storage
Subject:=C2=A0Re: Re: [PATCH v4] uas: add no-uas quirk for Thinkplus and Hi=
ksemi usb-storage
On Thu, Sep 01, 2022 at 08:38:21PM +0800, zhongling0719@126.com wrote:
> Hi:
> =C2=A0 =C2=A0Sorry again, The last email was wrong, fixed my email to not=
 send html email and respond again.=C2=A0
> =C2=A0 =C2=A0The drivers manufacturers advertised high speed support plat=
form is Windows,MacOSX, not include linux 4.9 , this bug will affect the us=
ers=C2=A0
> normal use, run iozone is just one of the behaviors that trigger UAS cras=
h ,We will handle that slow issue.
=C2=A0
I do not understand, sorry.
=C2=A0
What is special about Linux that causes these drives to break with the
UAS protocol?=C2=A0 What is it doing different that OSX and Windows does no=
t
do?
=C2=A0
We should fix that bug, not degrade the performance of these devices to
extremely slow levels for no good reason.
=C2=A0
thanks,
=C2=A0
greg k-h

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/2022090121570194160929%40126.com.
