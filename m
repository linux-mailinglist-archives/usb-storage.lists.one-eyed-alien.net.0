Return-Path: <usb-storage+bncBDUNBGN3R4KRBONCWWYAMGQEKGZHNSY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x345.google.com (mail-wm1-x345.google.com [IPv6:2a00:1450:4864:20::345])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CBEA896F65
	for <lists+usb-storage@lfdr.de>; Wed,  3 Apr 2024 14:53:14 +0200 (CEST)
Received: by mail-wm1-x345.google.com with SMTP id 5b1f17b1804b1-416259a5fe5sf1153415e9.0
        for <lists+usb-storage@lfdr.de>; Wed, 03 Apr 2024 05:53:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712148794; cv=pass;
        d=google.com; s=arc-20160816;
        b=xIZaHpIOT0UsnBig5P1i/6u5UcpV0CiLTUD63AyUSsfqnu2wfhfjnUCPtpRWLNVHrW
         j/4+JqZjUT45lhRY2fr6cQCbhcpP2Fx07sUxVlF4mzFrd1OFA3O1Y1qBBSr4s+RaEJoB
         2YHbcGjzBS/UrsgImLCsEUT+xoGB/xWsOMI8sbuHKG7++Gn1kiYx5rXAdHParAOqemkO
         KJ5p7+riimEDvDbXgKZAJMnH95zAtJ3G3eOF4AMGQNHtYV8sTbkZlGjn8XR4FARjbTun
         DRCPmxVv1HN1rkNurvrLekY0xOszyATcZLNlWSOouXnDUnBFeqZlRnWmFTzsR6fwTj5q
         QoxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=VHYXjVdNCjaQoqloUI4h0OJziGOswuS0N8wM9DWWLbM=;
        fh=I/R7ezxei26N0nf7Mege148l5wE5zeW8PSSGAN5iXLQ=;
        b=K9IhiXdQVCL6WZ1z0+AKy9G6QISr30RaXcYeFZ+smc+xl0lMVxin6b+g0bTVk+cTtg
         ogtbTw1DSyRHJ97FCWwkAMyyDXlzZZ2b/qCiEhrMUFkdoQQkvo8lQFGW2tJMReT3prez
         SOyZmLEFKSAfGPBOl7l+fSuVA0xHEEqEEAEc/4lkGG6Kl92uWb+D4qLiaR91Gq40FEy+
         7+pcdR8Zz7J5qFqac4LVggx15wT8Jo2dQcCjBKk9SQzyYIW4tBZZynNGbAHEiHbMlcfc
         kjFBLMUBuRKFL4YCplNelf2ynRf6ppcmJBdFpzowI+ntNcoruh3Ms8swJ6L1G4tHs30r
         cqWg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712148794; x=1712753594; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:user-agent:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VHYXjVdNCjaQoqloUI4h0OJziGOswuS0N8wM9DWWLbM=;
        b=YyIZygijeRz2YrrjcmLJ1+HmjiHOJCFiW2EVrgqDJ408jpoIsYOo29cIIFBC+0ylDt
         ET4gH+7reAh+ap7KVwpP16ASGv86O62obU50N+mQ89nZu0eQf1SN+04jfyyohrteYXUs
         yIM4rJ4tYpnIdxXJL/jpNLrO2TLBZJxDIGfT0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712148794; x=1712753594;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:user-agent
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VHYXjVdNCjaQoqloUI4h0OJziGOswuS0N8wM9DWWLbM=;
        b=C1phcRtfl2X6mHyVHEsaomDaym1zlPmOdttLO39ph2GA3ojnz8Hg7Z1Krs7YEiKLuj
         /Yr6NSucCsLMP6M8J5CnCmbeG55QaBKqbSFlrkcoqVRVojcJJ9EYNh3pZ7JjijSYMA6u
         8dHz8UK/4+k/EO4XlVlptBShgn647W7Q44IBdD1NbyUHEHli9vINl64WFf3hZiDeyFhX
         t7tzITV2C1ter4cWPedWRFcnzA44AFCI5uLspdPg/obSuvDHPfqJqY8XUYsUuFt6vSwV
         prsNodTuwmx8DQ/9YlEBwRFvCgFAXjlEybxch6sH+bN6kCgzodNgYOqw39jmt1ZzDMqR
         n7Qg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWKdzoCCehJNE0rU2x2z8X27QWhfGhhUYimZwsVOyJ7lfYuGoQNGQDK4yOninNXqNqyVlt94FdqaOgP4v94EG9tY6k/jUo7lAYw
X-Gm-Message-State: AOJu0Yzv1R/3ouFSvvhsE4hJVLOSAcqwEXR9cyx0wAVQgCLDqiPU1kfd
	txbWULpKD+mTepW3w2N5cnJ01C+XPQGW7+PV5t65kXoQhxs0vlfj4MPxM9PDDf4=
X-Google-Smtp-Source: AGHT+IHU4gDzd+o6QP4HV//t0/254uk88PgYnZa+yP2nuXAscqQx/u1QpVikGIiK7mx6mY7+1rBfYg==
X-Received: by 2002:a05:600c:1386:b0:414:22b5:c32c with SMTP id u6-20020a05600c138600b0041422b5c32cmr13331256wmf.37.1712148793392;
        Wed, 03 Apr 2024 05:53:13 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:600c:3b91:b0:415:509c:803 with SMTP id
 n17-20020a05600c3b9100b00415509c0803ls2552012wms.0.-pod-prod-07-eu; Wed, 03
 Apr 2024 05:53:11 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCU2JVsxFTFnCktx+Is1COlv9HZIhv7z4/6yX/15cWaSjtmNi/Pm6WR3lEs2Gup32VtLViw93PF0UMiZ7LeIO0GLXcchjsTiokGwl10zdRm/oc/FYNA=
X-Received: by 2002:adf:f284:0:b0:343:61bb:115d with SMTP id k4-20020adff284000000b0034361bb115dmr3716888wro.26.1712148791331;
        Wed, 03 Apr 2024 05:53:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712148791; cv=none;
        d=google.com; s=arc-20160816;
        b=UeKmgHAwixZ6MRCu0ADUXALEb3WW4csclqx/a/FkT+OIFywX6EbbU9M3pGHhJwHzy+
         5u6rRpTPman73+r5RFc9xri2h5io40vBZtsCVndC+ZfL3CSNipIsUgQPUvYAlbuJoEqv
         EV7XsTm3cxu9fDhkvx4ETcnZo09X6UYnopHM3UwjHjkW6HZEqjMtS3OkOf/FKwDV39wU
         eoQiTelDdQQXicW6a5UViIeojRSiQMcrM5846n3AHRD4+SoXkVYdVXjIEqMacdbwvuMn
         DqWpb3O1caSTyK2MmYkISPaDe6CznxVqmM75mE4s4ySjwoSBpuMS7nEG39EwsjZtcupR
         Jwtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=xcquJyxcm9Qf35kCMy4/3j3SdV+ZFIYHqkmItlOT3vw=;
        fh=qDFP47mhuLRDXq7KdFRhDgGZ/eM+EskKSvV+YZVTh9I=;
        b=IzXKLkJrplePMN3zrWYEWg0G+XRnahli1aBwhT1vmll5ayO/PU1Ceo0n0344GUC1QN
         3btPAMcEe0hLxJNgQDtMLOEag0FYWOXk1fU+D8nstW9mmxRnrg4nM7MZc4InMpnxQUnl
         c2o4GOPrnvvNejbyHoEhdXJYqiIaUnT28Xmsh19fMl5A4Mcziqk1oEqo9SUf1/JmKago
         UJ9wjoKxHElpjfy9wIRadzOwUc4r7JdsoFcaBmKSoHAG76+uqOW9qQRwNAK9WB8obMGy
         3A1XgyiGToCDY/m7iVHEN5eI8J/OiHEreqxXQ4x9cqiyCIS130rl4Sx+IVb4t0yu1HK1
         XpTg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id r12-20020a5d6c6c000000b003433a265b11si6494074wrz.952.2024.04.03.05.53.11
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Apr 2024 05:53:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id 5778768D05; Wed,  3 Apr 2024 14:53:06 +0200 (CEST)
Date: Wed, 3 Apr 2024 14:53:05 +0200
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
Subject: [usb-storage] Re: [PATCH 05/23] scsi_transport_fc: add a
 max_bsg_segments field to struct fc_function_template
Message-ID: <20240403125305.GB19332@lst.de>
References: <20240402130645.653507-1-hch@lst.de> <20240402130645.653507-6-hch@lst.de> <db9cefa4-b9c0-4a40-b232-68423fa98271@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <db9cefa4-b9c0-4a40-b232-68423fa98271@suse.de>
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

On Wed, Apr 03, 2024 at 08:50:52AM +0200, Hannes Reinecke wrote:
>> +++ b/include/scsi/scsi_transport_fc.h
>> @@ -709,6 +709,7 @@ struct fc_function_template {
>>   	int  	(*vport_delete)(struct fc_vport *);
>>     	/* bsg support */
>> +	u32				max_bsg_segments;
>>   	int	(*bsg_request)(struct bsg_job *);
>>   	int	(*bsg_timeout)(struct bsg_job *);
>>   
> That looks like an odd alignment...

With alignment do you mean the indentation?  It matches that of other
non-function pointer fields in this structure.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240403125305.GB19332%40lst.de.
