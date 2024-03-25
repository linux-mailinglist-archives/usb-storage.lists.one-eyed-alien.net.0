Return-Path: <usb-storage+bncBAABB7H5Q2YAMGQEQRWPEGI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc45.google.com (mail-oo1-xc45.google.com [IPv6:2607:f8b0:4864:20::c45])
	by mail.lfdr.de (Postfix) with ESMTPS id B48B188AD57
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 19:14:21 +0100 (CET)
Received: by mail-oo1-xc45.google.com with SMTP id 006d021491bc7-5a5547dbbc3sf1053502eaf.2
        for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 11:14:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711390460; cv=pass;
        d=google.com; s=arc-20160816;
        b=FtufeQR3XmevuNsGehi+w3a/Pi1k5BgtxyFukSJPzOetfYMDX/JNvGN/l+9NUHx/wO
         EYFCSu5ThpSg9JhsJVKa50Lv7DI8j6tO4cAtaTDfi+8T18bQXSvbnBqQyNJPcwJ33dPH
         vxsN8sBHliijisICLB7f63Zcd/Uq7SkdmPTEtKO9y1858W6eFDXQG7pX7R+nfLE7dKs+
         fX0HrRw+xwNhDDzP5Wmag102BA+6zUhoJinEBnpsYydrGYH88b4FU90SmIfWDEjKnDaE
         leDyn4zIujRIY9TNKW1pEpY7AnB45rw6VGRpYhP0ZlmID+UQ7yUqL789XkTry0LAomKy
         X6nA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=IWdV/OkXQCQxeoHjsM97EFv+7rkUZQpd0N4Rw4LAids=;
        fh=+Ua89Hbh7bD5iY8OOCCV2C4MasK8Nx+HQhX9m7nVVs4=;
        b=xjl0LU5wFbtopik9sXA4SsiytEo6QB95ipWvS8AXDzoEdzzJJAOYpH4Jr+cLcxJznV
         rHicaMpTqJIYMTBPj9m2FXLcS2BEvFQjDbXmlhpr9Hsbj/mpexJ+eO+u7xe3yFeF7ZKd
         sQUWeIDeo3q1+tCc8cnUBZm4d+HQ4rO/BugZqjC+AGCNj8SXKmWPetdOKyXVuxEHHFjO
         xL1W6h8143ZQvv+kyKd1+NDryFoeWFgx+4CAFFs6tjeOmuZJm4KYXv7jPCEtSpSeoCOL
         +w8+GHNUdvmRg2QpE0i+V6CTtLU2kICr0OTzHNf3foKM71f/y7zg6trNaGxc+Gq5r9NB
         7p9w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=iSghu8mR;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711390460; x=1711995260; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=IWdV/OkXQCQxeoHjsM97EFv+7rkUZQpd0N4Rw4LAids=;
        b=dojA3JnjlJoGwQ7FV/2YvP5kPAF/TmQT9DXEGNhTdxzY4+L45rUVD022z3VkM+B0Fv
         meAmu8spy7ETPdIDrr8bYeqXewzFSAem+td7yKXiraNGqtp/d4Mm1IWHKuzVeV1KjR/1
         WdDscskQ9wDbpD1/1wkO7FWkE5x5p62u+oS1Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711390460; x=1711995260;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IWdV/OkXQCQxeoHjsM97EFv+7rkUZQpd0N4Rw4LAids=;
        b=X+/0x+t/Bba0vGmfAUOLHQxSr3geVHTbIRQb/MZtR14yX7n38lDt8GVDOfAelCT+F6
         rlmfsYsXqiVbSkmwOFqImQC4P/AHxNF2Z6W1oSGauE1+vQr2IeV1F9pTnXDFpGbq6zfG
         kq9U2Jw4VuQ+db+ONobSVYfHqYL8zJGxHwavioiPXUw1wIIEfi0/EDg/lU2VUp/fvZBY
         2lQdol4FbV3FchrhqMx9TCYCeAJiax3R+fzPCfWiZcI7xiAYnNldnEG++w2mdJlxSGoY
         W6z9M/V57klatekZIV/5HSQkQDyUpuzaDgKSGUSRpSw8jkSl1Pp4PpMaBijZJRuQe34W
         m3Aw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUFZDZEhd54t/KDG2Zt9wSowUlDkUjpipwQe/4j0nzf/4kS2v/TD7qEWUDxgCNO74i0T6WqNCDOoR6LF5DRPmbUtUOQrOo2vLZg
X-Gm-Message-State: AOJu0YzwgewxCmwllGK6MIjQa8CnwFUMzhDyK8LY352e49ru7pQmhXyy
	r1zu5+UorUbQzD7jnbtTawv9O9jXCfzTQEdOh+0n7SfSuGqwLHRbV2lBbgvops8=
X-Google-Smtp-Source: AGHT+IHTLxZg5QvPrsoqwVbsfjJgKkOlJIRAPW7FgwuvS1h0QymeEXOc5QGRtev+M+ThloKwRBFJeQ==
X-Received: by 2002:a05:6820:2103:b0:5a5:247e:147f with SMTP id cd3-20020a056820210300b005a5247e147fmr6924063oob.7.1711390460546;
        Mon, 25 Mar 2024 11:14:20 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:c90c:0:b0:5a1:11a7:5d2c with SMTP id v12-20020a4ac90c000000b005a111a75d2cls3529005ooq.0.-pod-prod-02-us;
 Mon, 25 Mar 2024 11:14:20 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWdXbQWpmxRnFPmtAA0CWH7xIDVfvTvTR2ToZAD2jd3JMyhFm+3uxte5q56V8EM4IJ7wiOCcC3xkkBSYUmDLavoQOT/aH4+8JP2kapJypGbRdRtx1M=
X-Received: by 2002:a05:6830:2b08:b0:6e6:a9af:7977 with SMTP id l8-20020a0568302b0800b006e6a9af7977mr204371otv.1.1711390460163;
        Mon, 25 Mar 2024 11:14:20 -0700 (PDT)
Received: by 2002:a05:6808:2199:b0:3c3:d110:85c6 with SMTP id 5614622812f47-3c3d1108aa1msb6e;
        Mon, 25 Mar 2024 00:17:00 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV0viqRg72zaMcVOQ5CS5Kn72XOfVCXrKZqSVOJWA32pBWETtlrHBcYUU0JwvK+OzLLZ8TrCldQRFgF1s+zWPffa+akEIOs/Fv12r0CHCadp0m8OTA=
X-Received: by 2002:a9d:634e:0:b0:6e6:d010:d5ca with SMTP id y14-20020a9d634e000000b006e6d010d5camr3329453otk.14.1711351019552;
        Mon, 25 Mar 2024 00:16:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711351019; cv=none;
        d=google.com; s=arc-20160816;
        b=es9RKtzuzhl/fifV9pOdJTIuhR5lgYAEBYSwYrZfBzlGeJrRY0QNbuY6tK2vyPYDTr
         JzJI465jhAQwA2cB1cdmTYN6uR0HbTFAz1Xu+TBeDyQd81h+wHkYstpNahR/lprmsryj
         tvC5YEmceBcAnloIZargj4o9z+pPwzKypAztFL8NASl9HzsSjY/3YRnayxjWU+uXNNRQ
         1u0F4gTRmUDIy5LZW3XyyEJJ6Z7feZ/c/YfIwb2zHYOyB1gia6C7fDhgE3mZJ4CJOCy3
         ZPqjboOb9mqLXraEUkL5K/IO1Fnq55uAWpvEWK1S3rlkFvYnlzSWpSPMOcK2QXkdJBso
         Mmvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=Y0tRwSrRmR99zfd8MNpAiHASOpFFxXjaHT6Qdiy8l/4=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=bdvSCJwfh97pyG6j0cEvV6eqCF/Kie9gOix7SV3DQ2rUWvsjJyEDYLl+2l+15w5ogT
         zYOy1gw5Io4PltsUSwci4aMCjVQ4U/3FuvwpZ4fendm2o9WGa3ubfxFy9ApzKWLLw4nB
         FgmFeaAy1yghIymLz9lSdz+dqQS4slE6y6TOnwCmWngrE0GwlwWtkIupcU0mqx6yxz7S
         I45xG00h9h2nR2ISYbjUq7Uj5sPaQd+lc6dhRzdwJDBrrxQPCKRV86QArlgOPeDgEU6n
         NMIyrVyMiZuDyiM5U//nmqzCiphxyepyWrIONaTvs7vi7qNkcAMn7Inp3nOc3l862eU0
         bnFg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=iSghu8mR;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by mx.google.com with ESMTPS id c18-20020a9d4812000000b006e69547bd00si1223153otf.93.2024.03.25.00.16.59
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:16:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3550060DEA;
	Mon, 25 Mar 2024 07:16:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 153FEC43390;
	Mon, 25 Mar 2024 07:16:51 +0000 (UTC)
Message-ID: <c9070d06-3095-4bc9-8b9e-ce292404362c@kernel.org>
Date: Mon, 25 Mar 2024 16:16:50 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 02/23] bsg: pass queue_limits to bsg_setup_queue
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
 <20240324235448.2039074-3-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-3-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=iSghu8mR;       spf=pass
 (google.com: domain of dlemoal@kernel.org designates 139.178.84.217 as
 permitted sender) smtp.mailfrom=dlemoal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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
> This allows bsg_setup_queue to pass them to blk_mq_alloc_queue and thus
> set up the limits at queue allocation time.
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/c9070d06-3095-4bc9-8b9e-ce292404362c%40kernel.org.
