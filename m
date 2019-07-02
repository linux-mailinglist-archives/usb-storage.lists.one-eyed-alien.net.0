Return-Path: <usb-storage+bncBCF37CNFREKRBVE45TUAKGQEUOPV2ZY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yw1-xc45.google.com (mail-yw1-xc45.google.com [IPv6:2607:f8b0:4864:20::c45])
	by mail.lfdr.de (Postfix) with ESMTPS id A5EAC5CA19
	for <lists+usb-storage@lfdr.de>; Tue,  2 Jul 2019 09:57:09 +0200 (CEST)
Received: by mail-yw1-xc45.google.com with SMTP id y205sf1746311ywy.19
        for <lists+usb-storage@lfdr.de>; Tue, 02 Jul 2019 00:57:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562054228; cv=pass;
        d=google.com; s=arc-20160816;
        b=wuZMs1/eQdSdxIR+0ClhUHKv8w+7iyH7D7AdymeKIyrqftez0vKZce3vqT2FUIQX1b
         vNw39EryOiF9CQPaaovf3ATLKNz6oOtFUQpFsxUzco0zKhLcgrPztB37hfycoimcDzQV
         VMD3nYoDWcte4K8hBY+dKjrBd/sJvEkkrcBhtfTbXIWRKODWlcD4pah+vRIxgqQqnaB6
         sn/EFnMC+MlbHjmBIGuA50V2qxdTIwN75EOQRt6QrxTlDv3HBKrZbbWTI1DmCNiMrbUq
         cUzNBDuc0qWF1Qz1vE6xWaEW8mH8tW2I/ds9wDjUgv3zTXHKicrFTdqgvkk/PcsDo6nU
         0R2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=8s7VzYk/S2gCXWJEA30GtWhE06jCh9FP78S385B/nbo=;
        b=sNI1ftzTdv7Ms6h11xha93BI+CVZX29OiB+kY4zRVP6jMLrdbOmI8lcj8G7+BaFg/q
         19HLW+xi3hpR39phLZXbelbosZDcUi3/vu0PVuUQ/hQQWE1X4XMCV17+BPmyMfmE8cIc
         +XTBv03aAFJrb/CIlLYV8qqpcMz0n1Yhoyc9OPo552zbVK3b7gP3Tdn8L7twPZcwhGCD
         BFEjKg6Za7zXJ9SfI+StSOEpOQ16S7/zdghvDuujcRgCtP7fhrv+GJRz1CGPb4eiIC4M
         7rgu7g7jSjzIJiD9KGpN/i4TMiWRsqPwy4pkj7CryVZYfuBF+iFXfJRA/7GkXO7+kxRK
         NeEg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@nvidia.com header.s=n1 header.b=jgicwKmh;
       spf=pass (google.com: domain of jckuo@nvidia.com designates 216.228.121.143 as permitted sender) smtp.mailfrom=jckuo@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8s7VzYk/S2gCXWJEA30GtWhE06jCh9FP78S385B/nbo=;
        b=gqq2Y0/xKRg40CMoaQs0BhazJt8RwPUOzZyxl2W57n2nb4p5uXt1k7poYEZNUCIgC9
         gGZc9zSeTnvBj+FHFFiAh4KxVd59GDk2tlA54UU1Lc7ig1G+br9sqRjFWH9KBozIEM/G
         /vWGOJoHuWUozpSHaOVrVTnNNxE+Bb5seIKGw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8s7VzYk/S2gCXWJEA30GtWhE06jCh9FP78S385B/nbo=;
        b=g9D8rJpZEWFSG6vKOaK4LnPg4BbzIro0BHtwAqDKp60NdTlUr8mhGuNLWoKq1OZzy1
         JplNy6ZYykjk2c42XU0kdIikgf1Huz6FW37uUxQkctYRrMmghds4JZ9UoQ4lx+UoXEPt
         vLiWA1xDuqTW6EBQVB6ns9Jo7SH6/am+GBYFavx184BkcFOHOoU76tsWbEBtBc7/wtob
         f4skmRrF9Fqm/rSVQdDGo8FH9sdehlvn00M3lHiwpg52y+EGGd6hMjuZNkYsyJPQbEYP
         SBdhMNB9x4w13lFAhXm8XiWs2r5C8xSazKz6V0qDpqQ/OQrEoX1usICrPyRy31p0Rj8e
         bkyQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXRL5vn37LMkDNDPqfLiABCa7EsHy1LZx29TaPuhp78axKIjeB/
	x2U61LWuwCYUaqOkS2Moh6gmMw==
X-Google-Smtp-Source: APXvYqxsPyK1wok5wdGweB0PwCLSyPyL4jliNKj6vnhTKiQXLEaTov74ZcAlCrOxjXGqJeFXTr8aWQ==
X-Received: by 2002:a81:9a8e:: with SMTP id r136mr18124967ywg.121.1562054228661;
        Tue, 02 Jul 2019 00:57:08 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:b9c1:: with SMTP id y1ls1100328ybj.5.gmail; Tue, 02 Jul
 2019 00:57:08 -0700 (PDT)
X-Received: by 2002:a25:aab2:: with SMTP id t47mr6319032ybi.342.1562054228395;
        Tue, 02 Jul 2019 00:57:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562054228; cv=none;
        d=google.com; s=arc-20160816;
        b=cnH8s7iaxVDJpZ6KCV/5/ezUkT4SGRNXrOXGlbbEehkKtGOMeAI83bxtsHKCs+HxiM
         h9eeqkRkjhIRuZqSnC/1vMmQQFUE9zTnWP9u4hFlgYcFZ3igICLeka7NJCfo4ZE4DzGU
         6ErwmFdnjc9W+hrT89mcUdkm3cH5Hcu1t1lkZQnw6GI7tYotoPEkfKWm0fFgfbLxWCNm
         w3eQRNEo7tXrE1Dm2wVZDx9/uQZIShEIhdwKxi2k0B3LGYS6aLK17AtVGJfwf81MNJh0
         iFgV0lD1lbl6uJM+ODIzbimVXmTkYwmDKYMuuml8i0LFl5kD8pVZviYDhJ2rH+4xS+IX
         xpvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=dkim-signature:content-transfer-encoding:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject;
        bh=n8EZLqSbsH9hR50c0zG+1lO4rtsBJM1KmooEQ00c+00=;
        b=WimUxlQR/22sNiPw6RhRrIw7cFiKvw4W/wZn9vekN/DsTp7lO9VQ/dPTaRN5c9/MZQ
         RmfkBWLEPqxSb2LSyIo7qdLjuOxwZsPCfxghiSeWO31HFVsrWE/lhb6de7J9ps9jGOrh
         JcLyWJRFUWHVpkq7rDHAoCSMhYllJkFNPgMNq8Nm8v1aX5CdCyl+f+lw0Wby1qZLT5JF
         SIPFOUA4Z1MfAVZzcC6zo3Wa19Udqx8qD5+XlPBJbOqmbw5hiZj1gBYv83urv81hC8X8
         M7fhdsy4Ul52dE//HAB71NbfWRNzZQvLZFnOSei22beloDZwxZDNMHSNuKDqB/ApI5I0
         rFFw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@nvidia.com header.s=n1 header.b=jgicwKmh;
       spf=pass (google.com: domain of jckuo@nvidia.com designates 216.228.121.143 as permitted sender) smtp.mailfrom=jckuo@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
Received: from hqemgate14.nvidia.com (hqemgate14.nvidia.com. [216.228.121.143])
        by mx.google.com with ESMTPS id o205si5092800ywo.208.2019.07.02.00.57.08
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Jul 2019 00:57:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of jckuo@nvidia.com designates 216.228.121.143 as permitted sender) client-ip=216.228.121.143;
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
	id <B5d1b0e500000>; Tue, 02 Jul 2019 00:57:04 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
  by hqpgpgate101.nvidia.com (PGP Universal service);
  Tue, 02 Jul 2019 00:57:07 -0700
X-PGP-Universal: processed;
	by hqpgpgate101.nvidia.com on Tue, 02 Jul 2019 00:57:07 -0700
Received: from [10.19.108.127] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 2 Jul
 2019 07:57:06 +0000
Subject: [usb-storage] Re: [PATCH] usb: storage: skip only when uas driver is loaded
To: Greg KH <gregkh@linuxfoundation.org>
CC: <linux-usb@vger.kernel.org>, <stern@rowland.harvard.edu>,
	<usb-storage@lists.one-eyed-alien.net>, <oneukum@suse.com>
References: <20190701084848.32502-1-jckuo@nvidia.com>
 <20190701085248.GA28681@kroah.com>
 <8e8e8703-8620-b625-4917-bbb8d999caa4@nvidia.com>
 <20190702044249.GA694@kroah.com>
 <f6ed2505-5da9-c217-a052-a19d197c5c8e@nvidia.com>
 <f43e7ecf-64d5-20d2-0461-85a55fa28a33@nvidia.com>
 <20190702073432.GA9265@kroah.com>
X-Nvconfidentiality: public
From: JC Kuo <jckuo@nvidia.com>
Message-ID: <136cd205-6114-2be5-4244-f6689ce6bf3b@nvidia.com>
Date: Tue, 2 Jul 2019 15:57:04 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190702073432.GA9265@kroah.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL108.nvidia.com (172.18.146.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: jckuo@nvidia.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@nvidia.com header.s=n1 header.b=jgicwKmh;       spf=pass
 (google.com: domain of jckuo@nvidia.com designates 216.228.121.143 as
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

On 7/2/19 3:34 PM, Greg KH wrote:
> 
> Footers like this are not allowed on public mailing lists, and forbid me
> to respond to...
> 

Hi Greg,
I am truly sorry for that. I have just figured out how to tell mail server
not to add the footer. Please allow me to query again.

Since blacklisting uas kernel module is not a good idea and could break UAS 
capable storage functionality, although user-space should be blamed for the
improper configuration, do we consider forbidding making uas driver as
module? That means to make CONFIG_USB_UAS a bool option.

Thanks,
JC

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/136cd205-6114-2be5-4244-f6689ce6bf3b%40nvidia.com.
