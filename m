Return-Path: <usb-storage+bncBAABB7H5Q2YAMGQEQRWPEGI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x347.google.com (mail-ot1-x347.google.com [IPv6:2607:f8b0:4864:20::347])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F5688AD59
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 19:14:22 +0100 (CET)
Received: by mail-ot1-x347.google.com with SMTP id 46e09a7af769-6e68ce1602fsf5249863a34.3
        for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 11:14:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711390460; cv=pass;
        d=google.com; s=arc-20160816;
        b=yY3chspF8aFgR78z+EC0i8QBmCFi96YYA5kEoytIvbZ9HW9obPKijf3KhgrA5U7ZOd
         tuOGF7x3EjO7cKbSDIVhcFFYKoxIL3tmvYUmycwXj/5Uw0EO0FqJR/08CGJAozDGAAMB
         W45YgPggJwM15BkzEwZObLufZ5dSz6pjl2CapTrvcE4F4x3JYgal7fG0Ysn7cLgzmVLa
         BWcdzGKCgHBYWwp2frGOdySlFTe3KRx+ljdstua/oVCFW+czHoUlZATo+xMeZxKgkLup
         +LAO0kiE+B4FqavXsN37epKxYVOGEpKSmH6zwwB1UPr3fCG4vCMQ2PVr6PoPxuAe6yTa
         9MhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=t1jQmOJZYMu4iy7Zq7VwvED3PQBSo9Sz2fLuWMwT0p4=;
        fh=bfRRJbEv1vr8ybDlZg1eKq6QKil/6fjLynHvk4lLUFk=;
        b=Wleevfx6TO7nNZU4WPARZOE4Y/kzbDlg/BUJambiD42eCfjJeC5rCFvj/bOiCB6pGJ
         qQKvTbakiuc2eEHM5/eEGbHf37hjhaJS94kTmDUH2bFycsMFh+uCEVExnKJ5ik6oLmxy
         J8LQZBDrkrMlNEOkb/xID4mGjEiCqAUKb+3Zs5hRqwqeXzsdfu81GUUHQ3SrYTr1T6Xe
         D1p7EfNJkk1dPagSg5+P5Klg7oQHsPLn+JJbpUuoBCqJ4W5/ujGtwqBV8Vzt/nUjXvqc
         /6zGHxmHADzKKIo0D98jzvbvzLVMX8+3BnmgueDbV2j3TExpSVweJg9D3JDYm1RdD5YM
         5WqA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Rtrmh5Sf;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711390460; x=1711995260; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=t1jQmOJZYMu4iy7Zq7VwvED3PQBSo9Sz2fLuWMwT0p4=;
        b=PFZod0ywlVn4mERGnQq/GIZw4fTQmRKOa0GHuQBsGPKEeUEBx1CgZNuQRrAjHTV7a+
         NvCC70gA0sy+qwwd9APZdTquW5UyZGEeyjURQIkexNUSH0JVwjQGi6bCPwYZk4WzhUAB
         1ExrfbKt2GpBLwta8jLNzFzOItQj8fcJs/mVM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711390460; x=1711995260;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t1jQmOJZYMu4iy7Zq7VwvED3PQBSo9Sz2fLuWMwT0p4=;
        b=jtLTWV3A/5DzuSpMAvwXLst0km1rsaoYS62BahuHUuEukSQNIKmwiPRxbehVcx8OzH
         4LXG8k7hRZT5fs6f3IR+cubMWJ+yeoph07H8i9+4qFTaUARdiXnqlOmzX4z9RKd9EL/x
         xRjKpecKM17GYKAeusmHHlz/XSeaqYR36GV7s/xy3H4KKmOHIa9mxaqrvMMKwuvIvmnv
         ExP9/NFTD0YmcRZPKrpEvNtiCtgSMUxm83+WTaKZr5ye5a+k0sbypN114wUlLRvHUm62
         2GxenGnWKvYvkMP7xb2WHPQrdjBxiYSGh36DYjrhZlWIcL9BN3KGCCJ8W023WyC/73IP
         NUdw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVViKQGSohxIk0Jk9uaDCAf4OxxggEJNWPwxvC5w+sdtoXn9M9ZNHV/zWvKsZpUk6HbbLTcJjf1ufHTuzAbAwIx/QYw/lVbfOaX
X-Gm-Message-State: AOJu0YzQclwkD77bazt2IF0NH1hB6nayWdRT9qdeYSq7/Jkb3Exji7Fn
	WkRFeipNRcEIGkIWfezEnNdY3lXYQZwn5jUpTYjJwpTM8YGKA/nG0c04GsA7EPE=
X-Google-Smtp-Source: AGHT+IFIchDKzs8PCrFX3+hWT/MpCILkYAZErEOdQqJsR9SdHsZ1CdcMhWvN4PgnSwkrHF0S57Rldw==
X-Received: by 2002:a05:6870:a110:b0:222:99cb:2215 with SMTP id m16-20020a056870a11000b0022299cb2215mr9080349oae.28.1711390460542;
        Mon, 25 Mar 2024 11:14:20 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:638a:b0:22a:38cd:7d95 with SMTP id
 t10-20020a056870638a00b0022a38cd7d95ls267300oap.2.-pod-prod-00-us; Mon, 25
 Mar 2024 11:14:20 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWU/AolYbY+XDICwLmUSQpeGqSCNLLfbm28C12dJ8J0UkvnIfhYXOmoZKH0CuLie3cCj91aCHuk2e/KswtwoV4uZ93CllwNL6Qky4SBoCf0ayfYEPk=
X-Received: by 2002:a05:6808:169e:b0:3c3:d372:b704 with SMTP id bb30-20020a056808169e00b003c3d372b704mr46559oib.5.1711390460148;
        Mon, 25 Mar 2024 11:14:20 -0700 (PDT)
Received: by 2002:a05:6808:1783:b0:3c3:cc09:ef6d with SMTP id 5614622812f47-3c3cc09f277msb6e;
        Mon, 25 Mar 2024 00:15:02 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUtABTggW5vLoQSBm+xXa5PvGVKyM09+ZI9IC8W2ttUrhu6iGudfm3YX2naNiLIlf/vo2f+yBWUPdz/9h5uEut1nUmUBMxc/n8yWzywiSArrhD2fxg=
X-Received: by 2002:a17:90a:dd92:b0:29c:4395:b931 with SMTP id l18-20020a17090add9200b0029c4395b931mr4088199pjv.10.1711350900728;
        Mon, 25 Mar 2024 00:15:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711350900; cv=none;
        d=google.com; s=arc-20160816;
        b=CKeZdLkHpCqk8za2TdvSyvrXALtoPF87jFvaZ57Y4/ppOeDK2Px5+95gmfYrzZF/yb
         nAO4gEH/ZfWZSgecn52hlqHJ4ywM04m9nhGTYZWunaTCSE/tLDJK4bvD8o72hNFT2FSB
         3S+bmbl8lAjJJceQZblxBDwRih4q4cAm4r0juUnXCnO64m2ho4a1H+TqDwVRCiMfd5nx
         KXhxCNbysaYszyfsGyxsTZmHIAbRugdxok2jnMOqRTfMFa9juyG8QEC9/oO+GSJOIbqH
         huYbnpleBNJcnpb1XE96My5nOcvydF8Sy/5PDscbLa0KaR9/h82evvebBvfRSDO8/YuN
         p6GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=AeMugh8m302KzQU5N+2VJxdLZMrVeYAn3VmTClacAdE=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=qYfY6qVBKP+vPqI20+lqdE5O6tPuUIEWdKVWkPR39iydmkxxFQWhMeHy7k+lGQIybn
         RfPl3aKh5DUXf+6vEdZSiD0csc5FRir/LTtR0icTTyj/0Y799GPmhRwv2FaUJqHANzyr
         CblJ5bofiXYSQLMjavkF7wmjoXCRncF7fNsdVeGvir9vah1HPYkg3SZEhv3AEt9dLz9G
         h79KCA0lbG/WGLf5EiLyCRxkVlw0DldRhZys2A4RwTP8j639hKLMxsh4pdjV09JIyRmN
         qORoM8S7IFtlWCnmLHgyHvovpQiAH9YVzKFsH31xCUT5vKJcLFhVC9Ju74VzvpUEJxTc
         W7vw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Rtrmh5Sf;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [2604:1380:40e1:4800::1])
        by mx.google.com with ESMTPS id g10-20020a17090a128a00b0029c0bbdad5csi11091621pja.144.2024.03.25.00.15.00
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:15:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) client-ip=2604:1380:40e1:4800::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id F32E3CE0ABD;
	Mon, 25 Mar 2024 07:14:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D80BC43390;
	Mon, 25 Mar 2024 07:14:52 +0000 (UTC)
Message-ID: <b8346696-316c-497d-972e-c76d897a1c87@kernel.org>
Date: Mon, 25 Mar 2024 16:14:51 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 01/23] block: don't reject too large
 max_user_setors in blk_validate_limits
Content-Language: en-US
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
 "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Niklas Cassel <cassel@kernel.org>,
 Takashi Sakamoto <o-takashi@sakamocchi.jp>,
 Sathya Prakash <sathya.prakash@broadcom.com>,
 Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
 Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
 "Juergen E. Fischer" <fischer@norbit.de>,
 Xiang Chen <chenxiang66@hisilicon.com>,
 HighPoint Linux Team <linux@highpoint-tech.com>,
 Tyrel Datwyler <tyreld@linux.ibm.com>, Brian King <brking@us.ibm.com>,
 Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
 Mike Christie <michael.christie@oracle.com>,
 John Garry <john.g.garry@oracle.com>, Jason Yan <yanaijie@huawei.com>,
 Kashyap Desai <kashyap.desai@broadcom.com>,
 Sumit Saxena <sumit.saxena@broadcom.com>,
 Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
 Chandrakanth patil <chandrakanth.patil@broadcom.com>,
 Jack Wang <jinpu.wang@cloud.ionos.com>, Nilesh Javali <njavali@marvell.com>,
 GR-QLogic-Storage-Upstream@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
 linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com, megaraidlinux.pdl@broadcom.com,
 mpi3mr-linuxdrv.pdl@broadcom.com, linux-samsung-soc@vger.kernel.org,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <20240324235448.2039074-1-hch@lst.de>
 <20240324235448.2039074-2-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-2-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Rtrmh5Sf;       spf=pass
 (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1
 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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

On 3/25/24 08:54, Christoph Hellwig wrote:
> We already cap down the actual max_sectors to the max of the hardware
> and user limit, so don't reject the configuration.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Looks OK to me.

Reviewed-by: Damien Le Moal <dlemoal@kernel.org>

-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/b8346696-316c-497d-972e-c76d897a1c87%40kernel.org.
