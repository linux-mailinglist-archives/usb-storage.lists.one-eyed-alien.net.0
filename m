Return-Path: <usb-storage+bncBCF37CNFREKRBGWJ5XUAKGQEU3XBV6I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb48.google.com (mail-yb1-xb48.google.com [IPv6:2607:f8b0:4864:20::b48])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F9D85D128
	for <lists+usb-storage@lfdr.de>; Tue,  2 Jul 2019 16:05:16 +0200 (CEST)
Received: by mail-yb1-xb48.google.com with SMTP id z4sf2536877ybo.4
        for <lists+usb-storage@lfdr.de>; Tue, 02 Jul 2019 07:05:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562076315; cv=pass;
        d=google.com; s=arc-20160816;
        b=hvmQe0Ue7QVE5xYxoiuEfcDrX+nKV9pKXK2w4UyHKqtQnquBM7wFEwn5xF/Cp3auWh
         TsxZBuclDJ6aAlmn37LQgf2sLeM7ZLXIb+Otbc//96vP6s0jzP8j4CDP/Ra7AYbjxmL7
         5tAdW4K1hUifD4MudcC4G9ewL486iMG3SFgOeZWY2MqNac4NcNFPT8tzsyaYsD2aO0GV
         Z/l88Bf4E1a68+5aWee9jbYC+/vdVnvSiE31eta+EAvlH7Kkfx2ZGHzuZKE6q8HIGDUe
         /BxN+G2iLf3kX7z+qine5X7238u5X20vg3HtkECisiMu3MZKlUh6JlvcfgggJ1W3xhN+
         snWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=vUdF4qyS3okp+BwMHVr5rn897pLR+4Jflqn/KnmLPkE=;
        b=ToJYTSGW5EJ18E9a5MU/4fyUFFK7bawn4Rr0/eALzEQC22JlXO/5/+MWR1lv0cxixG
         G9/lqx+D7vvOr3pwEjXQirBYxlObKwLBVaOEOx6KuZ3G68PMnwYjm0HX+pE6qeoYYjO4
         gDYFVsTI8mEupKKowWMyJUXziKViChxRbgOV0zszD6SsCAhQzyGzE1RlrKgmZDHM4RwM
         eW1AZNugZ13VtrhLRl97vk3YAV6+0/+lwTJDoQb4ui2YBP7Gz5oPEklmmhTYHvMzvl4N
         sNxK/sbDRFK1oBbtsrZ4wxUelUc6EqzRYXWpvEfDjPwkao414jpvLkXMIYPVLqlsy6gt
         NhyA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@nvidia.com header.s=n1 header.b=YoQ1fD25;
       spf=pass (google.com: domain of jckuo@nvidia.com designates 216.228.121.64 as permitted sender) smtp.mailfrom=jckuo@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vUdF4qyS3okp+BwMHVr5rn897pLR+4Jflqn/KnmLPkE=;
        b=aU/kaTgQPs6DXr6yoDna/hudul6Kr3umFIJYXzl7lt/FXrtr5zK2iv4A2p8+hNlZm7
         lmr63xBV1TvdSFBhWpeiGSQY2hZNoNbPagyzOunZTR1zuEtjuK3n95hID/bhaAsTCcJ1
         xB0RCgDbIfh2uj2z2HSVeHMA4ukfylFgKVaSk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vUdF4qyS3okp+BwMHVr5rn897pLR+4Jflqn/KnmLPkE=;
        b=hW/1wpay81cNaFm9JdzLeq1Yk/Aq3AQjozJwTuw99udLD9i3lpdCllXw7U2mb61jDX
         BDT/eBZfgxtjtbIz8pqoMe/LbX9rzJlgaA826CYnco1IWO9uyl7iaAJn3iyRsCmB/Fv/
         eDS3c2bgjL8/KVBG5YfXGUfngxV5Lr7QQ09mX7+dsqQWY6K6FFdYP5ZBIrwCYnVzrbQm
         lwiwR9wy0O87/vqLYExqynze+AplAX6I2QHezt5VJ6NA2DWnP38/rMUqZqXuDT38Skuu
         8x72RhhKiAyR1jDE8NF3alfY4N17LBXJp51/9/V0Bk4GRzfj1LVcN8+wDBvVNCSsnd/L
         hctg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWG9W7phVNn/Xb6B7IUjo3x4Lu0njsr9x6edLjT/iNUl1qe7rbG
	Ml/1xM6KnbXyfsPAqs2m9OmmSQ==
X-Google-Smtp-Source: APXvYqxYVVTS9jU9+oHrtbcq6gHTNgZ+zwuePQtFqIJ7VMK/jiJZb7pO8cI/UEQ+x5rZUl2rcUEDpw==
X-Received: by 2002:a25:c985:: with SMTP id z127mr13858777ybf.462.1562076314846;
        Tue, 02 Jul 2019 07:05:14 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a81:9a0f:: with SMTP id r15ls1794008ywg.6.gmail; Tue, 02 Jul
 2019 07:05:14 -0700 (PDT)
X-Received: by 2002:a81:5755:: with SMTP id l82mr15723356ywb.284.1562076314422;
        Tue, 02 Jul 2019 07:05:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562076314; cv=none;
        d=google.com; s=arc-20160816;
        b=tW6QjqM7is/DhZYAzIPn+qyeBBPtjE49zp+TWxfoxK39U9wel+U6fvwSmR7nXpUxr1
         aRCvfbjXtAsOjykJM8hXWBEBMo57R1Jh6xa7Tjicv1sdkPrdwWDb1OMJK1EQ4WHvMyD+
         uqTXWKh0lseA9OKs++3yCpYN+WCx/doBpFXCVTFY7cXsswR+G8CK9ykRHwJx7qkMm0mq
         bxHpuHQddnKA0c2CT/vqfAg9Omum20IpqLPGsJVincSeRMe2dCRxnaoWTU43fQG3W7Fs
         TmgHKTluos7rgh+Xqyy2oZIU3H2n3WwHHY592hlenvb0jyPa2mP6f5cEg+P2JdV3rDDP
         rwSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=dkim-signature:content-transfer-encoding:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject;
        bh=u0nrsxxaPM7VQn2VqTchA+WakCKxVWQqKElq0je1hss=;
        b=vI30yE1VDCGxcs1VlF6fVla//pCg7c+X7Olfq8vD2qQi5yhaVRUlwFiQqxOJH7odDT
         2ImK5+bSDfBDjAHTtlgsYZ1Mroe4P2a+zKTVbiM8ngRo2Uz/cGZNQlGVnvaL/jvABmNm
         vubWv2GwaZvQ45zRGPz2WnOVo8urUGKceqaSayHKsYOv9FiHYHUbDUy8Y7P9bjf3RuGG
         tcSjw2DqYGwZ/qxId9eW0cJEB7Cr4i0aYoZnc6gxoqdzGiCMc0N+bKqywEfOnv53Yi9r
         gFGUoTw8DHkfiKvjlLtGUzALQFRiNpz8+3/KUjp7xtmz5rEp3IAKP18kG46zumzyvbT8
         u+NQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@nvidia.com header.s=n1 header.b=YoQ1fD25;
       spf=pass (google.com: domain of jckuo@nvidia.com designates 216.228.121.64 as permitted sender) smtp.mailfrom=jckuo@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
Received: from hqemgate15.nvidia.com (hqemgate15.nvidia.com. [216.228.121.64])
        by mx.google.com with ESMTPS id u11si5644465ybc.417.2019.07.02.07.05.14
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Jul 2019 07:05:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of jckuo@nvidia.com designates 216.228.121.64 as permitted sender) client-ip=216.228.121.64;
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
	id <B5d1b649d0000>; Tue, 02 Jul 2019 07:05:17 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
  by hqpgpgate101.nvidia.com (PGP Universal service);
  Tue, 02 Jul 2019 07:05:13 -0700
X-PGP-Universal: processed;
	by hqpgpgate101.nvidia.com on Tue, 02 Jul 2019 07:05:13 -0700
Received: from [10.19.101.123] (172.20.13.39) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 2 Jul
 2019 14:05:12 +0000
Subject: [usb-storage] Re: [PATCH] usb: storage: skip only when uas driver is loaded
To: Oliver Neukum <oneukum@suse.com>, Greg KH <gregkh@linuxfoundation.org>
CC: <usb-storage@lists.one-eyed-alien.net>, <stern@rowland.harvard.edu>,
	<linux-usb@vger.kernel.org>
References: <20190701084848.32502-1-jckuo@nvidia.com>
 <20190701085248.GA28681@kroah.com>
 <8e8e8703-8620-b625-4917-bbb8d999caa4@nvidia.com>
 <20190702044249.GA694@kroah.com>
 <f6ed2505-5da9-c217-a052-a19d197c5c8e@nvidia.com>
 <f43e7ecf-64d5-20d2-0461-85a55fa28a33@nvidia.com>
 <1562058690.5819.9.camel@suse.com>
X-Nvconfidentiality: public
From: JC Kuo <jckuo@nvidia.com>
Message-ID: <6e764566-d6f5-c064-cd4d-66261a238d8f@nvidia.com>
Date: Tue, 2 Jul 2019 22:05:10 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <1562058690.5819.9.camel@suse.com>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL106.nvidia.com (172.18.146.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: jckuo@nvidia.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@nvidia.com header.s=n1 header.b=YoQ1fD25;       spf=pass
 (google.com: domain of jckuo@nvidia.com designates 216.228.121.64 as
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

On 7/2/19 5:11 PM, Oliver Neukum wrote:
> Am Dienstag, den 02.07.2019, 14:56 +0800 schrieb JC Kuo:
>>
>> Since blacklisting uas kernel module is not a good idea and could break UAS
> 
> Then don't do it. If you don't want a driver loaded for a device
> blacklisting the driver must not magically assign another driver.
> 
>> capable storage functionality, do we consider forbidding making uas driver
>> as module? That means to make CONFIG_USB_UAS a bool option.
> 
> No. Absolutely not. We cannot force people to build UAS into their
> kernel or not use it. Building either driver not at all, modular
> or statically are all valid use cases. Just not building UAS must
> trigger a fallback. And we must have a flag to override the kernel's
> decision
> 
> Making driver assignments depend on module loading order is a very bad
> idea. We also have the necessary quirk in one way. I would accept a
> patch adding a flag to force usage of UAS, but other than that, the
> existing code is as it must be.
> 
> 	Regards
> 		Oliver
> 
Hi Greg and Oliver,
Thank you so much for your time and guidance. I understood that we can make
use of usb-storage quirks parameter to blacklist any UAS capable device.

I don't see the uas issue myself. I was trying to describe a situation that
user having issue with UAS storage and would like to blacklist uas module when
the user is not aware of the usb-storage quirks parameter.

https://marc.info/?l=linux-usb&m=143385909823645&w=2

UAS capable devices are backward-compatible with legacy Bulk-only protocol.
Therefore, IMHO, ideally if system software doesn't have UAS support, system
software should enable the UAS device with Bulk-only protocol, unless
usb-storage driver is not there as well.

Now the only valid way to disable UAS support for all UAS devices is to disable
CONFIG_USB_UAS option and rebuild kernel. Blacklisting uas driver is intuitive,
however it doesn't really disable UAS support but actually prevents UAS devices
to be functional even though usb-storage driver is there and the devices indeed
support Bulk-only protocol.



Thanks,
JC

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/6e764566-d6f5-c064-cd4d-66261a238d8f%40nvidia.com.
