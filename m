Return-Path: <usb-storage+bncBDUNBGN3R4KRBTNDWWYAMGQEVP6XN2Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x447.google.com (mail-wr1-x447.google.com [IPv6:2a00:1450:4864:20::447])
	by mail.lfdr.de (Postfix) with ESMTPS id 42CE1896F88
	for <lists+usb-storage@lfdr.de>; Wed,  3 Apr 2024 14:55:42 +0200 (CEST)
Received: by mail-wr1-x447.google.com with SMTP id ffacd0b85a97d-3439b7a8741sf241701f8f.1
        for <lists+usb-storage@lfdr.de>; Wed, 03 Apr 2024 05:55:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712148942; cv=pass;
        d=google.com; s=arc-20160816;
        b=vZI6qeSxalY8rg58vI12LCouOgk6YscaWcytDwRKih7jXZY4VPGgHt+TqlaGhEnb/o
         W7+Np8LYXFeq9pBsuRWQo1J6LbCpzFvGbtAWEjqkf0YCfE/tv6MyQYAX61hjCB/fK1mE
         gaTbdHcnf5yAv9+vyGc7h3pK9oECKJM/VIEgl6WSp/Xm6JCy3CldtlFCU60/C3cP9ply
         t0TMIEvOEcOOCzPoirw3YXgxFHyxOjvXb6FVruLDms+Copkw2jbFzqNVMsqb0wcnPL2c
         yYd8LmUAC/QGSP/CBwami3w3Ou89K1g6S1dATFu9DfsE6eByZlbvpLfUe13nnUOnkBmy
         m96w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=enc515WmtgRd3AFn087Q3Tls9lKo+IVNBH9HaaGaJyM=;
        fh=PS8lQYyQ2w7eg0NQNF0+mxpIIzWrYgq41nVOJ/gGAio=;
        b=eMCMnKCoZQ6ZJIWbhVPFtRPidoW0ehC7U2r+fHmpVyLcz8c2l2qtX692hApw3zKElH
         Ef/lcYWzT9/V+DBLZ+uqSHduOP+jEIw08SZOI14RZ6HMs23fd0GaUr2rfN24mDEjXSUk
         Gxd/ixrVMZMbjHg73Bxr354UzYAep9fQyq/CtEs65Zu6Zm5Ei5sygunSUJtw4llrn5xR
         gv3goyA427WOn/nDzqqsmVFVoV/kBynmxsZFoJWuvl/WVIQg+bVRu3ZuR8CRh7GWFjJ8
         L4wrGRHeOqTiOo4Cf3/jYc4pHAziCZNlOLJxjcrrIGTJB221dnHjpdWoHQBJFa+6fFCT
         Ls2Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712148942; x=1712753742; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:user-agent:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=enc515WmtgRd3AFn087Q3Tls9lKo+IVNBH9HaaGaJyM=;
        b=Jps+XyuPL0FKW266+jA/3QzoTjNY83Dtoq62k+r5IY1zCv/MZU4FmoFkfeT7W5fcnx
         5/PXTos1K7UZzs+onixT5LJqy4lRHiwtwKMLfzrT3isNfxDQzk/00WnCBWIcksMBJBLq
         8Vp9g+vuvmDrM1rls827Q5JP/pIpH7eFNExGw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712148942; x=1712753742;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:user-agent
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=enc515WmtgRd3AFn087Q3Tls9lKo+IVNBH9HaaGaJyM=;
        b=HCc7Z+A5NoSxDLdL3VHzcyPdXAoW45LlMozGR5sdRFXkuEvlzGhHPnXCCeIwXGZCkW
         Sgej+PlsKfrw9I6lVBygxp8o9PnMxb4YxdHpdGqqFX7kqPvy344f9sz5DaAB6be9bpPF
         zF2BWAiJdYNExWNnbl5Iv7cvnz4fKmN+BIkh2qH5Vn2Denakv+zwT9PHWAFJjk3lSZVA
         mJGIj7rEpiyW8tjDQo1aPRqf2i3gvsvLK7Ek51+KGW6OxNVEA0a3tT1RabBcfbqaRPPH
         zPaARv4iDIxHtfEJANld/PmTAMFdDir6oXHPTe5tEW8ZkORKJApggJYzNQzvE/UpOsW7
         jNww==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVgWFMIUruUAVLwj6JK0vRR7KtJtwd7/4J1CCDx+n606pJPh2lq1UG7n3V65wl/IpIJU0bnFNmImcHQHm57QPULO9ps0JurhCb4
X-Gm-Message-State: AOJu0YwXOZ466ze4399tMwc8OuTCl2yQ+VfsWTXbGihLZuiG/cv/aIy8
	KXzB4F3Vfp7lDmuNtEqvgFuMruH6F0te28QJeaU422DEckKefCup//ieNPSTtSM=
X-Google-Smtp-Source: AGHT+IGRqYNbqCZamBxGrLavLHr5O0dT5Q1mKUYACi4mxeaPcv9F2vtuOGE1WVe+7xO17tCYfBvHbg==
X-Received: by 2002:a05:600c:44d2:b0:416:20c2:3b00 with SMTP id f18-20020a05600c44d200b0041620c23b00mr1755508wmo.13.1712148941882;
        Wed, 03 Apr 2024 05:55:41 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:600c:3b91:b0:415:509c:805 with SMTP id
 n17-20020a05600c3b9100b00415509c0805ls2401026wms.0.-pod-prod-04-eu; Wed, 03
 Apr 2024 05:55:40 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV04UZ++MCzKHX4awSuKHnkYbHgEM8tWtCcM/w6sDyZDXBuVgsORfxuMThGXIKeMWWx4cgW7wTbhl+jk2ltnB6V4k5PPbzPgbemRXiwgdLFRk/jkp4=
X-Received: by 2002:a05:600c:19cd:b0:412:ee8b:dead with SMTP id u13-20020a05600c19cd00b00412ee8bdeadmr10272164wmq.34.1712148939840;
        Wed, 03 Apr 2024 05:55:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712148939; cv=none;
        d=google.com; s=arc-20160816;
        b=UE0a2doQMK10rUr6ZuXyIn4+gJgOwJnm1IQnm+gmcCL7d2hl6DtR1Tx5rf7iX17HD4
         ZBzduJ+vKmlFaLIXkoyqeViaO6p3HUrqBm962DvOVmATM/k0SzoVaMNeZXXeOSp55pD3
         s977OtAdyb0oXCViixcoVcIjsO1Gx/MzNFSbYMjosojRNYOiesx2DiowlU3CQ7JYHKe7
         hefyOzQ9dvqJfUy2nJDWamABpb04gFuTD1vqP/hCNh1k61nrvMIcUDcxpDpnnFjjDuFM
         X+cqQkThvnMF058GHjQyfepb+xuBk939Vz39XnTORNgC7wwxKiqBo+A2drzHIb3iCxte
         q0WA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=CTx8GNqfaX1qpVy0fo+y3p2r4jZHaCcZjpPeuEZa7Lc=;
        fh=qDFP47mhuLRDXq7KdFRhDgGZ/eM+EskKSvV+YZVTh9I=;
        b=naxO2XU3ZWmt0RB78iExJRIs40mIsrbqelf2akMy0j0mhqlNc97BYVgQ9jaw4cFR4c
         drBUTn3BDVV2hq9WNyvw56gBP1LuJFb5LU4DqkJmtkwYkCWW44ZXGJMXH2eCY5Sjmhap
         +4JOfaSlRA0K6rOqAnG+kujPfGtCVir7iEXJCoDF57V7lHvmRK3iQKtXPa+q2k5BF1s5
         lTFLZaiDfT/pjyDGUWCnUltjgRY+mV2Gb+SsfvuY25l+DCNSxZ89vb/nuS7dhkr1QO6W
         1Xg58RE3SYYiJwXok4Xhx3tlY+iYIwyoIUN7mc+XnPPwywWyGw7Keg+cA8FPbc207//Z
         3zbQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id l10-20020a05600c47ca00b00414766b92b9si7743741wmo.98.2024.04.03.05.55.39
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Apr 2024 05:55:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id 965EC68D05; Wed,  3 Apr 2024 14:55:35 +0200 (CEST)
Date: Wed, 3 Apr 2024 14:55:35 +0200
From: Christoph Hellwig <hch@lst.de>
To: Hannes Reinecke <hare@suse.de>
Cc: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	Takashi Sakamoto <o-takashi@sakamocchi.jp>,
	Sathya Prakash <sathya.prakash@broadcom.com>,
	Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
	Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
	"Juergen E. Fischer" <fischer@norbit.de>,
	Xiang Chen <chenxiang66@hisilicon.com>,
	HighPoint Linux Team <linux@highpoint-tech.com>,
	Tyrel Datwyler <tyreld@linux.ibm.com>,
	Brian King <brking@us.ibm.com>, Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	Mike Christie <michael.christie@oracle.com>,
	John Garry <john.g.garry@oracle.com>,
	Jason Yan <yanaijie@huawei.com>,
	Kashyap Desai <kashyap.desai@broadcom.com>,
	Sumit Saxena <sumit.saxena@broadcom.com>,
	Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
	Chandrakanth patil <chandrakanth.patil@broadcom.com>,
	Jack Wang <jinpu.wang@cloud.ionos.com>,
	Nilesh Javali <njavali@marvell.com>,
	GR-QLogic-Storage-Upstream@marvell.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
	linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
	MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
	megaraidlinux.pdl@broadcom.com, mpi3mr-linuxdrv.pdl@broadcom.com,
	linux-samsung-soc@vger.kernel.org, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 11/23] megaraid_sas: switch to using ->device_configure
Message-ID: <20240403125535.GC19332@lst.de>
References: <20240402130645.653507-1-hch@lst.de> <20240402130645.653507-12-hch@lst.de> <9f555953-6b41-4962-8f43-339326e30d6a@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <9f555953-6b41-4962-8f43-339326e30d6a@suse.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
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

On Wed, Apr 03, 2024 at 09:06:12AM +0200, Hannes Reinecke wrote:
>> +	lim->virt_boundary_mask = mr_nvme_pg_size - 1;
>>     	blk_queue_flag_set(QUEUE_FLAG_NOMERGES, sdev->request_queue);
>> -	blk_queue_virt_boundary(sdev->request_queue, mr_nvme_pg_size - 1);
>>   }
> That now looks odd.
> We're taking great pains to have everything in queue_limits and avoid 
> having to use the request_queue directly, yet this one call we're missing.
> Wouldn't it make sense to move that into queue_limits, too?

The queue flags are in the queue, so there is no way to set them
through the limits.  I plan to eventually split out actual features
and move them to the limits from the blk-mq internal state flags.

That being said QUEUE_FLAG_NOMERGES is a really weird one and drivers
shouldn't really be messing with it at all..

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240403125535.GC19332%40lst.de.
