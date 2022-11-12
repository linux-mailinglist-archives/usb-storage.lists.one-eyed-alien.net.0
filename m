Return-Path: <usb-storage+bncBD26DNHQRAJRBVM6XWNQMGQENS7HXMY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x348.google.com (mail-ot1-x348.google.com [IPv6:2607:f8b0:4864:20::348])
	by mail.lfdr.de (Postfix) with ESMTPS id 152ED6267BD
	for <lists+usb-storage@lfdr.de>; Sat, 12 Nov 2022 08:46:31 +0100 (CET)
Received: by mail-ot1-x348.google.com with SMTP id cy25-20020a056830699900b00661acac3847sf3452593otb.17
        for <lists+usb-storage@lfdr.de>; Fri, 11 Nov 2022 23:46:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1668239189; cv=pass;
        d=google.com; s=arc-20160816;
        b=fQnmDa7wngnwAzT2IajOrgG4mazaozsf6/omXHtcy6bZYTWiLLQ6fTiWHrfcoxVa0Z
         RC9sW79Wa/Om/BFxfhvy45wTc+lyDNsgiQBaIVJXKDF3GdLo9cI6lvDXgqKsBStZe640
         0Fv+QxRFqnZJz4X0g5pxoEGhzjJKPJWllJdB50pmpdkcttWRBVljQksXEKj1fwWCYQZg
         SQUiQEXQYi/Hv9diVSU82+o/On+xD46bL8CBDuReWARRChn77XP7EWJuuYnMlpfqUsu6
         rpkkx4e7ZLak+xaUae8CnwIDzJ3BD7mQso/vyTEH0gXXWCOWMjad4GByvwjksKM3d/Xc
         4dhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :message-id:mime-version:references:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=x31m4dPov8HaXVY9mlmsuGu7jSz22dMNnhFx7OSlXU0=;
        b=mQEVLPqW+5rplQrg+GvQSDVtL2ckLAY6wWAkYxlQ8ikr51LKG+HMpmDx3t6YqHG71d
         21/yEh25KWTyD48LsaayITLPE0uGcAktF+SU8I6FHlbLNU0wPHSKoD1rhct+Ub+tje72
         fk+FVfKf0J8pjeLhogLDnQKH3MjpwaFGwAmbV5z1+sV0yV/GhhXBq5VbsHEIzEpcaI1t
         KykMSZFoFcbUPJ24Jc9U3DQz69KLTAbySuevzU0yZC7S++9a7o64SCF+7lzmsX8FUvPm
         r5pmk1v98wShx2vky08kqmM/zk+ULE25EGGzNnMY8pBr8nUlrAd7j0SWr09vx0qiZe3h
         eQ9g==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@126.com header.s=s110527 header.b=L3vi+kYA;
       spf=pass (google.com: domain of zhongling0719@126.com designates 220.181.15.111 as permitted sender) smtp.mailfrom=zhongling0719@126.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=126.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:message-id:mime-version
         :references:subject:cc:to:from:date:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x31m4dPov8HaXVY9mlmsuGu7jSz22dMNnhFx7OSlXU0=;
        b=SMyJZx+sRdcBGh945nIJC6WBQEKssQFbkaXLFehZjxUE+NoUKrrAaoZ2cZ4gKgInZA
         gu8cymP/Or+IjR4viS1X5j4+c1vDKw2f4P2+KWMF2PgsN6/kAJcfBbrHFRDSkS3YVqXI
         fNV2KyEyjxYj2YEBJb1JjC5F7bdO7v2hlPhVc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:message-id:mime-version:references
         :subject:cc:to:from:date:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x31m4dPov8HaXVY9mlmsuGu7jSz22dMNnhFx7OSlXU0=;
        b=AxQMAnQ5OYyOeyIDgNhp5937BHFEzscpt/J/wjgLUOiUGJ1iLYfGpR+O0zYLtEUprE
         QMrYPrS4Hxzg71u3Dtw7v4UucyIX+rFGaY1mlBiUdehzJn0L7mUAp4aXhh/kAcnzU+u5
         lvANP6Z1b6YZsquPKYOQhEjxyuOhc51w9AJ8SO6g90/B4aVARCdpnaXhN8LqDkmnU58v
         NHz2nBjOeMCW1Z6w1LnTqzOrEWYW/lsY+BdxzY61hLUgHn+mRms1qhwDbrJiU834dU5s
         zJvqnq1rLc2K6sQ/7xJ0NJGPYAyW0Ac9MPXlrrpPvNu6BhAzbJ6FS1fMsSB2WTLm8Io0
         xC0A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ANoB5pm2QSfNUJC0dfbvbmJmsA6owqSJ5LrrTSJJVxepz23TnpnoqDw7
	9d1wf+5/aLviscR0mup1/6tw5Q==
X-Google-Smtp-Source: AA0mqf5zJ5tmJKeeo5T0CfJ+rTO8PXyUIUFbpWpJaXmw2G3Y1hDZcWUs1eVsqACrhyTIVlEOolfslg==
X-Received: by 2002:a9d:7f94:0:b0:66c:553d:edf5 with SMTP id t20-20020a9d7f94000000b0066c553dedf5mr2758893otp.181.1668239189614;
        Fri, 11 Nov 2022 23:46:29 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6830:6b06:b0:661:91c7:c50b with SMTP id
 db6-20020a0568306b0600b0066191c7c50bls1271354otb.0.-pod-prod-gmail; Fri, 11
 Nov 2022 23:46:29 -0800 (PST)
X-Received: by 2002:a9d:4d1a:0:b0:66c:57bc:26aa with SMTP id n26-20020a9d4d1a000000b0066c57bc26aamr2853089otf.161.1668239188857;
        Fri, 11 Nov 2022 23:46:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1668239188; cv=none;
        d=google.com; s=arc-20160816;
        b=r3iRz8l7v5iNx1Vi39EKReWg2SgOAZKoDkL3r5YUzYMnQ9ds3HbXH2yoeFNlYeLKIX
         x0x9bABdK2EYdY6y3G78He1FjnYD7Z0vWMPvsSmYq0IhlQzdFmYJ/gJlm642nKk8wjX9
         9D7oZ6Du500XWsjblRNsz9ajMxMNVdmjwLom2vYUhqWf3pgeAbKPkN8MNji/Ps58/Yck
         z/iuKpA2sRh4pQHClqJ9Sj4vxHlX0uIqmmDQ2naf3xIwyIsueIEGQEY5Y6Jh3uXv73K+
         TNvYJVXkCYQSm309JMmhAJgWh0O8CVcSDU2wdR6Ypck1UgRlWQgiYKjfpXUyIpZzzUcw
         FAYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:message-id:mime-version:references
         :subject:cc:to:from:date:dkim-signature;
        bh=xMaPZzTmWmjAKVmcKLkpNgUBCX5ThbhZg5LW8J88JT8=;
        b=L3+McK8Z2sCzn9U13EQ7DEoyoq4tZjag9zyZUYlV8RuJBgGW8fo1aNtinl7SvZUpEV
         RPY4JYHLam6yk4l9k7LYL44TkriuSVwBdiz+H1iSknQEh31TCd7+g8D0oEbkjK3tCxql
         E/D+GX5xsi5b7jlwl5Go6FE0HiawhQhC7bmesardfEuriUkKwe76Zqsfs8VAdvJMIPM1
         pUzDsEdJe9mSjqu/WBnvi8T40RzjZ1JfL4V/XVreodTkRY7FoC+W1TqTCx6lZhLa+20t
         ACD88xB6waOAlXRDG9MGlXIfUduvVLjJmTaxbEHPnIslaKhffG0eHL7Vx6lOC3NXU0lI
         HapQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@126.com header.s=s110527 header.b=L3vi+kYA;
       spf=pass (google.com: domain of zhongling0719@126.com designates 220.181.15.111 as permitted sender) smtp.mailfrom=zhongling0719@126.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=126.com
Received: from m15111.mail.126.com (m15111.mail.126.com. [220.181.15.111])
        by mx.google.com with ESMTP id bk18-20020a0568081a1200b00359b6a75b2bsi3874702oib.142.2022.11.11.23.46.28
        for <usb-storage@lists.one-eyed-alien.net>;
        Fri, 11 Nov 2022 23:46:28 -0800 (PST)
Received-SPF: pass (google.com: domain of zhongling0719@126.com designates 220.181.15.111 as permitted sender) client-ip=220.181.15.111;
Received: from 0V5ZS2WE6VIK6H0 (unknown [117.136.119.120])
	by smtp1 (Coremail) with SMTP id C8mowACXiHwbT29jKw_sEA--.57354S2;
	Sat, 12 Nov 2022 15:45:33 +0800 (CST)
Date: Sat, 12 Nov 2022 15:45:36 +0800
From: "zhongling0719@126.com" <zhongling0719@126.com>
To: "Greg KH" <gregkh@linuxfoundation.org>, 
	"Juhyung Park" <qkrwngud825@gmail.com>
Cc: "stern@rowland.harvard.edu" <stern@rowland.harvard.edu>, 
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, 
	"usb-storage@lists.one-eyed-alien.net" <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: Re: [PATCH v6 2/3] usb-storage: Add Hiksemi USB3-FW
 to IGNORE_UAS
References: <1663210188-5485-1-git-send-email-zenghongling@kylinos.cn>, 
	<fa0556e5-e154-a4e6-6b18-4996a01d2f10@gmail.com>, 
	<Y2uDnUQKCDGzioJN@kroah.com>
X-Priority: 3
X-GUID: E7E7C3A1-8A68-457C-AAC2-05F896A69D96
X-Has-Attach: no
X-Mailer: Foxmail 7.2.16.188[cn]
Mime-Version: 1.0
Message-ID: <2022111215445443712314@126.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CM-TRANSID: C8mowACXiHwbT29jKw_sEA--.57354S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7ur1xur47WFWUXr15Ww1rWFg_yoW8Wr1xpF
	WDtFWYyrs5Kr1rArykAw4xZrWrXws3G3yxGr93A348Zrn8uFn2qr4xtFWUuF9IqryxK3Wa
	9ayqgry0gws8Cw7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0ziS1vfUUUUU=
X-Originating-IP: [117.136.119.120]
X-CM-SenderInfo: x2kr0wpolqwiqxrzqiyswou0bp/1tbiqB630FpD+8MpNwAAsu
X-Original-Sender: zhongling0719@126.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@126.com header.s=s110527 header.b=L3vi+kYA;       spf=pass
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

Hi:
=C2=A0 This error not happend on all RTL9210,The uas blacklist only for on =
sale device(0x0bda, 0x9210).=C2=A0

Thanks!

zhongling0719@126.com
=C2=A0
From:=C2=A0Greg KH
Date:=C2=A02022-11-09=C2=A018:40
To:=C2=A0Juhyung Park
CC:=C2=A0Hongling Zeng; stern; linux-usb; usb-storage; zhongling0719
Subject:=C2=A0Re: [PATCH v6 2/3] usb-storage: Add Hiksemi USB3-FW to IGNORE=
_UAS
On Mon, Oct 31, 2022 at 03:17:48PM +0900, Juhyung Park wrote:
> Hi,
>
> I'm speaking from my own experience but RTL9210 is arguably the most
> reliable NVMe-to-USB converter available.
>
> Compared to solutions from JMicron (multiple revisions) and ASMedia, RTL9=
210
> gave the lowest power consumption (from implementing proper power managem=
ent
> commands) and the least headache.
>
> I personally own multiple enclosures and not one gave a single UAS error
> from multiple platforms (Android, Intel, AMD) for years, but with this
> commit now, it effectively disables UAS for all RTL9210 enclosures.
>
> Would it be possible to apply this quirk only to a specific firmware
> (range)? RTL9210 have a lot of possible firmware combinations: https://ww=
w.station-drivers.com/index.php/en/component/remository/Drivers/Realtek/NVM=
e-USB-3.1/lang,en-gb/
>
> RTL9210 was available since 2019 and the fact that this quirk came up thi=
s
> late leads me to believe that this is not a widespread issue and it'll be=
 a
> shame if all of RTL9210s are blacklisted from UAS with Linux from now on =
:(
>
> If any additional information is required, please let me know.
=C2=A0
Can you send a revert of this commit so that we can fix this up?
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
one-eyed-alien.net/d/msgid/usb-storage/2022111215445443712314%40126.com.
