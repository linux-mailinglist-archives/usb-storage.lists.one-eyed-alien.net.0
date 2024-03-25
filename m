Return-Path: <usb-storage+bncBAABBAX6Q2YAMGQEMK7M3RI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x47.google.com (mail-oa1-x47.google.com [IPv6:2001:4860:4864:20::47])
	by mail.lfdr.de (Postfix) with ESMTPS id D925988AD5F
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 19:14:27 +0100 (CET)
Received: by mail-oa1-x47.google.com with SMTP id 586e51a60fabf-229f4995573sf1963243fac.1
        for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 11:14:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711390466; cv=pass;
        d=google.com; s=arc-20160816;
        b=M2pQ7xgeLx/JaGWRqIF/yzP3KxDyhl7mqbZKpjIUAw5pJtZXYYO5ULzKBGt1Ci5wb3
         A5OeGu9fBsRkxNMZZQH5zAfWHLWqEc0IhgJjO+YkMVAkOy3J91cnS1ViTYjbax1lwANA
         Jp50/RHDTIvRux/Ko6oGJhT+ab3OtwEjkhUfDEoOPE0FPgHrva3RrNwbPlBlFOTQEbTE
         TrleGHfDKn3uqF4V+/5NH/GKAcBHco2A/B3z4SZ17oJM+Rm8iVvcFYRAHMvigkNqGTPA
         rgQ8QkGj3kIIypPmE42wSvlTyyGxOmzlsSi4qScuRdigHtOgqRvTTRkUSfhCUVaFlMsi
         6xrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=3QAP6116UJCSGLv0RCmKc1ZvnSFePX3zLGnmUOVrOzI=;
        fh=khMDdtm/TqXca5M/8r6mZY3pt5HOtmC+eKJ/r3Jjrj0=;
        b=HBnSTUC6vrXHzkY68D/D7s4qlq9EV1tfKt3Bg323Ttbz+vPFCMP43YrHUlaWDQpRVW
         /K83hf0cyxUvMpMpgRhmhKIdVZDbY+PjPI6S8PHWr93o7N3CQT0b/Pq5hHtIZd2uDMzq
         nNu4KU6ONx3ac0zvvB6CgbkjgNfmN7wnIYOVKwl/85FuCgn3me4BiLrZHyI0nvpc2HEL
         +HuVdI3ndmmz6WyJzi2SchUDhevT8ZGCyZ508twS8RA3eKSsDcrSvUwjoAXrivgD9HtV
         fbH9tkQY6wrQBDcPNHUn8F6wfbh5EKqlIxFlJQ4PnoPHyXeQYRceXhag6MioNznnZXG1
         Kyfw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=WxcVi03w;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711390466; x=1711995266; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=3QAP6116UJCSGLv0RCmKc1ZvnSFePX3zLGnmUOVrOzI=;
        b=JKxzz2TiHyZbi16lRwW1ovec0+/7sblZG+qCW0sUoCBQMi7zbC7tMlKLhjWyblMBKv
         4ET00/SNPG7Dq8qNDEUD1WpEnDNxdztedH/lSMV7DcxQ5DKcHCqz0aNtkf3jyExkjTE0
         NSKGBinSIPp8uGlp8ZjSiqDoVqWvBDR3jPPtc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711390466; x=1711995266;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3QAP6116UJCSGLv0RCmKc1ZvnSFePX3zLGnmUOVrOzI=;
        b=uJXFHO/eQeEmVlukn6Rft/rls7/74yXQBRiyl5NILnty0erGuaVRc6gjGHpe2BEhmA
         awbgfnlAXLW8hqRoJ1MXeF9gKM+Uls25comlTZXDU+zCsHGIoxQSq0SlLqlZ+NoD4Vci
         hLSClh7SLB4Kk2lbA29L3Jl6J0sLg/zwsfQOV7oQVB7L4S+nHmIHHh/K5YkcbsPM1ZFA
         kNo0GD8eNHrluKEeBMTh4lyTQdD8LTSn/6FsfvH0atd9nIGQcYs7oFZIJxpmJmDMxzhE
         23hojZ86aEegp3TnMus6x5RuIlW0ilFJ6WFY49NLRGJln8aZSgCmQDdFe33noYZvd50A
         O2vg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWaOQJUR97Fc2K58qHZV09fU9ga/vt4i/oku1v7xV51aT0FRdFaTukh37Z1sb66xVb6Mof4UhfBnngQXmUvdWtJ8ZsIJmBjLUyb
X-Gm-Message-State: AOJu0Yzzir3Pibnp+TC72q2GhEngK7kr7yLFqnbTaQPYUBlqyuRI19r/
	CluhFOO1ockVfyh1Lxm7jhK8gBgWKhKvBCZ2KQVSJdXP8krZZAJhhKLLc4OfYWE=
X-Google-Smtp-Source: AGHT+IFUvtCidMWZKeL5Y70WaIutsV2Vd1K6/bWhan9KpnC4yPB1E15+JTvtXTo0prxNuj18fiRsdA==
X-Received: by 2002:a05:6870:a706:b0:229:7d51:dcbe with SMTP id g6-20020a056870a70600b002297d51dcbemr9400084oam.26.1711390466439;
        Mon, 25 Mar 2024 11:14:26 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6871:8ab:b0:22a:4ea4:7df6 with SMTP id
 r43-20020a05687108ab00b0022a4ea47df6ls304605oaq.2.-pod-prod-05-us; Mon, 25
 Mar 2024 11:14:26 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVuE5jmvuqNSddPdJDtbanCdpZEbA7KvPubrrC9Dae4EwynAE+hSE2nCDEDQ9dMC9sTXWG5h1RRmeX9c3bU+2YBA6GiJYwUsPXVmdqmK3j85/bIlig=
X-Received: by 2002:a05:6870:5693:b0:21e:bae6:88ac with SMTP id p19-20020a056870569300b0021ebae688acmr286968oao.5.1711390466104;
        Mon, 25 Mar 2024 11:14:26 -0700 (PDT)
Received: by 2002:a05:6808:1783:b0:3c3:cc09:ef6d with SMTP id 5614622812f47-3c3cc09f277msb6e;
        Mon, 25 Mar 2024 00:34:14 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUjIbLI+uNjC4hq/QjJyJ9E+4BuTbxAfhRHbuUlmgWP8Wz2s0s0I7+4R59Hh2+ZwpcdeH2WqGsUAiDLtmf/P5DkyE6obPA3xx1THeJmPw3ATLnG/WQ=
X-Received: by 2002:a9d:684a:0:b0:6e6:991f:16be with SMTP id c10-20020a9d684a000000b006e6991f16bemr7482765oto.0.1711352054350;
        Mon, 25 Mar 2024 00:34:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711352054; cv=none;
        d=google.com; s=arc-20160816;
        b=NuoO6M9BB2rbAfeE9j8caCH/Lg8IWJoH6NGs3UF8no0rRFUsVhPw95XvHCPZnykPxK
         BHVV6l9CbTu25LIKpPKJ46io2JPwPJvGKI4GysJvm8ubDcxgT34FeTbo/PnqUrKB6wqd
         O5PgDWEgbolKReMOTfqCg77IcSsWJ3ePIBXZiCG45BXphIscY4rHUtmrV8CAKVpyjmqr
         xXOmt/ZZ2iSfXP/FwagyLks0J+M0By9UX+r5ZNxndtFd+oZmi0CAJGNbG0cDkqwm7qvK
         NRdulZoJaMrlCHtyeJxDkERvY37rB3K9ev2VFqodYPjEoK7rZCdOJOCYzu/1S7TE8J09
         EOGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=bDMkhTMRVNmEmmddHiNlZlQ95rtnliPJ2ruP9P2HPqU=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=XCrXDzWhLBvx8xp9dp9k8Pnnkr6GqeQiNk9qTih6tj8IiMSZnNlcYLacIrGoN3yU/W
         5uWXMe95uHBjv9sqbkQjTtPqXQZcqSuXdl8wU1cEw4K9Pp14zo5s/W3dDZQ+fPRAQBtJ
         Hc8hhq5KzF9gTsqeSzxL5uNbrxpadjGq7ftgs0wuyunz1fYQisJLP34bdhZJV1BF5rcc
         2oF0t9cXLNG0enwOhg8ZwFHUwI5IfzaKPYHVSr/tDsbNLRwEalYwemWfBI80stNI9WvD
         3p9NYyTI31vnW/mAU1YccYmG4eBfQPIZFxEhqWAQ6LJZDhHVANfzaDKpiQb+V+kGfxhf
         Z/NA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=WxcVi03w;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id j21-20020a9d7d95000000b006e6b2f1b72bsi1188250otn.194.2024.03.25.00.34.14
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:34:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0DAB260F27;
	Mon, 25 Mar 2024 07:34:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E85F7C433F1;
	Mon, 25 Mar 2024 07:34:07 +0000 (UTC)
Message-ID: <942dc890-9a1d-4008-944d-816f7a7c470b@kernel.org>
Date: Mon, 25 Mar 2024 16:34:06 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 09/23] scsi: use the atomic queue limits API
 in scsi_add_lun
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
 <20240324235448.2039074-10-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-10-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=WxcVi03w;       spf=pass
 (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1
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
> Switch scsi_add_lun to use the atomic queue limits API to update the
> max_hw_sectors for devices with quirks.
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/942dc890-9a1d-4008-944d-816f7a7c470b%40kernel.org.
