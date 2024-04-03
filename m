Return-Path: <usb-storage+bncBDUNBGN3R4KRBSVBWWYAMGQEEMWX3QY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x345.google.com (mail-wm1-x345.google.com [IPv6:2a00:1450:4864:20::345])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3C5896F52
	for <lists+usb-storage@lfdr.de>; Wed,  3 Apr 2024 14:51:23 +0200 (CEST)
Received: by mail-wm1-x345.google.com with SMTP id 5b1f17b1804b1-4154a1787dcsf24313095e9.3
        for <lists+usb-storage@lfdr.de>; Wed, 03 Apr 2024 05:51:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712148683; cv=pass;
        d=google.com; s=arc-20160816;
        b=ApwFl8jfTung7SHLUIvRzAbsl6DcCOgLeLJgFG1u9RZaY6b+t2Qy67oOe3mIPASSB+
         +7vf2Q93BHu9Pzo3IUf37Gl/LbsJCV/SU5eUf+Mq9PIJq2apKblYWIO61zSjMbRRYKxn
         +o6sKEPE+8l7bzm2r1Iy8BcK/+34oDQeDs/THCPWh1JhV9ZEz/kPAbO5za2BruAwMnPT
         /1zvbH+Z+9KdE8QXr38duKOs0v8In986ojaMNMeFFVv1h1Reh1wlGXApQbbOAaCffkDV
         FD8v47HXF9hPlHQL8EBLPmwjmcip+E+CgyX+JvcpSfOEtKgzgsqqr8OL2BYerVsu3oMw
         yfKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=+1M1p596GiMIt4QyWPqmaysH6BXriYzGw7eVXucY+LA=;
        fh=84uT28jztnSIgtvd7uaxnrgO205zn1xFQTdjiYhkqD4=;
        b=06Wp6sc++qyRKLkBcQqWl75DzWJkWlGmV64qZlqfx7UCoFIKXU2vP420hOJyEk88cL
         /SlN3i7SmoYCyd5CxD0blA0f5IQ1UToGGnQd68Qmc+FGHNtwout0jtZyKAolThOYMYKp
         SfyAQa/CajarylE+RCnYVkpqNvVGzR5EA7Xua9dDcup+8xGC7jeIm8pldOULxWtKaxCb
         Bp1CDLpV3bSRXRWI+LwTc2woGuW2Afx+Tm4/pSYzGjwtKsEdpGs80Tfi8VuD8ApjuTdT
         qDLKuSWqrEy9h2D2BjPg+fHZCEigudYGVLJFYg/hOElL3ISMIjEb4GWLA/VD8VLgWvLm
         Lq1A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712148683; x=1712753483; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:user-agent:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+1M1p596GiMIt4QyWPqmaysH6BXriYzGw7eVXucY+LA=;
        b=k8MxGj04QllXooxnnBtMytv5eTkR8nkeAh6aTF6LS7itLQ/TAI+JuctAk4Ou6zzfqv
         Xr6N101syTVcKjswXv10SPf5vOGi00/7nB5/rP71fkw3cmMl2WTueOg8nkqAW5dklEgf
         9vpzbHO734dbW5+T+zcRZc6ZQGS7wqgeiffSI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712148683; x=1712753483;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:user-agent
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+1M1p596GiMIt4QyWPqmaysH6BXriYzGw7eVXucY+LA=;
        b=FojyuT1XBosS3G1dVFc+XZeIQF367XXJYQmq8gD4Y+s6qaMmaPsKuSyUYrXo55IQSj
         WTdzflz4H0HXGrTpK5qNlUPPYNMg9nddLIj245KZ9b7Dn0Bf1dNTQE14gJvK9L0Ab9CR
         QKvDtynfTFp/lvCWnAiEJbBsY6iv0QYptGNR0TLN711e1bempSgQVJunfnid89mheA3i
         jOyZC0HJ5myWEckfxcieYrEYQCZF16GrVRTV2z4ZvDVb8H+zcdVP7Fz1cJpNPfvP/uMx
         ppwjtRZP4f+LWw9MxW9S+KJCuq42LuCZIpG74iceesDhasoOFAQymVi6nlACbBZao+8y
         ppNQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUspsYRHgpJ2y3u+Yu6IQfytENI2YL7HN03zIU+E4G07hT1QFS4CghToZ/VP3M/jOhU3PjEqN+NK80x8vDjiCq+lSAD1QyspkVX
X-Gm-Message-State: AOJu0YzaIRMDEfUR8Ne4yVHXfp4rLUpBWIdb74yoyfC/V4mizvyWuj9V
	v4ejoKOhjE/MJ4MSJgX4i4MYxcKOcX+mnUJY5TMhW+Mm7nh3s8V8S7/gOCTr/fU=
X-Google-Smtp-Source: AGHT+IEQPvmJ4rWDLlIEHBIGfrnynUPuMAWR6bkQPN2xibbeP0CCmVDDgGn09v3wFOToEh+Ghv5LkA==
X-Received: by 2002:a05:600c:3c99:b0:414:8e3:d8e0 with SMTP id bg25-20020a05600c3c9900b0041408e3d8e0mr12557079wmb.17.1712148682823;
        Wed, 03 Apr 2024 05:51:22 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:600c:4f87:b0:415:5152:6ca2 with SMTP id
 n7-20020a05600c4f8700b0041551526ca2ls2386132wmq.0.-pod-prod-08-eu; Wed, 03
 Apr 2024 05:51:21 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXwKED9GFMJB5ktlBR1RDIkM0QqgC+5IyV+kvzP56qCeoX/Qw4gOK0QlDq2e67jyhsRwmPwnXR/xXAGqIdUIW7fI4gcJ0HJI0mioyriXNrVYfphu3U=
X-Received: by 2002:a05:600c:5248:b0:414:71b2:73c4 with SMTP id fc8-20020a05600c524800b0041471b273c4mr12963829wmb.12.1712148680840;
        Wed, 03 Apr 2024 05:51:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712148680; cv=none;
        d=google.com; s=arc-20160816;
        b=spxplxq6O6m8oYZaNg0gVW50JONu25vVOU2kjGyxMW9+lbn5ClqdoswQfcMykarCdH
         dtVz8wJS7tcK/wF8k9LiiT38X/SSw94zeVl4qmh1WT4BdrqTxyySnAdE2aVON9vDvNOI
         kkIl34FEh/qfRzcThPcm9V7ZCvE8b+Wa1XJFcehaggkxys8WCfLhijn4JB9tbkGC0d8g
         0rdNTj1gtXp3m6qOBATPw6EnZUTwuTvOv8nsOM0bR8KoAJeySj7eJwRoRts16bGt1QEN
         GZ3y75fnZiyCaji/sBUzvAeMiAPNO+AuW7SZqN/igap6fsxaZsN4S/mh1WQBeWmfG7tr
         avwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=benGS+ckcLPzqnAQNema8agiFtKpn1CTIgyfpDqu+so=;
        fh=O0spm9G4llVPbyHhJ041MDy14lImw6/CKpM6ogn4cVU=;
        b=1CPxd4ZTK0AEm1wKtD37M6LNkqBKBXzR9Vz28LMBQFpC/Vtjbx05oTr3DlKI442ljw
         UWYvyx9qHcu979gzZdcbubcG0duh0UD/X9WC8UgryaQ/pHCMPsmGQGTJB6n7g1i1OSZe
         L+py4l2Py3jA+ulgnZRz6DInQCL/Hm+6O+F+s7zpTtR9mX+/BZiAs/Gwn+MESCyzvVsz
         vZga9lWzhS4AnwdWXm6APxeZ6ov9XQ+i3KoozagQVa0e0gxeyLHzNGLiRoYvYs84XDLv
         55ATigO8ul7h/oHNyV6aU5uXgriVAE37r6v7TsXBVz2WfUYhPCHGVmNJIO/CIX9QLA0S
         tOcA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id j7-20020a05600c190700b004154535a6c3si7669917wmq.133.2024.04.03.05.51.20
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Apr 2024 05:51:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id 574DA68D05; Wed,  3 Apr 2024 14:51:17 +0200 (CEST)
Date: Wed, 3 Apr 2024 14:51:16 +0200
From: Christoph Hellwig <hch@lst.de>
To: John Garry <john.g.garry@oracle.com>
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
Subject: [usb-storage] Re: [PATCH 01/23] block: add a helper to cancel atomic
 queue limit updates
Message-ID: <20240403125116.GA19332@lst.de>
References: <20240402130645.653507-1-hch@lst.de> <20240402130645.653507-2-hch@lst.de> <fd99a58b-37c4-45dd-a738-cd2b49341c70@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <fd99a58b-37c4-45dd-a738-cd2b49341c70@oracle.com>
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

On Wed, Apr 03, 2024 at 08:38:42AM +0100, John Garry wrote:
>> + */
>> +static inline void queue_limits_cancel_update(struct request_queue *q)
>
> Just curious, why no __releases() annotation, like what we have in 
> queue_limits_commit_update()?

Mostly because sparse doesn't seem to actually need it on inline
functins.  At least I don't seem to get a sparse warning without it.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240403125116.GA19332%40lst.de.
