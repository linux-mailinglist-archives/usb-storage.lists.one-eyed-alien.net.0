Return-Path: <usb-storage+bncBD3JNNMDTMEBBPXPQ2YAMGQEFLMRBSI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D7188AC13
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 18:43:29 +0100 (CET)
Received: by mail-pl1-x648.google.com with SMTP id d9443c01a7336-1def93f4fa7sf36935645ad.1
        for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 10:43:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711388607; cv=pass;
        d=google.com; s=arc-20160816;
        b=u1ei9oskJR2aqx4KeTgai/V/8bdUgplxRnTZzUPjOqOcLzYJenJHij61mPzSSt0NKn
         4e39hPy5xjYipMpuwQGIdx5jqNdn7AVM5iigcVUx1c78YKV9A5gb3f3a1Db0TC7jrqdd
         9p/DmNrCWDG+tzqOO6OV7iMlFOMt2AUfglWwJF2gjI21leXPCzUZS72SZL5bBwmwNb0m
         oaeEAf4v6eAlLsS/TGABowrPjqdqPxApmsW8SXOYMZVhYJ1FR4kFyl7IEbA0rtSxarY+
         3+ykKrnzI2DhteIJRLEMLQc5+mORK6DCWhNJ7HcrrHczfpQI/iUbzsE+Rx/quQ3/O8y6
         9O9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=LyR7ZO0432DxJ9RGbAuSNTJKPdNDrS+Xa00iIBELFGY=;
        fh=y/sy/r5CfJUJLfFTuM2WE5rVGzIpDKZwY9kthNv+G94=;
        b=k0XLF5ufrov/ZAp4xunKKdLidCJjJLqpEXMC9x9YVVolhkFsYyqrBcbPdb9+XWzJqf
         lHLmwpaQKd/aj+QKW85biZ2jU+8QJsvO9G+8kpz5i7hA7/e/2RWNLo4CgIkjJgNRCI9S
         EQ25LQjhUrRn+IJHVQ6shbv2oej5UIcS/ql5U0V0WD31L0mh3DDqt7QMGYzDC3p2BhO8
         GBaBu/kkKPCLOZyTkVhwS1UCtnVXeBTP3DaiorlK7dU8yKv6WYSEaTPiwv47wt1EGjja
         RzA4eQ9iXpKN0ecI5P1uvYx9hD0HHZhIAoydpItqCvc10WC4QndJw1hQRkSZhkMUhPG5
         16Qg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@acm.org header.s=mr01 header.b=yEmOz93X;
       spf=pass (google.com: domain of bvanassche@acm.org designates 199.89.1.12 as permitted sender) smtp.mailfrom=bvanassche@acm.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=acm.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711388607; x=1711993407; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=LyR7ZO0432DxJ9RGbAuSNTJKPdNDrS+Xa00iIBELFGY=;
        b=Fm1U4oBhMkDYADMa2QpbL09RGjmd/LPJpbH3ZQgZWjS8eh+8n2tVKPfx5OXdQW+F5f
         6AWDIMvgvwH2JsxNcnIl2GM2+soBMNFQk0n72wCiz1pjI3J8XqH5XMiAhtzYfHiDYtaq
         UVsnzuAXcrDSRu3ordFSQYmYwiXyWzFMkhKcY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711388607; x=1711993407;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LyR7ZO0432DxJ9RGbAuSNTJKPdNDrS+Xa00iIBELFGY=;
        b=ol5ghcUNI680LMIF9ubJm5TxMN1unkVPq/qEkSFibrCReCfHDO6+JMaRBSedfCLDFH
         VBgHsB1uuCwVMW/jz3uIDLspY+DD0aM86/ahGA3FQaaAJC1jihkEt51cZqOb/JmwDDuN
         ZXNsFisTDZy1gQoov8zZ3VgRCNhcncAyOZTP3f0ixJMLhCx6vfv0/IYHFPw5V1MgfRaG
         yEEUNp8S6r77ipRy+xE4UO+T6Sy81xPXIcsNiXOFFtOOEV08i2FoZcofQ62Wxo8j+cal
         vGvROON4rfPctvE+oTx7HRCNDG/NKw0ZtdcSNJxudxC8qTR/3m2UVWVtLLpU6SIgzZsm
         /wbw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUH2u3zF8w9EMqh/AD0WSJMhGrufzfKgELMeVF0DfzmaqqkBdzV/QvjnanllYEsrByclrV/nzXn+w+6t32jzvmvmbsWh/fzPVIQ
X-Gm-Message-State: AOJu0YxXVWY9rofcFjQUAWKPLGNJ8Mx9y8l12Dy1/0XJIXlcKBWaEXxV
	TRNjlU27xXr3z4z409uG9C+gQzwb2Ii+A0c6BuIAXmdugIfSJNz/dzwpdPWbAjo=
X-Google-Smtp-Source: AGHT+IHtXQkpWfWna/gQIKQ0WaVGtR2SQUSBStP3kUXVTYZbB3RpqkAsrt3CY7tbRzOI+ZGVjeMNjg==
X-Received: by 2002:a17:902:c20c:b0:1e0:280b:8387 with SMTP id 12-20020a170902c20c00b001e0280b8387mr8040235pll.40.1711388607120;
        Mon, 25 Mar 2024 10:43:27 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:ea06:b0:1dd:ba2c:c1cf with SMTP id
 s6-20020a170902ea0600b001ddba2cc1cfls3810859plg.1.-pod-prod-06-us; Mon, 25
 Mar 2024 10:43:25 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXu/vpm2NxUM7Op9iOAxuvqB7GxMKCAZyuwD1P7t+Iyr+RIMW/5hwxCNHjM/G/WQcR1cIrL8hMb0ssbDfAQd7L/sHTYDpiGpHTC0BK3xvcumUk+8Hs=
X-Received: by 2002:a05:6a20:7349:b0:1a3:c4fd:ca03 with SMTP id v9-20020a056a20734900b001a3c4fdca03mr5841328pzc.7.1711388605589;
        Mon, 25 Mar 2024 10:43:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711388605; cv=none;
        d=google.com; s=arc-20160816;
        b=Pr62Gy4sh2OpFXR8TJ16kzEiRnIGojNDEyo+5axzRtX0S40m0zmqCa2dystDyuaxus
         ewwfibLBVsJDokCxw5nhUZb9oiJxvOS7YTQ0H1Zr9SpCZ7uAHwqIhKEIPRepf9YAVmAC
         +s9nOVQe7BKZkzuHdN0e9bupnq8oLh3zESMa3hjbMmU+mf6G8yGaba5H953+zbrYUpGx
         tR0XwO+osqez11Zg52V9RR7N8Eav08W9xJLk3sn8aeQuoQ/kRyS8im01uyKSGPvKLaJ5
         WjmSeM8uv7novokYfnVAmFrYFfT1lrSDOx99RP11l++0i6d9dfNY6a5PU010GnHUtkMb
         8SXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=KvNYZd3AQJEKxzKSsUqYfPUgEx64KpoOhil2sUQcMcA=;
        fh=ZF8T/hrxrX+7Ws2prm5mPVJd75XGm8RH7SBtPTVK71Q=;
        b=TxitHthkI+TrR9JjtiBIITgwbfLO+8/Cp5WYADluLiC2wau2Nl1cL8a/rMeebd3JCV
         L6tXy6F/mSq8Yl4En8gwUlhv9L90aIlDY+2nQvUREGCc6vIgEBMYGDu43qsdT1IQH8/J
         leWpTPwTem1mQjSMpflrRU8oA2fWnY6glUEZjItQPWakPUz+Qb+cMSCRjwFBRBc54lmy
         jSDP9OLXdXQDAWp40wjlBuxWFUtKwKHOm27zLcrjcsKP1rVKUtIUmjFLZx1zxX9IpNDO
         t0Syn3qGGfL3UT+/xOBhcdAbr5OTzVTd0g/ucVKReM6cYdofKgEQM7EMSaMZQ66bmBIc
         x5NA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@acm.org header.s=mr01 header.b=yEmOz93X;
       spf=pass (google.com: domain of bvanassche@acm.org designates 199.89.1.12 as permitted sender) smtp.mailfrom=bvanassche@acm.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=acm.org
Received: from 009.lax.mailroute.net (009.lax.mailroute.net. [199.89.1.12])
        by mx.google.com with ESMTPS id e15-20020a056a0000cf00b006e6ccd6c79dsi5495745pfj.291.2024.03.25.10.43.25
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 10:43:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of bvanassche@acm.org designates 199.89.1.12 as permitted sender) client-ip=199.89.1.12;
Received: from localhost (localhost [127.0.0.1])
	by 009.lax.mailroute.net (Postfix) with ESMTP id 4V3KzK10GMzlgVnN;
	Mon, 25 Mar 2024 17:43:25 +0000 (UTC)
X-Virus-Scanned: by MailRoute
Received: from 009.lax.mailroute.net ([127.0.0.1])
 by localhost (009.lax [127.0.0.1]) (mroute_mailscanner, port 10029) with LMTP
 id 8WkJ3RETGwdw; Mon, 25 Mar 2024 17:43:16 +0000 (UTC)
Received: from [100.96.154.173] (unknown [104.132.1.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bvanassche@acm.org)
	by 009.lax.mailroute.net (Postfix) with ESMTPSA id 4V3Kz34YD4zlgTGW;
	Mon, 25 Mar 2024 17:43:11 +0000 (UTC)
Message-ID: <26f51e14-0625-4225-aaf0-f4f7bff5c2ba@acm.org>
Date: Mon, 25 Mar 2024 10:43:09 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 04/23] scsi: initialize scsi midlayer limits
 before allocating the queue
Content-Language: en-US
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
 "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Damien Le Moal <dlemoal@kernel.org>, Niklas Cassel <cassel@kernel.org>,
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
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
 linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com, megaraidlinux.pdl@broadcom.com,
 mpi3mr-linuxdrv.pdl@broadcom.com, linux-samsung-soc@vger.kernel.org,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <20240324235448.2039074-1-hch@lst.de>
 <20240324235448.2039074-5-hch@lst.de>
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <20240324235448.2039074-5-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@acm.org header.s=mr01 header.b=yEmOz93X;       spf=pass
 (google.com: domain of bvanassche@acm.org designates 199.89.1.12 as permitted
 sender) smtp.mailfrom=bvanassche@acm.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=acm.org
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

On 3/24/24 16:54, Christoph Hellwig wrote:
> Turn __scsi_init_queue into scsi_init_limits which initializes
> queue_limits structure that can be passed to blk_mq_alloc_queue.

Reviewed-by: Bart Van Assche <bvanassche@acm.org>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/26f51e14-0625-4225-aaf0-f4f7bff5c2ba%40acm.org.
