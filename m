Return-Path: <usb-storage+bncBCUJ7YGL3QFBBZ4IW6VQMGQEZRO43NQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lj1-x247.google.com (mail-lj1-x247.google.com [IPv6:2a00:1450:4864:20::247])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B92803275
	for <lists+usb-storage@lfdr.de>; Mon,  4 Dec 2023 13:22:00 +0100 (CET)
Received: by mail-lj1-x247.google.com with SMTP id 38308e7fff4ca-2c9f975784fsf10704621fa.2
        for <lists+usb-storage@lfdr.de>; Mon, 04 Dec 2023 04:22:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701692520; cv=pass;
        d=google.com; s=arc-20160816;
        b=HLcRn8amX6hD6HE4VfXD70AWBUqg+BVrBS4l9nMatSBhP4vqAaKICTs/XXnxon4Lut
         Nv94w3VtjvOSmD6+ZbDAbyAGrSjw0b2KWSbyMHDPxDpdQZqbhKSFxbWYhD2YLOa9msvo
         /632MLj7CONPm0OCzDRW0ZPOw/OhC2wWImix5JudSnHs/E1E/vebumw1Uz82/y4EpNNK
         mzikuXK3ORw35ZmZAec0CBFKI71JXfrSUMQjGwWboZOqra7mPQdX0NMiZa0G4GZWw1Sk
         L2hMmQk6xVTNMpihrm+i8hUMpBBgYC95w4yV/swbp7kzFUFbKeTOm5GlWGhVgtz/HvCP
         1g9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=OcFQu3vYP1hbdfx07xzFUi7pcekrbVrizL+LIwr44BI=;
        fh=rVAAKCmlu5kiItYzG1BGD49lQuH51ZvKk2kjfxNCs8o=;
        b=TYMNh7V/ssmO/0ZIs+41dsMkR8CBnrGpE7Hpg8gmaw3JHwqsKcf/grQhQesFO8IkBZ
         JZpa3JNskPUHd9gjCXANPLFtN9R+itHse3mqc2YJNBkQeVbNaxHkI4Vii5GSP+REMUMD
         2B7jYDdSF9Ght053vyWPSGudR4wwhSdyrtt7vPXwuFQd0fUY98ZXsBOHx4zD4VkW8dyv
         5YVxxGJt0ZySNHJoIyFwjl+L1VR3A2qxq1Hw/V3ZkcPgP6DGyaxTVtPJayF0vjco7Dpp
         JvTerN3p+e6ZSBqDyy4nwMlOLp9kaRYZ7c1oJT8f7sjx8S4kQ2RT6M9LILeWiXcHXC3I
         i29Q==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="IH/bWRpY";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1701692520; x=1702297320; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OcFQu3vYP1hbdfx07xzFUi7pcekrbVrizL+LIwr44BI=;
        b=Zt7p0RZ6OPzbTfiDXPMdaAbIaQtx9quidaK+jrd+wiJ56UjZdHQr9SDTVuCPbYxAqz
         BThoyMosFPAK9kDur8ti3+rpgSPa8hSGIbsoHJldje01Ja+HEkgPrI4QhacThVfrviuy
         cKH2eEKNZzL7owuTTrCWRFJN10vkeFlinbY70=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701692520; x=1702297320;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OcFQu3vYP1hbdfx07xzFUi7pcekrbVrizL+LIwr44BI=;
        b=YCvggRtem5LZbINKVQImCco/3GeJ53pPhMyENk4L4orSQlgl6FHu4/x8h3Rkv1Fa51
         oAFDGJsiAUjQ4AD+LVYzVt4fcfF3pKIZB3ZNErt4zkw282zeC5FUu9zqqY0cLLaH8m6T
         FxZGPdGnBDHacLzsy0Qdp+sH7mJpDrTFOGeV5T0ALyKGt/NIVx8uS0qArLKzayBDcBMA
         reww+3hkIXe6vef/MOAg49w1/gV0+ac7h3a99C7/LfepB0ZCa4ExRfxdVXa7ZDNS8fMV
         F+4SBsGY9pJMaa58wlhoYGtJXC/k6F9ufLn3Blj7nvf9cLKJiXOJ5qo/lhIifGUMpA5n
         xISA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YxhcW5CGPd/7Fe+AGb2C8SHCIWZLfeoWm36MqbxoaF/+6CXsDjs
	hEerqzXSsmWlsAH+lFJLAxJt3A==
X-Google-Smtp-Source: AGHT+IE78sAZz+25QW1zov/9D9Q5diociLPVDCdRFe1MeFHkn772qpVSxnYRNPV2H4kA3wrUxhXhzg==
X-Received: by 2002:a2e:b0e6:0:b0:2c9:f6d6:d477 with SMTP id h6-20020a2eb0e6000000b002c9f6d6d477mr1226527ljl.17.1701692519969;
        Mon, 04 Dec 2023 04:21:59 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a2e:9950:0:b0:2ca:30a:838a with SMTP id r16-20020a2e9950000000b002ca030a838als257314ljj.1.-pod-prod-07-eu;
 Mon, 04 Dec 2023 04:21:58 -0800 (PST)
X-Received: by 2002:a05:6512:2344:b0:50b:f0f8:6ba0 with SMTP id p4-20020a056512234400b0050bf0f86ba0mr1297242lfu.116.1701692518112;
        Mon, 04 Dec 2023 04:21:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701692518; cv=none;
        d=google.com; s=arc-20160816;
        b=Fmzpc4gqonR+nATr8y/xAX9vam5arbHB7rQvTIkCqgGjx7gwzWUPaW6a4pp6L1QG6q
         ItBLQgTuj6PEhVmxniSE2nv4DsqCgHdvJRL1lwuwXc1qkoSJZTZf6MMZ+sS/nZGRSVGG
         yXE3V+JofbUqvXssEMWfx4NXDHNs8ImkKghDMaNoq8PXrcUrUBwe0oQHk+kdTGM9U8b9
         hp5VVjbXMkBw2sor8MuEaj4fn8SllSmcTP51HV9CprQU5b2A5zikqg/l8jLoLzxhhtB+
         hYzhZmRzlD41sEjlMoLv/VVjwWyr48seRoWB4kOPvEi4uCjgznR5p+iEF82/e3H5aUH4
         ie3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=S669APW2wRlyAtitODs9ADLeRuArsFa+CDxEiWA7Bjc=;
        fh=rVAAKCmlu5kiItYzG1BGD49lQuH51ZvKk2kjfxNCs8o=;
        b=EqgO3hQjJqzJYy1FmnIKcKaxVQL0iR4jAdHfcYTV10TE6xem4fijbncbhBGsjKvNuh
         2YDHLsmoHi09cf8dRoU5LFzOnZmWRozGEhgl1sNwVpNEShKDIV0lsqlz/cpoOrT/Lr1A
         DaQMBQOAkDT0PV2GM6BL0SGNz7w2DKQiSQMOlbURAfiO1RyH8Eyw5MbIzEyW8YKvPQ1+
         m2xmjBx8cfg8EohTgoCLeNMPueKnDHJU4O73xBxtqpWUl7oC974i1Q0+cGP8nliQXvSX
         UbTkhbDI2uvRWfu6AE7WooaI5aIdGP5ur2415Midozm9QLko42/ZkPQXaCH6NskLMGuO
         IdFA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="IH/bWRpY";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [2604:1380:4601:e00::1])
        by mx.google.com with ESMTPS id q3-20020a50c343000000b0054cfc4d81ebsi26127edb.482.2023.12.04.04.21.58
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 04:21:58 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4601:e00::1 as permitted sender) client-ip=2604:1380:4601:e00::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id D1F6CB80DDB;
	Mon,  4 Dec 2023 12:21:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F0D5FC433C9;
	Mon,  4 Dec 2023 12:21:56 +0000 (UTC)
Date: Mon, 4 Dec 2023 08:04:36 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Sergey Shtylyov <s.shtylyov@omp.ru>
Cc: Alan Stern <stern@rowland.harvard.edu>, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH] usb: storage: freecom: drop useless
 assignment in init_freecom()
Message-ID: <2023120412-observing-affluent-9432@gregkh>
References: <4d3fb70f-bf2f-96cc-a8fb-1ef658a24920@omp.ru>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <4d3fb70f-bf2f-96cc-a8fb-1ef658a24920@omp.ru>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b="IH/bWRpY";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
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

On Wed, Nov 29, 2023 at 11:43:50PM +0300, Sergey Shtylyov wrote:
> In init_freecom(), the results of usb_stor_control_msg() calls are stored
> in the local variable and then printed out by usb_stor_dbg() (if enabled),
> except for the 1st call, the result of which is completely ignored.  Drop
> the useless assignment.

Instead, you should check the return value and handle it properly, don't
just drop the checking entirely, that's not good.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2023120412-observing-affluent-9432%40gregkh.
