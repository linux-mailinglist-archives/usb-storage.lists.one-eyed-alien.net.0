Return-Path: <usb-storage+bncBAABBB76Q2YAMGQET7VC3UI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x348.google.com (mail-ot1-x348.google.com [IPv6:2607:f8b0:4864:20::348])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CFBF88AD61
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 19:14:32 +0100 (CET)
Received: by mail-ot1-x348.google.com with SMTP id 46e09a7af769-6e6838d04b3sf4407526a34.2
        for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 11:14:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711390471; cv=pass;
        d=google.com; s=arc-20160816;
        b=jMiNL2LdRyF5z88nNMRfL4u0WwfxZszzfiAla3yt5/ktObwLg/EfV3yLKZDLED8pqN
         xqoNQ6sFXRPPE4t1+Ly9vneODDhNvwXU2nolA0QVcJIvJQA0Jfezhr235gao7uyl81SR
         wZXoUEaEO9YuQcdomKtlvNz9zWipSa3lVEvEYKs7fKFL8UUAI+9Dq8grzE4YgoLa1ZEW
         9fdfYDd37dRrUEbh/B7bBKlyBvaZF6pHCjIi/rMJyTMyjM4HRuI3IPOBnD7173jMZUPM
         co+qIPc7vDxIqCg7o52G89zAjUb9UJ0aTVQaeU641r5wJ0Hts7w7hHhzg2+yJqcBfm88
         5zIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=AqOYIv3kXCprx5cdspittAQ73Us4LkjNnY5EaE1sRg4=;
        fh=L1NbUy6nm93v5QKj3TGkTxuLrvAVhzuvrYzflgSq5lk=;
        b=vHiRL0DSB2NpRG656V0nyfViaMXmWgHJyy8t/ftRvA7C9ZJVAL0/jjJxLH5aRwOp5T
         mocjpPVwTCsOmkWejy0Eo+Yv97Tp7A3y2YMSzgAPmPvsONF7W1WD36CbPvMIBY/b2y88
         DmqLvEO687GsZ85fhn0jbbIzJ9d48wHnHql1q/ae2HtWvJyRL/T26ybjjzktQKK1Qigk
         NmUQ3dvlCqMLszLZCGRFEEI2qbnMdTfjXWAhBy2inRKTJuBH6w2DgwNqT3/C9Y5156l7
         4EYH8pb8E+pUfpkVKmnhIY47fnyGSOkawsKv8omt0xDGuA7Y2qT1+SgwvJsGu41ueKY3
         +1LA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=jUQCtc4+;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711390471; x=1711995271; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=AqOYIv3kXCprx5cdspittAQ73Us4LkjNnY5EaE1sRg4=;
        b=gh9EX0rnWVWpndWZ9yqR+hVs6ESjLhh2au7P3vuX05YTcJx+m/87cSnU9PLC2bYw2M
         LvRYY0D0UhIVL3Rllf4mrpyeJwlPtxVA5iCFCpMSdFGKu/I1ItNMP+uhVLeJYA1Hn6B+
         L5HV9Wh/3ErTMZ+gUJpWLQAQTRtKWZ2ScBQ1g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711390471; x=1711995271;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AqOYIv3kXCprx5cdspittAQ73Us4LkjNnY5EaE1sRg4=;
        b=Zfq85cTM8G0l3DcSeyW37hvI7n2f+uzMMKgVggipD7sFUrt6BMyhOpy6wypksPTX9Z
         LjDGLsstQC3wEQRB9eKWy0/5z8m5LBzpu+rs7RvKFM6Y+cdMJjUKxWUCrJ2ed2FFmCna
         EH1dHXkx+x6NZ3JuhJsJBodKmr3brpzYsaQpKGDQobo6CR5BPQn52bJidIa9bfHXas2e
         6uUO56RGDfKSmI/KlnG6NvqgpvnGc1F03Nl8ru2ahhg3veewyIj8UeYUwfZIwEfg0Nas
         YLkHCsjwaMPtzEipA0ffCziGry9uhLOkv5sLXdhOfRoICNCdloM2SoMUU9+ay5aI30ox
         irWg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWgnaYnU95D4si0ZxC1y3YGWojC4Apsm8k7ALlDfBiAC7RLBh/2NJ2y52TeLb5k4xdBBoT4N48EK5PzSiYp85vK9CDUSsDyC/a9
X-Gm-Message-State: AOJu0YyxJwuGV78u5ETz2+N6MykkjJ6DYUTlYJfDFXnCrFUygI6ylYB2
	COaYhpJGuBRCa+b0QBn7xkqF5Cgb/ncWBmisWg+4muiXoTCnsNQNKMflMaNX984=
X-Google-Smtp-Source: AGHT+IEXIX8rHfSDZnLpiSeXnBjC29eVblv4440xOSGlTkEx/150yUfx0L0uV9qqpMGT3nTZIvTo2Q==
X-Received: by 2002:a05:6870:a450:b0:229:e761:b914 with SMTP id n16-20020a056870a45000b00229e761b914mr8767540oal.49.1711390471228;
        Mon, 25 Mar 2024 11:14:31 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6871:8ab:b0:22a:4ea4:7df6 with SMTP id
 r43-20020a05687108ab00b0022a4ea47df6ls304673oaq.2.-pod-prod-05-us; Mon, 25
 Mar 2024 11:14:31 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW6j5vjGU5dmTyYbmam2wECDck4ReVovGWqug8tLt4AJZY+BSgjiW1lWgufde/E97IUGqdKSl70+C01p7p8kNymGbxSM69jhT0rvmU18lc1/9CSxuM=
X-Received: by 2002:a05:6870:96a9:b0:229:8165:2683 with SMTP id o41-20020a05687096a900b0022981652683mr283184oaq.0.1711390470887;
        Mon, 25 Mar 2024 11:14:30 -0700 (PDT)
Received: by 2002:a05:6808:2199:b0:3c3:d110:85c6 with SMTP id 5614622812f47-3c3d1108aa1msb6e;
        Mon, 25 Mar 2024 00:41:28 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVKKL0R/NYS/UXpnaDBzVzJKS+KFv6q1LlTMDRKDCFz9GqsT2MnEQ+EdbHBt1hOd81zMZ2rUdAtnFWY7yS+G2cCxXXeiHdLhYwf+96nRTrI7Lnqbog=
X-Received: by 2002:a17:903:32c8:b0:1e0:2e8b:f4b with SMTP id i8-20020a17090332c800b001e02e8b0f4bmr5703953plr.2.1711352487143;
        Mon, 25 Mar 2024 00:41:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711352487; cv=none;
        d=google.com; s=arc-20160816;
        b=nT5GLwPgna0YN2sG1kCKb/2DMMf1faC2JKhZOazWbOyRiAlCMzda+pkKxi+XqGOjDm
         0lEUPwVTzBrMwwuxsPZUhNgyy/RcF2dw/urGvPiHXKJxgw5wUMX8xuxsJqf+PrZnSZvt
         vd5nnKjVjm8iZTDPQ8mWTeyS/3Ijoobz0h0sLPSKALhpIJUBvL97jPnB7wSZfQOuYnPY
         fuWiUMNQ1c6RGS4jYsjc2/G4GeBKR/MuQ0eQ9mZrusAQnbFzreeWprHff4Kq/zL+2GY/
         Vw4VrVE7HVP9IVh+KTGsTkx3wvSeOaNFbyrRxshIolT0TXgUBLejdS5EeS53qGaXCHVy
         MGSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=kIAl4YRWMXh2yS4682/W0TMipGEqDQQu3UHCkJvJ6X4=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=Age3YJ/L8JsX4pLulAi3yF3BN8H+N1ycpZrwgc9bBsG3bFHQvVtd5v8YsO0uAGg4oA
         IG/tJbTVRNaopKr0CDNGxKaLz+BC+athU+bTtplZUZPoAKkDkjSVVGayYHH6gj12lmVm
         xhsuiMDw70sBhoDz9hOEnM607rp+qjaYYMtLnyu9xNGflom6yiUIgD9EFtAHKjekrH3/
         ciiAnYgsfcXImFl/WmuTo3eCdl+OuukZH5nkA4s0aOJDuGYHroBLUIbYbhfSbWGwm0/l
         wsxsLvNvi1LmJVSf5juSgA/okOgZzHsJLvUixgHHP/zTSmI7Im5Xl8cc4fpakJjelpcL
         EkvA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=jUQCtc4+;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [2604:1380:40e1:4800::1])
        by mx.google.com with ESMTPS id k5-20020a170902f28500b001dd6e237b9csi4319051plc.421.2024.03.25.00.41.26
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:41:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) client-ip=2604:1380:40e1:4800::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id C4697CE1079;
	Mon, 25 Mar 2024 07:41:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20D2DC433C7;
	Mon, 25 Mar 2024 07:41:18 +0000 (UTC)
Message-ID: <b55b31ef-05ca-4487-ae7d-6d107c84f76c@kernel.org>
Date: Mon, 25 Mar 2024 16:41:18 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 12/23] mpt3sas: switch to using ->device_configure
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
 <20240324235448.2039074-13-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-13-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=jUQCtc4+;       spf=pass
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
> Switch to the ->device_configure method instead of ->slave_configure
> and update the block limits on the passed in queue_limits instead
> of using the per-limit accessors.
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/b55b31ef-05ca-4487-ae7d-6d107c84f76c%40kernel.org.
