Return-Path: <usb-storage+bncBCUJ7YGL3QFBBTFPUS2AMGQE65THZ3Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc48.google.com (mail-oo1-xc48.google.com [IPv6:2607:f8b0:4864:20::c48])
	by mail.lfdr.de (Postfix) with ESMTPS id 67FF892926B
	for <lists+usb-storage@lfdr.de>; Sat,  6 Jul 2024 12:09:17 +0200 (CEST)
Received: by mail-oo1-xc48.google.com with SMTP id 006d021491bc7-5c41551a445sf1833521eaf.3
        for <lists+usb-storage@lfdr.de>; Sat, 06 Jul 2024 03:09:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1720260556; cv=pass;
        d=google.com; s=arc-20160816;
        b=Fr4/boxc1J8vLgfaxZ7+rfLYQxhkOU0lUkvLZQYeN2KlrlOTycm/84RU54HSHs7oGF
         zGHF32enheqHT9QFGNnJgSKn82OEmAceG6EKrU6G+U8//IVo6YUgBXpp5Rl/hcJ7K9YJ
         BOyiAegcP6AGOmscnirVB6H0AoGsk12c2RpVpM0tsyfzDv7SL0qheKn7DHeTUBI4lSg1
         9MJLejQDBSFsPhlziDKXznagFwCQR12HT6wwjzq/sSvSJSQ8LUDGgkhCzCSR259x/HZN
         beSceQc4x1QU0zGw7BKy56EBQ2HtM6aCxUc1JjeS/4KJDfINnXKbKp/6YQMiqyzil3CC
         MrOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ySL7OFvKd9cMJr1vqFbP9vXlOj/Brl/+cTdKbgUJ7z8=;
        fh=0SZD6ghjy2cEZS2g+VonZE4Vpqp64yvQsHlNqUbRG+8=;
        b=cRmOjPLRn7vJQon93P7JyF3awaAHzFHqhySdjQeQ6y1MvHmjlRYWNtihZCukSRDkPh
         SX43rU5hLmXj1DNc4hGd9KQ4WhtNAjbiZ0qhM/SIPxZVayoG+dGM/3hFXGhYuMTFXz7G
         5IxAXnOBNuN8i8qD07B1OIiguBppXoSMCv3w7LmZhIKOFhWct4jpa+2ei5iEWO2ZBF1o
         mGdDsEpd7LSxDipOG/zdDMWqb4y2ydlkd22afoG1WH7jsOEPbbTKWvHa+yrgMfy4ru2n
         m/WCE4EZqMO9wyQgfrP0wbTWpSWD+tGvFOOsrL9NqcDji7zDyhdx7gF0YK3yr+OACiPy
         GT6Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=kY9qSRVP;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1720260556; x=1720865356; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ySL7OFvKd9cMJr1vqFbP9vXlOj/Brl/+cTdKbgUJ7z8=;
        b=jrwhf80SKGHFgY6GrCN4uJ62rd/5ZX0bLUPUY2daYIfDYug27rBth69J/sniMWHB4M
         S/SBDO0RQX67+tCSf3fpTNAgsNun1XDFPDi1RzwQjv6/wYPQunb7SzH3JchdnQ9me7rg
         rEuqoC7dWdTrQErFqWCpH1WGNi4COpV3yf1tU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720260556; x=1720865356;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ySL7OFvKd9cMJr1vqFbP9vXlOj/Brl/+cTdKbgUJ7z8=;
        b=RCHI2cjSem/IYoSjRsX+pvsuiV5aCqe6kx119yD5CBh89eFVjkIo+BbYbu8AckTOF7
         swxJ/VTOuYq1WuDqZkrYPPyMz2QzeFcxXk4XgOXuB4np1xnfRF8dMzl59Oy3HJGqzO1k
         h6I0DT9YCNdyl0F25MvZzT2kNHSoeZkSN0TgXPZ8HoxIm4qB+QcsJ5P+LNBEP0rirZsn
         ItBjnEDB/QkTZIJBttX2s5JtTSOmL3k8Pf6lAfzfjXWKISgKCtSsH6PWK5OV66Ph1ukx
         bMTT6VNeahc5c+E/z6T/2oa2V4PntJPHFXs9Pg7YUrrZalgWChuW9Gxpk1NIWF7E7o7E
         Dj4A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCV/kTAkxE96Bmp3l+Fa8LKNaE3HcJVlV4UjIzLEvnJluqSwO0n/9voufkuAeUVGuGNeL0XpcGUBijmJRQGrxCjMGoUeV/2No2eJ
X-Gm-Message-State: AOJu0YzZJT/SDZxobco9GfKt0gxwacE5/Jgsx9Eflucpx7yFrp6TXYUh
	WVcZQrWwJJ5EU9K2aMoT0bjbnB39ERnEuRpoRSW+lGCg/1cmeDCRt13XsDRqu9Y=
X-Google-Smtp-Source: AGHT+IF3vZTMojcc33+CjFawsrpubGhRGpB2Zg73BBpY82LI5+QhG+APaf8l3w7tH3Pme2Uf9fubKA==
X-Received: by 2002:a4a:5404:0:b0:5c4:3977:a247 with SMTP id 006d021491bc7-5c646cd9363mr7349766eaf.0.1720260556132;
        Sat, 06 Jul 2024 03:09:16 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:5405:0:b0:5c2:24be:40c1 with SMTP id 006d021491bc7-5c643dbe0c5ls1878811eaf.2.-pod-prod-09-us;
 Sat, 06 Jul 2024 03:09:15 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUjRg3ZDpMoI1ITfLskBuQpSLTyvDFBH+Fl9Lcuq58xnWOs5RGmuLRW/d2NkodjDAGWVxiTIJ6vcwLhUafugTHeLQGwrbaXt5h+I1SMH9fDgICPaiw=
X-Received: by 2002:a9d:4b17:0:b0:703:5cf9:2968 with SMTP id 46e09a7af769-7035cf929ffmr3163134a34.21.1720260555501;
        Sat, 06 Jul 2024 03:09:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1720260555; cv=none;
        d=google.com; s=arc-20160816;
        b=bGrEgPEVhiRysQCjnlI447b7x51QsMfUpVxDRU2lBsv5XuW6/G40bL8lsS9O9Yiy5r
         C73fuIypT24SGj/mw+CgQR6mko8rIMr8MS88LSqEwY7RxpGsnJZkfcxz2A+A7lxijlXP
         X+0btAljs+mpmIeMb/656jit4PAKjC+t3gwLzzzm4kZ8oOGFssIivY4ZMd3svyCYsn0E
         LUI62xjhXELaslDiyczCLciVRLiL/Wc9ITJeGfWn2hqRjl5e+kSW8kiqekv5V4eJ4uwx
         pmOEkDYB3Keyk4TO+ngwGsyohB3TEnjXe1bKxPJYV5QSFegau8I1nM6/ccByWNDZzaTW
         /7gA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Xh9GnZclsAYoiHU3v5BebnTmpazK8Drkfeyqg8bjULg=;
        fh=G1xaMEjcq/VzXNko1kzCDqvxW8eozN2W81dz7VgrA2Y=;
        b=SYvUdTADPjb0QgZ+zKfUENa1EiR7q8K3UC/k1zW5Xzs65c1u0OtlZspwInSQls9fV/
         wnrgyhFCX+RP+CfdAfZobgwMgY8v4HUMU+GJuvJk/W0/Pwq+XJgRV4XhPuJzvza2jYCz
         Byusv5MAdRWBsDvYPlAB+80x9B2toO8n2nehVen+6Yot2qFupvWJuoad+FSp76Uhps3h
         zpv+MrSgIxY9NQYupeYhJVTRx/OnKFEdFPOj2IszHYemrbFWgZeQXY4ptPJGvXU508Gn
         o+TxrJHEUrj68lK+mtacPRCZVmbO2+DGOQ9UHdkFnH3ZIdCqi2uqQQ+fshy6DdUJvR1L
         /1RA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=kY9qSRVP;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by mx.google.com with ESMTPS id 46e09a7af769-70362ed3cefsi258477a34.126.2024.07.06.03.09.15
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Jul 2024 03:09:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3066861CAA;
	Sat,  6 Jul 2024 10:09:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B403C2BD10;
	Sat,  6 Jul 2024 10:09:14 +0000 (UTC)
Date: Sat, 6 Jul 2024 12:09:12 +0200
From: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
To: Aditya Garg <gargaditya08@live.com>
Cc: "oneukum@suse.com" <oneukum@suse.com>,
	"stern@rowland.harvard.edu" <stern@rowland.harvard.edu>,
	Kerem Karabay <kekrby@gmail.com>,
	Orlando Chamberlain <orlandoch.dev@gmail.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
	"linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
	"usb-storage@lists.one-eyed-alien.net" <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: [PATCH v2 2/2] scsi: usb: uas: Implement the new
 shutdown callback
Message-ID: <2024070603-deniable-slang-f93d@gregkh>
References: <A6C4519F-852E-4B5C-B791-7396B515B8A6@live.com>
 <A53C580E-C0CC-42AA-B50B-F1B8A5756C9F@live.com>
 <BAC247FF-CDA3-4C34-A9CC-A429E3AD13C3@live.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <BAC247FF-CDA3-4C34-A9CC-A429E3AD13C3@live.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=kY9qSRVP;       spf=pass
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

On Sat, Jul 06, 2024 at 10:01:38AM +0000, Aditya Garg wrote:
> From: Kerem Karabay <kekrby@gmail.com>
> 
> This patch implements the new shutdown callback method added to
> usb_driver on the UAS driver.

Again, says what it does, but not why.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2024070603-deniable-slang-f93d%40gregkh.
