Return-Path: <usb-storage+bncBAABBAX6Q2YAMGQEMK7M3RI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x346.google.com (mail-ot1-x346.google.com [IPv6:2607:f8b0:4864:20::346])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B76988AD5C
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 19:14:27 +0100 (CET)
Received: by mail-ot1-x346.google.com with SMTP id 46e09a7af769-6e6abcf283csf4705390a34.3
        for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 11:14:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711390466; cv=pass;
        d=google.com; s=arc-20160816;
        b=oXRB/AvnYvjq/dtMy7xGuL5ktL2iL9tyFvl4p7+1aF2EL6niYMLvDX5lvO1VakNIRH
         ckJiJ0j3iV3AqVKTeV0eDX+dl8r5VMq15ShmcA9eDTE87mjTt2JSsK7hVFM5G/7HA87r
         Uxit2GpbkvtsldRszW/XPShVNbHVrD/5LHVGD2xXvkRBorMVsKPblyPl5gyEgZIj5aXP
         w7xaMSDKLNHrKss/FNnJxAGGgNamx4ramfIbswv4wci4uyDAyBOGpnCFYSa4xZzfk84y
         WUtQV+Itus7m7ny9U8NotIiny0ZuSVNHCgkWICX3vrJLkygsaId0mF39hVa8gBpGqJEL
         I8rA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=kyoDY40yZ+HBUqnBJ3NdAmr7jkbhUvHwkzWyI1BSX9w=;
        fh=vX5hqydi1SV5/mmbSPB35l4oATTHixn0uz2qLYkYWTw=;
        b=iSYFnQNN2rqHq1QOcCpYCYqcMk0Hm5LkLPkJeBjNfBC81IpVO6lINtBgbN0bEvE1bP
         ij3BcXnpFsleuR8UoHi3vtEN0+SQuiP8D1TTojOsSsuWB+rduPWxJ1QdcfWy4tDJQ+5v
         /0/g+WtcSrxUDGXMhf8FbWU2nNQOQjxhTgq8uCDNM5UeteYzE1ScREiLQBHbBws1G9gV
         e5yNUwj7jbHu5LnNyybT1d3deaKVspHwIh1x37MTW7ymaDPnTosFgi0BStrpEIX168Bz
         MP4di+VezSTlWgqJ8zZxgy6w8BSruNM3H82TvyXyOG/DrSplcpq25ZihP2/5DTPRl925
         JWwg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=RM4sFH01;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711390466; x=1711995266; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=kyoDY40yZ+HBUqnBJ3NdAmr7jkbhUvHwkzWyI1BSX9w=;
        b=VUM6XBiE9TA2PRGjcz3nztRByDP8bj6ff8ZsmZZUybfAhGdR8XI0Ow3wBC/DZbRbh2
         KTrOnR2WGoBL/s738tdprKswixQhfa9Wd2O5SSBXzTORQIQPuxlA6cv89Wqr6P8KOnQH
         gwIteebsxIW683VA0m/0isdYoaXvhwqgdaB9M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711390466; x=1711995266;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kyoDY40yZ+HBUqnBJ3NdAmr7jkbhUvHwkzWyI1BSX9w=;
        b=k+NYyfHIQ63wuCgPbPYYVP2NM5mZ3g4X6VEkMWaYljI1qren/2r3Kv1PNvNG/psItN
         0EkKT9x1vIuY2VKWkCSpY1V1xGQVIxCEKnavQRIibFlxIOs1IiqFB+XT0MipbIdHDNnG
         5E7mOOaBlOwA1jCqe95b4o82WDGtqAx+xX3uRZUvelcBXkQHg0K0S6Qt7aq1FBEPf/jk
         vvqYrxphJvTsNO22a4XPZlZumZ6STpVJ0pCdEotdG9AM6Tm2uHgCo5JekHrSsTJN54xk
         M5qhiOm9uxgE1RnIRYPpg1lsqCDeeZN0edOL7bTCa+1LkAxRAzgykAsWYXWiPw9xO/sr
         sMwg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVLxbzqvJQ9mpHFqqqMcLIuPRF/+FeqLwK0gffTvp+8A4TEqZKwku+I1bif01vruzJlb4ZJ+YS2QdiLxH3SwCsM4fi832eADQ5C
X-Gm-Message-State: AOJu0Yz+tkg3uTXPrG4zBOmywkcMlo8mRa3shqo9fFXFfesHfFCeJ9Zz
	UsmS7lP4oOMfdZtgZABbLiDQjgRZqBUTK/lrQwdda5P71OQsaESLl7+2DZDz4HI=
X-Google-Smtp-Source: AGHT+IGhokOuxKC0Q2VuE4IfNfDOAydm5ueLGf1lSFDKewwsdu/3Doi6xpEUVDNInb0HoP0XoAZSxQ==
X-Received: by 2002:a05:6870:e310:b0:221:b185:f8b6 with SMTP id z16-20020a056870e31000b00221b185f8b6mr7830628oad.36.1711390466493;
        Mon, 25 Mar 2024 11:14:26 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:eca9:b0:22a:3554:11c8 with SMTP id
 eo41-20020a056870eca900b0022a355411c8ls1855535oab.2.-pod-prod-03-us; Mon, 25
 Mar 2024 11:14:26 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXw2tVFDmNvx19In74bVuCNSgMKjZtZrxj8XkbbpTGyO2aiL4vl7HKJYAXyaNniGuytaGPB4eLmJRY/FUmrs3Uo62Wews1esJMY7jdL81DxpGibH3I=
X-Received: by 2002:a05:6871:b21:b0:221:c9ef:31 with SMTP id fq33-20020a0568710b2100b00221c9ef0031mr28648oab.3.1711390466126;
        Mon, 25 Mar 2024 11:14:26 -0700 (PDT)
Received: by 2002:a05:6808:2120:b0:3c3:cc75:72a7 with SMTP id 5614622812f47-3c3cc757394msb6e;
        Mon, 25 Mar 2024 00:31:30 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV7cSlP0TP6tbFGAm/PUZ3SA12bVg4K61dIDmWdaWeQF9bdhd0sHBuk+cZqcjJvH5cgOwYddIEqO9FTTKil7cdFlkRv9pr3xxq0ORvcb1gbYvHwllc=
X-Received: by 2002:a05:6e02:188f:b0:368:8d1b:8520 with SMTP id o15-20020a056e02188f00b003688d1b8520mr3109444ilu.1.1711351890051;
        Mon, 25 Mar 2024 00:31:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711351890; cv=none;
        d=google.com; s=arc-20160816;
        b=ScyLfNp/+lYzUKUDUjmm8ZxeQHyiBjdv0jeuJR59KW9EzJQYpDoJocQBJ7Ty6ZhrOJ
         wueSDi1iMApNpqqBgg6w85cHLWBTSPeE+cIKJMSLsGuVXVSeGdtvrYaOKBIS/BhpPyy6
         KuQZBknn3NfaEGgqUpz6hmKWWqHIqhiuX4cENZ/qPHMiH3kdwc75NE/oz02L7dgsRNqi
         HX7okiuqi+XUTweceWCMJ5zv4qJOBPEgc9wlzCv+BKRRLHilnzSQHq9r7wG2J6fHWo2L
         atj7Ua7xZJic0jbOiIrsRrPtRkmy4Tn7abi7rRzamiZ9XaTyD1iY4Xo+yO92BuRAtyhS
         k7hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=eh7Hl6LQRiOjjb/MATGWxVsLLJgDy/tpMwxUGE23LZw=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=uG5ef3vj+vKWFmpH2fTT6tb3avR/N5a7+mrJIOT6RYz4dVlBECUzakcVbDmaKxVkrl
         OHNoZsy7ZDYa73MvO/0YhlcP3vMO34wPcdWDv8bQuxsyfGoE/q1WJnsNnQaSKHcveII9
         oK4xQ1uN6I/YrhsG92H4paZK4rcLXsSBU6qYKBtkXtV9jltAnTz+DZUmBIofbjaXcfZH
         hWnCO62dddkfS6rUzyfrUs6lqQJB2yCPZhOpITbpvLvXPJME/faVFAj5AntyfyDEOuP+
         ZiavD1cRSpDJ/ixs9ZKD8S6DtBDeS1IG9UShS6V++3SMA0hT6ClWjPn3oO/fUv9mSR0p
         aDzQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=RM4sFH01;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [2604:1380:40e1:4800::1])
        by mx.google.com with ESMTPS id f2-20020a63de02000000b005e683d7391asi7096119pgg.470.2024.03.25.00.31.29
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:31:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) client-ip=2604:1380:40e1:4800::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id AA7B8CE104C;
	Mon, 25 Mar 2024 07:31:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E082FC433F1;
	Mon, 25 Mar 2024 07:31:22 +0000 (UTC)
Message-ID: <0fa3b0d9-d6a8-4427-80a3-616e54987a77@kernel.org>
Date: Mon, 25 Mar 2024 16:31:22 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 08/23] ufs-exynos: move setting the the dma
 alignment to the init method
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
 <20240324235448.2039074-9-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-9-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=RM4sFH01;       spf=pass
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
> Use the SCSI host's dma_alignment field and set it in ->init and remove
> the now unused config_scsi_dev method.
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/0fa3b0d9-d6a8-4427-80a3-616e54987a77%40kernel.org.
