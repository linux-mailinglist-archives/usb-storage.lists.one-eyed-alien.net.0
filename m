Return-Path: <usb-storage+bncBCUJ7YGL3QFBB4GAZSZAMGQEDE5UL7Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc47.google.com (mail-oo1-xc47.google.com [IPv6:2607:f8b0:4864:20::c47])
	by mail.lfdr.de (Postfix) with ESMTPS id BF16D8CF41C
	for <lists+usb-storage@lfdr.de>; Sun, 26 May 2024 13:43:45 +0200 (CEST)
Received: by mail-oo1-xc47.google.com with SMTP id 006d021491bc7-5b2bf41891fsf4398283eaf.0
        for <lists+usb-storage@lfdr.de>; Sun, 26 May 2024 04:43:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716723824; cv=pass;
        d=google.com; s=arc-20160816;
        b=iWPVDS8x+8UuR1HfyErjLqpqobjX1cFnMnQN2FBBnWK0Hfd5d5+LwB1OdcoNZQ0Lq/
         4KTSKnXOrpEZs6vpE2hbDpxyvfJsayWjUeGvIAAl8E/qOtnbyqtjOyA116ytY8kBGb8T
         hJVTPsLNprPCDsLlAgsRtBQ8fFNcpUw1TbOTZg37FmR/CBJIayEpQ7Mnl5qHcQ+6UKbV
         IG0z3It+0/O3eGHs0S2l5zYAC3ONwTXT0gB4MVrJIu9V7HRbze2WnMFJv7vBTStNB4c5
         oMoyW/5aw0Vsbi8gOwV8QQ9xRRDwlwbGB+gy4C0hluJc9MBHIQfK72zBhNbBaV/fnjRl
         nHoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=dQFWlyYhRLDVj9lS9paSunp8Q2Ko/firn+G28GRDTek=;
        fh=6bwUa5AA8aEOpAE3OVYaVs/QB+MPsRxKo2xHyrqJY2M=;
        b=CmYNwzgG8c34plBrI9AJVgbAkY8ZrQQA4R/nANGx0A9i+NWoHaBbP7ra80nBDGAHgA
         yVelhRfcQa3EjW5X5QYn9SUJQjzgiRwBQDXKlJl6eO1Y27DAcjodhwUe8V9lliGRx0Nw
         ECUrz4GJScuphEMmn5Z/QaG/+aBc3DfKBKK+eLWMbaG+zzjQtyLK0LsKXK/twd3GN9gj
         LXLSJ2kr4KCK1mVO5DtnB1THVSDa1QDudy1S1ufEF6VWZ2+urjsn1+hgvAvW7rbq7ofM
         Sc/5f3M76mNu5VlUfOPTP+YiZIuXhOWx7r+R66XLI7OIwFnq+uFM5iOyrU8mFlcnXYgk
         nmyw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=EWUGtPpD;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1716723824; x=1717328624; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=dQFWlyYhRLDVj9lS9paSunp8Q2Ko/firn+G28GRDTek=;
        b=U/QZjdKUzTuKxYGqyGUe6xofH8StFJ57jM97Kr6ihKIWyGfiMrW9WZJZ1sF/D7FLew
         SaX4urtzizgmn3VM+U/DGynrvVXaJijcox6fjLTcleVrct0h+bfG/y/1wrvO1RE+Jwpk
         Omddx/DNeeWrg0kQLHtMxgYuJ1F2ldj1Vz9sg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716723824; x=1717328624;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dQFWlyYhRLDVj9lS9paSunp8Q2Ko/firn+G28GRDTek=;
        b=TrguyeoojITNRQBFt68yspU7TKpZMxgdRvk9Eb1+tYvKL/jkDH+t35EyTf/EmawlzK
         3xHZ5braddw6/AibaWO+o1UeoSHLfqfYJDGkX4KNlD6CnrhiEZBnS+7IXgfqvMGBn6jw
         gfkKugE3lQokM0INe8o5x4cmshmYEzZpuNHe5X5Nt7toVM1aFm6+Yoej1wMCWMXMzmMP
         7VnRdpQCwVIT7VkCQZ/xGgEtRgCyl/OICGmM+5wMn3INuCrRvbzTWYWlZOwdbsZuImaw
         GVwRwgR2nVi31H3N60ryCa61Cy8m81UgExFmqUrwTu+wZP2m2yymHNh4OrKIQlQHWeNq
         w92A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUNIY0ZM45GGOHDg9NfrvT0j0//UR2mKArLeVUctyf0YXUZHxT7E1H8E3FQcdjz9t/qXnDUe76zsiWwcII9VNhb3S6+3qaqK/ON
X-Gm-Message-State: AOJu0YxEUrMy7p7v48K8VYWFvM9MW58c4lBKdu6bL7lVtyIUo0AnD5gi
	0LsazVqluiZVCn9tamJQsYqBnsIkyO4aE5FOd+vGLOulfgNRBEDN3O1fhGDI0Fc=
X-Google-Smtp-Source: AGHT+IEB2Yv7HHH4xgKKaHBJgwkBcrK89dW6XsH8NkNyK8KxN7eFfI39TsDSnKxNJdDUqrw6HYQTrA==
X-Received: by 2002:a05:6870:8a23:b0:24f:dc76:f6d2 with SMTP id 586e51a60fabf-24fdc76f873mr2635960fac.45.1716723824470;
        Sun, 26 May 2024 04:43:44 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:e388:b0:24d:c87a:17ab with SMTP id
 586e51a60fabf-24dc87a1a79ls1737146fac.0.-pod-prod-09-us; Sun, 26 May 2024
 04:43:44 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV4GFohun6yfuSzOzEbmymSqrlVj3gFy1Z5vqc21Z/+ZqS9mPgjBA4JEieZ3b7PlwUfNoNszWkMD2WRHFIFaO1RQW10Xin9MIuRchhOmywOFdaZky4=
X-Received: by 2002:a05:6808:219b:b0:3c9:94cc:6cd1 with SMTP id 5614622812f47-3d1a7d28461mr8666702b6e.53.1716723823241;
        Sun, 26 May 2024 04:43:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716723823; cv=none;
        d=google.com; s=arc-20160816;
        b=ndWqNiEjfDYjP9vTT6dzTlmrqF7dEzZ45sG1EMl/w9ijDwggGEvj//zU7AD1GLF5ib
         4YRjZvUVy8m3Zwqp43hxCn5F1xpz0Yf9gYbPv+MpPY+9qxT00D614ba1EiMrKZrgjgqY
         5AxawnKpAQd+y8i2rRKvDd3g5xjoUucwzRqtH3Zu+tgGumal0vngjhynkSqS0YSjCEiS
         jLvfQU5qJ1KxkqB2tfW0ujLhXpiU2gHWa12VIAnPtJwDNm1EngvWGWrPx6kSd0yo1XHO
         ArwzsHBgn7QxMYgFBtxgBqXOZmIM8TMziqyHyHP/z1ak58oc5Gepx4pHyD3PkHgxTpFE
         Olzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=tX0kBF9NO4KVCt1zxf5ZTyGHtsnYh72/6DDdAiTrsTs=;
        fh=U+KSIoL/wbciPuIdCAOtCUR3fpEGJUDTl48Ljwi/8LY=;
        b=QFyttnqrt1va3/N+jgNSikniCnUtbac67deQTklmlIXfJL7IlgcztxBN7b7Kg9Eh5f
         z6TvAlKPkqyQMKWG1qgCTu/NBVj+Mnh9YfU7epWegvXmgCG3aBmoFAgIGHJ2qh1OCHXU
         c2+grsGCujYmAKNeLyWpopworTQ81bs5i+Ij0A+M1SWhJvEonHbee8Q8e0dB9Xhmmbb0
         K6A5E8JVh2Ri2auUvSIIiJrVr18wnjokpC3nGnjg7QQZ59Bl7Wh1DCb8sxnCcHiy2era
         Txq1iIjilW91U1ngew2pdCS8m5pinQYSOObDQNZ/xMOnVXoN7L6ak5j+Y0NqY/uNli5Q
         rWaQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=EWUGtPpD;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by mx.google.com with ESMTPS id 5614622812f47-3d1b36b5396si1681831b6e.110.2024.05.26.04.43.42
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 May 2024 04:43:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C4F3560A05;
	Sun, 26 May 2024 11:43:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2237FC2BD10;
	Sun, 26 May 2024 11:43:41 +0000 (UTC)
Date: Sun, 26 May 2024 13:43:39 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Markus Elfring <Markus.Elfring@web.de>
Cc: Shichao Lai <shichaorai@gmail.com>,
	usb-storage@lists.one-eyed-alien.net, linux-usb@vger.kernel.org,
	kernel-janitors@vger.kernel.org,
	Alan Stern <stern@rowland.harvard.edu>,
	LKML <linux-kernel@vger.kernel.org>,
	Oliver Neukum <oneukum@suse.com>,
	Xingwei Lee <xrivendell7@gmail.com>,
	Yue Sun <samsun1006219@gmail.com>
Subject: [usb-storage] Re: [v6] usb-storage: alauda: Check whether the media
 is initialized
Message-ID: <2024052632-refund-basis-a9f6@gregkh>
References: <20240526012745.2852061-1-shichaorai@gmail.com>
 <79ba60d2-357a-45f0-93af-78879b9f4b02@web.de>
 <2024052647-battle-sacred-83b3@gregkh>
 <ce266282-029f-4333-9ef8-6ddce64e661f@web.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <ce266282-029f-4333-9ef8-6ddce64e661f@web.de>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=EWUGtPpD;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217
 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Sun, May 26, 2024 at 11:20:23AM +0200, Markus Elfring wrote:
> >> =E2=80=A6
> >>> Fixes: e80b0fade09e ("[PATCH] USB Storage: add alauda support")
> >>
> >> How do you think about to omit the text =E2=80=9C[PATCH] =E2=80=9D fro=
m the tag summary?
> >
> > Then it would be incorrect.
>=20
> I find this view interesting.

It is not "interesting" when you tell people things that are flat out
wrong and trivial to prove wrong.  You are doing nothing to help here,
please stop or we are going to have to ban you from our community,
again.

greg k-h

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/2024052632-refund-basis-a9f6%40gregk=
h.
