Return-Path: <usb-storage+bncBD3JNNMDTMEBBA5XXOYAMGQEEMM3TDY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1047.google.com (mail-pj1-x1047.google.com [IPv6:2607:f8b0:4864:20::1047])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C88898CB6
	for <lists+usb-storage@lfdr.de>; Thu,  4 Apr 2024 18:55:33 +0200 (CEST)
Received: by mail-pj1-x1047.google.com with SMTP id 98e67ed59e1d1-2a25f6ca48dsf1057575a91.2
        for <lists+usb-storage@lfdr.de>; Thu, 04 Apr 2024 09:55:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712249732; cv=pass;
        d=google.com; s=arc-20160816;
        b=hOE1+aBkQhznqFMH/3rcc5u/wXFjgJ8wyZH7uNV1Lxl4ZWXMW1lfDS23srdJ3Zu4CH
         RHbtRWeIlQDQ8nZLK06OEkP0/4YBnQU7pJ/W8q/JcID9DbqJ9nWibQ13Zt75681gUjQy
         eW/n7LhZpBN01s0dBKAwe3Ggy/b8lobwJ3mjceqW7J/PZjA3cA9s7Ngh1Ol7a6+yBriP
         djyrIZJbSt88JZ1Q4/dTQjy/o4K1IpytP3uneCx2ju1b22dnYSjbWrzhyO4HFcLt1zD8
         00r9+Ila7eaVzh53HjjUQdpef7VDUk0ynoRLBjPA/eGd+nNew0QJg214jTQz6XzjiCVc
         x7VQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=t4F3K/hAnHjxA5O45Jhh/qZcJlhUWeCMkC7eq+t5PJ0=;
        fh=Kjy1Ae/uvDsdLfh1Wg4KCdKGrd+m/1Gm0n+auVqtTDM=;
        b=FVPmLz2poIoeDi6Vh3zDGRfYEnucAoiRSWM7ZYrAHRgQqrnXZl8eExfBpXA5OVGkSp
         1Ns6s261E4Iqvb8ZN3zaDylWWtgI+MxnzHur7tNxGpgZxThNI+CANM6QHlOM7LcllFe4
         FQzmWmOS+R657o7uYrccGh510tESPsMxKEWZjxDuBC7CRO2P0fkRzl7ar8eFpii5nUHO
         nP2kuhX3AI2N/ie182PiEeO23VgzLz42JVHXWA3bXxuTC/aO556m173Dq/zqS6EIHBsg
         4OoH+ebDcJz6AOGxyKqggkGzlTJw+DkPgEqycyytoPnJ9JBsXSqnx8/wESQ/yX1BLrvK
         C71g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@acm.org header.s=mr01 header.b=Ez4neXk7;
       spf=pass (google.com: domain of bvanassche@acm.org designates 199.89.1.12 as permitted sender) smtp.mailfrom=bvanassche@acm.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=acm.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712249732; x=1712854532; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=t4F3K/hAnHjxA5O45Jhh/qZcJlhUWeCMkC7eq+t5PJ0=;
        b=V5cetSPAc8NpKcaIZjsNOO2wcMJgyysCdtNcz2NQA0JNIdzhmpT1gujbepmhWhxhUC
         xQdm8kSpEPFWnSbDRUzkfsoXiqiSeI1XKNJcLs333/IDGMO2gi7csoote4X52wSMjGOm
         t7NbjVb0DcuNOPyu7vA5kn2KmQAAI1PCASDAw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712249732; x=1712854532;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=t4F3K/hAnHjxA5O45Jhh/qZcJlhUWeCMkC7eq+t5PJ0=;
        b=ZEWIqCtpbssix7NbZmuEVKebNX7o2IFIKQE9t9LK21d4Ub/m1DztSp+NbU9bEL2fg+
         aiql5oHaOpFHvh7j4ZRRPIIpsc/XfjcfL54j/KGy5Hd3ZqX+BYPtuOPkC6ahpX8UH+2b
         fFVLn6oS/XINyAY3Ph4NlVlOIulDeDZpKapEisSutyl/mtAeFyW7jdpvBq6L5vlAOMVJ
         px8WATym+qjDaVtZje6biwgNOG4Or/avkrReRr0lw5LkV5I7xtJt2o6eTy8k/GWfT/ZM
         OasuAwjokA5EtmhHSHMv3B/E9Lbh8UhR6jPSbunbt9Xqqe7LfcZXePCAFTLYWTrs4rGA
         5TyQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWHuHa9XnIFOOED7TwKvt1j1ygE8leVlsQYo+XDn4/6FJHPOvUN0IsjTGZqNBf78oBw41rKFItfqI8aVY8G9h0Gb0lp2X1ntAsq
X-Gm-Message-State: AOJu0YzDnuC96FgG1tvh77V+j8NPdd8dc4vyLiKidub4I4/EA2HRKdDI
	HFaDLeUolNuWeORzhP5mEdQZnjPee5ISjgFHd+Pfg2KdG0Laa73vGFu61iGYsbo=
X-Google-Smtp-Source: AGHT+IF/732s0HZ5XYMSSbh6DCJC9O+ZK/yBnLjqmIgB8rlbdN1uS52gsyWZfRZnSKZPO/hz16l4uw==
X-Received: by 2002:a17:90a:e604:b0:2a2:ba9:ba61 with SMTP id j4-20020a17090ae60400b002a20ba9ba61mr3510159pjy.34.1712249732098;
        Thu, 04 Apr 2024 09:55:32 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:6d61:b0:2a2:88d4:8941 with SMTP id
 z88-20020a17090a6d6100b002a288d48941ls692424pjj.0.-pod-prod-03-us; Thu, 04
 Apr 2024 09:55:31 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUaOOMhBzbP4keYdLHddzIbVHtKa5U+OjgegJceUJQv76yG9TyAsBcrpawXMHPcsNaMGVYkvmk02FhwGNfW+A8Uio2qJqcVgyXzkVn9ukPJfT8qXyg=
X-Received: by 2002:a17:90a:fe0c:b0:29a:9ed9:56fc with SMTP id ck12-20020a17090afe0c00b0029a9ed956fcmr3056141pjb.32.1712249730873;
        Thu, 04 Apr 2024 09:55:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712249730; cv=none;
        d=google.com; s=arc-20160816;
        b=oh8IXV+PV+/KK8s+TaBHKQL/+MbErQ5/61dMuB8DNWiR5L03kNsmjBiW3iibKk+6jW
         ko28qj779BTTh2mEmOxyClp5CV4r+AiiQxgEkv6244klDzY6tmg1QUAt0zmb1/qxvRiv
         QJAqv9BaeVT0dmDn5V6x1HPrT39mwJks3392txuMz0uILKXEf0/Ce0CBVCTvLFDTNp5y
         MNB3civ2ttyh18ZoHX9DIu4PkVPtnBvEkqcy6jsm/JZ4b/+FgAS0wwVS57r/7DuqMjTK
         4VnB7YYxOIgggo+0D4KNPtHaRgzhF3TDEnuy18DOqX9HjdFvwYlF/XP7Fu2h1sTLaKbD
         Rpaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=ZPij4v4Q1/Tj4lhxhuIsLTohgUfceO3NthUEwaR+ETY=;
        fh=d+NN1/9nDuwnwJoao3XCncS9eXV4fvw18mXgsLtMD5A=;
        b=B5byY9FlahjwMKUvk+T8wHZt5xpeaX14c5gqvjcyAlRocZ6051IK1gKSQu3D25qfMD
         4x5kxhgH9vwcwl8IzCvvj/tFbjcPUurZf5b2VfBH4cDoqVmN8LCMv8E+5JiNOWKkftJY
         WKM2mc/GG7vs1saOB2kX/7t7f7Wkjlo9CZjSXnYthxK4Rsg1JUPFEnAOsquXrCXsfzAX
         GV+dAV6vNerzvokYtCNyy2FXwGn9OnwCmLjeNOslcAtL2og8Mecw0jMHXsXhhpIKlW6l
         UKe/NOuOPtmA0HNQRs90nTzl0ixWWo6ortwHH9mc5D1p8PGLpHW6QzwCUigil54xaLDN
         EA5w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@acm.org header.s=mr01 header.b=Ez4neXk7;
       spf=pass (google.com: domain of bvanassche@acm.org designates 199.89.1.12 as permitted sender) smtp.mailfrom=bvanassche@acm.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=acm.org
Received: from 009.lax.mailroute.net (009.lax.mailroute.net. [199.89.1.12])
        by mx.google.com with ESMTPS id i13-20020a17090acf8d00b002a2dd53828fsi1390427pju.2.2024.04.04.09.55.30
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 09:55:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of bvanassche@acm.org designates 199.89.1.12 as permitted sender) client-ip=199.89.1.12;
Received: from localhost (localhost [127.0.0.1])
	by 009.lax.mailroute.net (Postfix) with ESMTP id 4V9SRQ368yzlgTGW;
	Thu,  4 Apr 2024 16:55:30 +0000 (UTC)
X-Virus-Scanned: by MailRoute
Received: from 009.lax.mailroute.net ([127.0.0.1])
 by localhost (009.lax [127.0.0.1]) (mroute_mailscanner, port 10029) with LMTP
 id mOUqj_SbWF1Q; Thu,  4 Apr 2024 16:55:19 +0000 (UTC)
Received: from [100.96.154.173] (unknown [104.132.1.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bvanassche@acm.org)
	by 009.lax.mailroute.net (Postfix) with ESMTPSA id 4V9SR63jR1zlgTHp;
	Thu,  4 Apr 2024 16:55:14 +0000 (UTC)
Message-ID: <8011f224-04f2-40b6-84ad-fc0fb3d10b16@acm.org>
Date: Thu, 4 Apr 2024 09:55:13 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 03/23] mpi3mr: pass queue_limits to bsg_setup_queue
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
 <20240402130645.653507-4-hch@lst.de>
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <20240402130645.653507-4-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@acm.org header.s=mr01 header.b=Ez4neXk7;       spf=pass
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

On 4/2/24 06:06, Christoph Hellwig wrote:
> diff --git a/drivers/scsi/mpi3mr/mpi3mr_app.c b/drivers/scsi/mpi3mr/mpi3mr_app.c
> index ce5445eb9d0e4e..05e061fc6d3a06 100644
> --- a/drivers/scsi/mpi3mr/mpi3mr_app.c
> +++ b/drivers/scsi/mpi3mr/mpi3mr_app.c
> @@ -1838,6 +1838,10 @@ void mpi3mr_bsg_init(struct mpi3mr_ioc *mrioc)
>   {
>   	struct device *bsg_dev = &mrioc->bsg_dev;
>   	struct device *parent = &mrioc->shost->shost_gendev;
> +	struct queue_limits lim = {
> +		.max_hw_sectors		= MPI3MR_MAX_APP_XFER_SECTORS,
> +		.max_segments		= MPI3MR_MAX_APP_XFER_SEGMENTS,
> +	};

Can 'lim' be declared 'static const'?

Thanks,

Bart.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/8011f224-04f2-40b6-84ad-fc0fb3d10b16%40acm.org.
