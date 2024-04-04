Return-Path: <usb-storage+bncBD3JNNMDTMEBB6FZXOYAMGQEXEVPKQY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x247.google.com (mail-oi1-x247.google.com [IPv6:2607:f8b0:4864:20::247])
	by mail.lfdr.de (Postfix) with ESMTPS id E4318898CDF
	for <lists+usb-storage@lfdr.de>; Thu,  4 Apr 2024 19:01:45 +0200 (CEST)
Received: by mail-oi1-x247.google.com with SMTP id 5614622812f47-3c3e440c4ccsf1952042b6e.1
        for <lists+usb-storage@lfdr.de>; Thu, 04 Apr 2024 10:01:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712250104; cv=pass;
        d=google.com; s=arc-20160816;
        b=O5czw+z0JNBfTDEAy8ExLt3IjhAB29WskRBM5pIiR6juXbFhY5kinnEyhXSMNav06S
         xoRncoMbhwG9QFYsdSVin6lSjDOP3BRgPNAynMV7ekyTnndTqy5wcIQvf+uaklf1gepx
         TQGt8PgI/7UGynA6hczFSbZkuo1VWq9NFpG/J86oiyXu+LGpEooyGeeOHmyrsnamPJ69
         7MINPATZV7Ka0RPg2MYyedcsEYWy7+/a7Or91t50I8blpR42xNwORUI5hjwTRcu7SZKV
         Z9MaqqWEJucswqdbLm+K7cSgLTje2hmlUQIEN0h2xHIsoC9N8lrVkkNJ1xAS8wCuMaQ4
         BMTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=Cc9e416NsRscp0+WatLYDK5X9cbzoU8rZI2cQIa5SwA=;
        fh=QsoHRAHU7YTUaDu6sudBSCs8Z8NK071HIPPTNTZKvsc=;
        b=Pewi2pjenZVwFc1WBlGXSFMCGviwTtayysRxEuCl9k6JCKeDgPZhNDn5XPN8Yk+9NK
         +oYUg84UfnVdLwUZcuNtdv06h3PIcWKL2EvgcGxrAGx2C98mWymIIMkyG7mehHWcQYQN
         XhUzpQXGlgZ4hChAEej3iYTyBvLJh+5cs37T43QxDpkVgYFsnVOH146GjPPd9DqAR/TY
         1gt8LEyImyFyOuxvykATW2DICNmR8EAyrbanq5LghQQSlA3BIQQPrRd54FJ1VLvilwBR
         pg82Z4exJEtcwyXr43aFfBNdBeC2slF4ALCvPwEQ1yFojNaaNkIlLtSF+Taun9UD2Mll
         9NTQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@acm.org header.s=mr01 header.b=NQdmCDcT;
       spf=pass (google.com: domain of bvanassche@acm.org designates 199.89.1.11 as permitted sender) smtp.mailfrom=bvanassche@acm.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=acm.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712250104; x=1712854904; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Cc9e416NsRscp0+WatLYDK5X9cbzoU8rZI2cQIa5SwA=;
        b=PZ0RHYG2UBhjFvXBrX3NJ0gQnFj9aUIlSq0T6N01iuTAcZ9MQnsPQ+BViovHQJoZ14
         RAdsq6tLPofdlZ6BjYIjMXrQGo3LabP0oCi/2vsjUTAYxxyOITqyVlwiBvuLuWu6TH8X
         Ugf1Oi3xrGPwClkSMrJIOHZEqu488eN2rNVZI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712250104; x=1712854904;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Cc9e416NsRscp0+WatLYDK5X9cbzoU8rZI2cQIa5SwA=;
        b=B9J2ZYYKgpiaYWIRVY6L+EzRM1Cx7XngXYMWnG9dkv3YxDAzzKKIv207OZ44/ymcU1
         aJbrOv6Yo7Lnm63jeOHVG5zzE0r5r2ooiWUuyBZQYaMPlQX4Jp53PQHNqbPY2b6rgRut
         RSQ/Aj6bdgAq2kLeNBJi5/6pv3FJHQ/xsBub3vRgx4n7sXsbzapxAdR5HY4I58zGPKRm
         2Pi+z3B2fDeV750Hoq34dMUt5BbVzl1AC0a7f8m4gCCiS3oLLInGA30bocoqfJ2alMPy
         8b+pupNvmZMmmfZLfwHaTAJRVJxYELbPxxbqpVMlcKB5Abuv+sGkTKRNQEspbFQvdcLb
         ISNQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWIy+4DpxSN4wsXmcK+by7pK6RpMfUWFAIFEC8G5iE4ZgNiAyWayTjKvWyp5RtptV8ZPik8Ew4B6b4a5RKYLsOF0ed5jmwF4vOX
X-Gm-Message-State: AOJu0YziHFNfgtFk1AXncG0lW1mAjWkqT9wLTyrMYJJms5B1ceB1+KvJ
	K9TJffRJ4f5/u3JPrbVYsiENTlyFZRTqJObEuf4QobMvCMr6xqZUv6JvP8+3KmE=
X-Google-Smtp-Source: AGHT+IH10SkdG1TnTOTZ6Jwg2aCWHgW6Ys0HyMUBiOrcuUEJ5AqwgNyUykW4bUbv5u5DEEkitGBxNQ==
X-Received: by 2002:a05:6870:972a:b0:22d:f5a1:65ec with SMTP id n42-20020a056870972a00b0022df5a165ecmr83810oaq.0.1712250104661;
        Thu, 04 Apr 2024 10:01:44 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:c908:b0:22a:b101:1bfd with SMTP id
 hj8-20020a056870c90800b0022ab1011bfdls451590oab.1.-pod-prod-00-us; Thu, 04
 Apr 2024 10:01:44 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWWKNa9ryAw5k0/f0Gu8FeeJuEpKW+zZFZKWNgO+bBjFgaVkT6a1a371k4lJ+7toIkOwb1dyftzSn7INa7UTiPLcXhauQwRslMwhslpq5EB305F06g=
X-Received: by 2002:a05:6870:b28c:b0:22a:76ac:5ead with SMTP id c12-20020a056870b28c00b0022a76ac5eadmr58692oao.1.1712250103860;
        Thu, 04 Apr 2024 10:01:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712250103; cv=none;
        d=google.com; s=arc-20160816;
        b=WUid9nhEAV3Ab14OZgluLuD2/+44vtdin9lQVE0w2ZBBy0XvGCdcdmkalovtWjZE5S
         Va4ZY24U0JGsLVhmPd3vui1MxWF8T0I7LqQvJ/OYehh1oIBCqcaULh7OD8Xuq8lg+r1t
         7A5UkLPKV35Lh+FDErFReiQKmxHXJZZouODGPekE4kV0W2YkI0rFkuNsMvK1p6tvCQwP
         9xwsgz8ZE73So4NjN/85fliL7mwWkjKF2sCsjd7bG9w29Sx5pSMSyRzIvICbdN3wqaLa
         Z/HX9HZRjMNEi5hJxISeFDDdNB6eZCK2GzvRqa9Ji8IsH5Cs8oPWcDEf/QfEhblXETrF
         +Mhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=9FhLzx5SUnsB5zVFL6LJMpKUq4Gcl0se1KNI1H2pwS0=;
        fh=d+NN1/9nDuwnwJoao3XCncS9eXV4fvw18mXgsLtMD5A=;
        b=idEKTGCjcyl3A1pK/buJ/ICPDQfGDKXxmZDfIkbBGbzlin2xdCYfacGl9u2OzCAmsu
         ZeEHZJ611mbQaAL1t+1MlIEOS8xWf8pTAC6vPLpZm0QrQFsoIvqLFrP0aNI8B/Tr/mcs
         A4AmcAY7iEeLm9ujBP2PJ1ER2M0KlCaRxXHC6gWCoiKcg6k2Wdv++odqW+1fOF5Ps9pw
         hDA82Fki95s8PWSKn9jcMhVB47ts91Q2n6G2WUv3tiJLrZan/NTsJAUbHgeGhIVy971t
         KTo48luyNNmA2EdWalemjxYrM4VPFtC2cmExkZb3/MTyt8HiYugC2x+h1WYk7fys31g5
         P0jA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@acm.org header.s=mr01 header.b=NQdmCDcT;
       spf=pass (google.com: domain of bvanassche@acm.org designates 199.89.1.11 as permitted sender) smtp.mailfrom=bvanassche@acm.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=acm.org
Received: from 008.lax.mailroute.net (008.lax.mailroute.net. [199.89.1.11])
        by mx.google.com with ESMTPS id of16-20020a056870d8d000b0022e9260fde0si1376249oac.55.2024.04.04.10.01.43
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 10:01:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of bvanassche@acm.org designates 199.89.1.11 as permitted sender) client-ip=199.89.1.11;
Received: from localhost (localhost [127.0.0.1])
	by 008.lax.mailroute.net (Postfix) with ESMTP id 4V9SZb1m8Bz6Cnk95;
	Thu,  4 Apr 2024 17:01:43 +0000 (UTC)
X-Virus-Scanned: by MailRoute
Received: from 008.lax.mailroute.net ([127.0.0.1])
 by localhost (008.lax [127.0.0.1]) (mroute_mailscanner, port 10029) with LMTP
 id Z4ctKmu4FCRh; Thu,  4 Apr 2024 17:01:30 +0000 (UTC)
Received: from [100.96.154.173] (unknown [104.132.1.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bvanassche@acm.org)
	by 008.lax.mailroute.net (Postfix) with ESMTPSA id 4V9SZG6Mp6z6Cnk94;
	Thu,  4 Apr 2024 17:01:26 +0000 (UTC)
Message-ID: <214d5b97-76ed-4c05-9696-91d91e8165dd@acm.org>
Date: Thu, 4 Apr 2024 10:01:25 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 06/23] scsi: add a no_highmem flag to struct Scsi_Host
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
 megaraidlinux.pdl@broadcom.com, mpi3mr-linuxdrv.pdl@broadcom.com,
 linux-samsung-soc@vger.kernel.org, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net
References: <20240402130645.653507-1-hch@lst.de>
 <20240402130645.653507-7-hch@lst.de>
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <20240402130645.653507-7-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@acm.org header.s=mr01 header.b=NQdmCDcT;       spf=pass
 (google.com: domain of bvanassche@acm.org designates 199.89.1.11 as permitted
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

On 4/2/24 06:06, Christoph Hellwig wrote:
> While we really should be killing the block layer bounce buffering ASAP,
> I even more urgently need to stop the drivers to fiddle with the limits
> from ->slave_configure.  Add a no_highmem flag to the Scsi_Host to
> centralize this setting and switch the remaining four drivers that use
> block layer bounce buffering to it.

Reviewed-by: Bart Van Assche <bvanassche@acm.org>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/214d5b97-76ed-4c05-9696-91d91e8165dd%40acm.org.
