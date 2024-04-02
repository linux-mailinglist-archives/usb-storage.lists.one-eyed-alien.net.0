Return-Path: <usb-storage+bncBDJNPU5KREFBBP5HWKYAMGQERMZVNXY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc47.google.com (mail-oo1-xc47.google.com [IPv6:2607:f8b0:4864:20::c47])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA3089600A
	for <lists+usb-storage@lfdr.de>; Wed,  3 Apr 2024 01:24:48 +0200 (CEST)
Received: by mail-oo1-xc47.google.com with SMTP id 006d021491bc7-5a486a8e1fdsf6303580eaf.2
        for <lists+usb-storage@lfdr.de>; Tue, 02 Apr 2024 16:24:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712100287; cv=pass;
        d=google.com; s=arc-20160816;
        b=QLivAPJnak1zmVdJq/gH94neJkHcmuIX19f46iN6WpKgJFm4VNKoII/vXNKVTP8lIB
         UcqzweH+P7rnPSjTZr3iSUlogbBDy7bXfBqOywRxnp6eOLcngMnTC9cd2JWnqX5b/54b
         Exg8MrEUU48uoTncBwIhg+o1tPcV8TRNA/sQ0Y46zMb8erWMhzSYkbovxU2tdoOdlxjP
         W8zOfC8DFKzfPBJQlhXGELZikUKTkd+OMME5sTMYVL76n0XzTtKLLdpn+WXNWIr/39TK
         e60fQdz1WBBIM06kakkuJY6nxQqmeOoFuffK75UfVOw8NBVyKmVVtGFuW47Mkaea4WId
         g+DQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=Y/YomiQKjHG3PjW9S6nXgO/zft9V+QAx7CPvttyuOPc=;
        fh=OFd+QmLx5mT5rJlZFCMLjLge1oG9Xk0yr+0LREyisxQ=;
        b=zUe1L6cK9uKBCAIPdXpRnGeLdbZY6SB36Q6WTqsYcEykydcQMkY8beBomQqtk8FC6T
         ggytrecygz86dvbhf3goU9zPIo5ITFikH+rGGpOFHq4CscbDJJQxE4A8sgps5jXWNV4+
         wUQmySPweaF1aadZQb0bvCBYK8LcYzAA9IBGV3BKqd5LMeS1PaVLGXS8MNVxmktdo+8l
         2sQmUXwmpkeKKzrYgznpwGWbaGTOnqPzAQVzKwhKMFV/Z74j2DvP8GOXtFeKWu2QbDxj
         dzwRL+jHnlhq3AOT0iKwL075k8kirx7JgtmyPeKCEiB0aqb7hjGwYaQQvHlEpm43kIXT
         75/w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=UDo1c+tC;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712100287; x=1712705087; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Y/YomiQKjHG3PjW9S6nXgO/zft9V+QAx7CPvttyuOPc=;
        b=ZyhiBMJQbXYE3oGcB4AbnyOEoe5us1GLSWpcRl761b/n2Dtlwjx+fk/qrO+/QKLv9o
         aOH9EgpDKfKRN/EglrOTvBrjGTdObY972vqSkERGkHdL3jJIF4obJOiuorkFyaCABgsB
         dWC+z1QZtwFduBRbwbiOWuv8LHCivvDEsD9W4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712100287; x=1712705087;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y/YomiQKjHG3PjW9S6nXgO/zft9V+QAx7CPvttyuOPc=;
        b=lPmvTvX/gSlj9iq+D+u15Q5daQtLdYNZ2y9G/aNZEYKpJ2KunrhfhLrCGMlvQpQdpR
         NtgLI8TznZT0Lq9d9a6FbXaex1LQFhiijbgwAJxRcVtLZAW/vXtzwbbNyZ0j2CNcsMgw
         jELPDP7IcVwEubYlcFdmY/kvqp0lMrRWZ8Jayn4vpUnG72HeCN7On5KfpyDk0bPrKvEQ
         GWvyPr0Di1OwWz6s4+wZFTW5LXUszhmn6JhE1ktUEuh8WhtaWTOnlmUIEZNkE9VBZIXk
         yhIzyrBngANCjWo05/7b7DGNbaL+E3hoL7RW3Rwp/DTGt3W/UuL2rK2IBNNbzXe3qImR
         6UQw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUls4NJIVQO8Vafv8JsX2PfeZCDSutt864O/3XgOSh5QYuMp/MBh8h43Omhrcmd1ddkzWwMIR6lbiNmYWS9rHtPttz9gt5WfENP
X-Gm-Message-State: AOJu0YxVvFhtHgMAP8qjH7tv1WVlXqOcx6CddTxIo1/rlGLiqFhYuIjZ
	PWQCaZpzsbRLvgOl4IO197ypIFt9OLQo+d8nYDZ80JfxQDNRgj4rvMdfIkAMXWc=
X-Google-Smtp-Source: AGHT+IF95aFmVUd4xrCyQ1f+CPluoSOa37yXZPOsTAYc4l33jKfAdsifRUNakJrDltaNmdxnZ4bC9g==
X-Received: by 2002:a05:6820:218:b0:5a1:a7b3:3d0 with SMTP id bw24-20020a056820021800b005a1a7b303d0mr13887531oob.4.1712100287217;
        Tue, 02 Apr 2024 16:24:47 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:bc84:0:b0:5a4:905d:743f with SMTP id m4-20020a4abc84000000b005a4905d743fls908036oop.1.-pod-prod-05-us;
 Tue, 02 Apr 2024 16:24:46 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUpz0X6Wv+CVnjTQiCvS9pkdlh5W7eVeyKMgkr3Y53Z1ZfHOyz/DJqQ2Gmhdb1VhTxnoZElHeOM12B+/p1RrtxW2QeoZERTLbSglKpnp5FzKUC94xo=
X-Received: by 2002:a05:6808:1485:b0:3c4:e387:d753 with SMTP id e5-20020a056808148500b003c4e387d753mr10498271oiw.20.1712100286465;
        Tue, 02 Apr 2024 16:24:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712100286; cv=none;
        d=google.com; s=arc-20160816;
        b=Vy1hdmdrlYd3hyQo9GiS2s/39g0j9CSkcL1NUABf8a66nE6uQL4Pr7jTTex8nlmKDP
         yeba1WOvRPaHsh043TOres+LiqJBfl1oLqrPXAZg/N0LXJwUX3GK+i5nWj3a87wdo7ai
         oNCTYuVWiqZIdiC1Ne3xY85jsrPR/CfnVhddD2LEz6Rx6mOf7u0IvOdbFqrgbYwCwI5O
         NuJrW9E/rXi00hgjg8G7M8AKn9D9nw1gfd1GR2Hh+wJL2PdDL+3s12Xapt83nnDjO8JK
         LpoQctvH7+ESo9lIIokh5FXLk/TIqGFjxNjXmmm7ir2wZF7p/I6vnpWsgqBIrw/y96Jb
         uZuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature;
        bh=xceZTF3us9C+jcktyioPcBuVBkxhcpBg7z1suBd5ATg=;
        fh=Cln+zdpvpqtCiaiy/4Nt50VauPXPoM5yEDNzej7bT7M=;
        b=lb08XFyd5Guf58lQmQGc+rkEaipi/fL9bnkq4lx7BY/J5l9Gw1hkwc+TUay0iVSlGn
         ZoUaH+odHlDjodu3IsbIsEk27DNLlbchP94qmQhhAqlAgsEeAWHnvKFdr4Vw8LK2yK09
         FRytjZUvCRQ6551pGEL5tjeFuAzuQb9RW+b+HGBrEbacXiBnFnJdIQnZEqpHckL+DCRH
         cwSU+7wj/It0RtLCyRx1KUclTo9yTVG2IQi9f3U6S9cTvIAzRfcABl4IizHbO30Oym0Z
         0dIQGGhrQTUxGM9fje23L+7do69Ue+SF1Mgybt4ux+42QrX/BtB9mMu4OKWQQ12gaEeJ
         z81g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=UDo1c+tC;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by mx.google.com with ESMTPS id bx30-20020a0568081b1e00b003c5d2e81429si21407oib.60.2024.04.02.16.24.46
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 16:24:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0C3D260C37;
	Tue,  2 Apr 2024 23:24:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 576F6C433F1;
	Tue,  2 Apr 2024 23:24:39 +0000 (UTC)
Message-ID: <dac7ec14-7819-46dd-82b0-fd009523c743@kernel.org>
Date: Wed, 3 Apr 2024 08:24:37 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 01/23] block: add a helper to cancel atomic
 queue limit updates
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
 megaraidlinux.pdl@broadcom.com, mpi3mr-linuxdrv.pdl@broadcom.com,
 linux-samsung-soc@vger.kernel.org, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net
References: <20240402130645.653507-1-hch@lst.de>
 <20240402130645.653507-2-hch@lst.de>
Content-Language: en-US
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240402130645.653507-2-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=UDo1c+tC;       spf=pass
 (google.com: domain of dlemoal@kernel.org designates 139.178.84.217 as
 permitted sender) smtp.mailfrom=dlemoal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On 4/2/24 22:06, Christoph Hellwig wrote:
> Drivers might have to perform complex actions to determine queue limits,
> and those might fail.  Add a helper to cancel a queue limit update
> that can be called in those cases.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Looks good to me.

Reviewed-by: Damien Le Moal <dlemoal@kernel.org>

-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/dac7ec14-7819-46dd-82b0-fd009523c743%40kernel.org.
