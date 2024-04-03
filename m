Return-Path: <usb-storage+bncBCHZVHVFVMARB4UAWSYAMGQEMFUZDVI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x546.google.com (mail-ed1-x546.google.com [IPv6:2a00:1450:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB24896570
	for <lists+usb-storage@lfdr.de>; Wed,  3 Apr 2024 09:08:35 +0200 (CEST)
Received: by mail-ed1-x546.google.com with SMTP id 4fb4d7f45d1cf-56e0ae59a9asf105001a12.3
        for <lists+usb-storage@lfdr.de>; Wed, 03 Apr 2024 00:08:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712128115; cv=pass;
        d=google.com; s=arc-20160816;
        b=f1By3EVUtJOMFqiU5H8XIS1JeqCOCgUSz9b8jDR+TNRv4eTQHFN1D03zkvCO8xWQLR
         39WbayJg41rJ2Zr/9nXDJKKW5/M6M3ssd1gUa8pCYZ7db2FwsoP8oCIGVTvoyFmrBYXL
         zTefAzlK6ldRzV2kwKUwTa4xoxci38Mik4q3su4VcBGy3nu+rOVrLhB8XGvOkw2D9byl
         aYkl3bLuELZ+nJ5GlR8NJaeIuLx/j+M4ilIkuhFjAvWrfkuhnfKId3uiKECtNI+VTAup
         AQ0BxXCKrffl9OWF/IiMU9BR6NApYXvf7CyyEn3DMMlkR6JpaPWrv2BONI4tb2SbrPvN
         rISQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=LWzXAIvtM6IDByAEj2BzH6SRorK68JsREACWjcvMQas=;
        fh=lJdl/krzQy4PDPLMzrfy7DHslBzfZxtsOLxgiRBqzXs=;
        b=aVisWer/1lpsfGkFkpzxTRQi9jfzGp/yF5MScyw3gNtc0P82ob28yGP6pnFwQHqFou
         aq82smLZCX6yfkHv2cBmVzLJVp6K0/Ad1ukDnEfXlXDjhIDCSuLkycS/Gw5CvxDZcmnp
         busthFU6KUvn3vM86e4323HvDRZK072GHvH8LrqlwZKC+pcNoVpYDyk6oL4g4+kUGBbf
         fE12Zs86r8v1OmRl4vfoXWCsyG0c500VS5DuN6rVHv/daTRILJlOe341ktvxVhO3vmbO
         wvVMwo5ou0UlceH/4EGfaJAiBgmIfRIriaVeyHX5wQiZNBrUAiIH28P0WQ53VEFH9SCn
         3k7Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=pIjIFZvG;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.223.130 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712128115; x=1712732915; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=LWzXAIvtM6IDByAEj2BzH6SRorK68JsREACWjcvMQas=;
        b=S+YahGYqtX7QJ+4JHJ2bjyqYVxDKmrWSoRnC4YAWEMdPvxv840og0FsxkTDAz4geJP
         Z2NzvsbFig4nDeUhV+3COUdEKTBoi4JIQgPm4WQz1cedxpITYIb2APAkeVFeVcezJQcF
         udwFw8cD+p+ZkEwTVgm//so2tjcMh3IWkFE7Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712128115; x=1712732915;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LWzXAIvtM6IDByAEj2BzH6SRorK68JsREACWjcvMQas=;
        b=YdYMOSKAg/4e0LxeXWab2swbqcLdnUDCdpcndr5k6/xd7UNmlEnrny4OSKATgE2TqV
         U0CUkyP+WH+PDvE8N40OyJoaaEwkMst1eSICK2MB/SZ+Zpoorqu4KmBDjhY4fY59Bjk8
         EbXFbgZtHFtxuL/Aghtc4fmRaHiWo05E733ORGwRX55XX2Mqnf0pRJucQSm5KBWM9QCI
         6kVklrP2Lm7Jm/JiO7dWfEppNLYxpzAPsdCHHLz/cPceA08XLTq3hPe7RBLfzyAuH0CU
         hBVYkpFVDMsbRNAvqGvMaq4f+2JSs1Wr3oh7X9X14fSQgLaJ7ZX0v8Pl0q44NujKJyyo
         thgw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWD5R/G8KOfiG8mZvAdd6QSPjto/R48rksBNcu4BKr283mrRyv6Oy8dATExGVBsludVlSasRRRcq4gdcJTJn9IcrLiuhQ9LRiRZ
X-Gm-Message-State: AOJu0YzKtwazkMbWTzlPL9WfdxAxGbYZ+WCI9IjI+RVu63iDS/SFNev4
	uuKLINx0nngbmWTdwE0q0i2ZPhPpLq3MBQXFQTzVw9E/u3JMZCudozhiXuAXohI=
X-Google-Smtp-Source: AGHT+IHmkzrZIWTqwctSfbR9xmndbml8rxacsPCg5ZUjPuNEF1zxmITuwuOLA8NrYz9wXon7mnUB1w==
X-Received: by 2002:a05:6402:190a:b0:56b:eb90:f3a2 with SMTP id e10-20020a056402190a00b0056beb90f3a2mr1465573edz.16.1712128115025;
        Wed, 03 Apr 2024 00:08:35 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:27cb:b0:56d:e746:ab9f with SMTP id
 c11-20020a05640227cb00b0056de746ab9fls237630ede.0.-pod-prod-02-eu; Wed, 03
 Apr 2024 00:08:33 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWlVWoSY7wTBJ2M/BHHah5yDcNz7tmwg3VapHHhWHC0GKnGr5sXoV+TX7JGURBVHi+18uMNDCoit/ihqV276T2cJfN6txL1UfYW3slQldzlBh5LwNI=
X-Received: by 2002:a17:906:451:b0:a47:183d:6c82 with SMTP id e17-20020a170906045100b00a47183d6c82mr1167213eja.31.1712128113315;
        Wed, 03 Apr 2024 00:08:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712128113; cv=none;
        d=google.com; s=arc-20160816;
        b=aO0YrWeC/53+aQeqfzbvqWhxhLpnIzKxBrpjizuT4HI6sCA8q9X2Ymt+Uu2TPJC6ah
         Rcs5vtpST6I3JtgtSlWdxeBHfUCwmVHeXo7LRAbTWJ8oPji5Hg+xwznojGAHyH+NjL/J
         fXVY4bid36Uc6uYX6qFPPN3x2Oe/PZXB33j2QtiyqD4QcCpxvhFRH6IdcdYyZ1HJdnDD
         u0WEflkjYXms39ZJk5khw+wXIfqvZzW42TMsKbZ5/zYzs7JRhxFH5M2RsKEtjmcFYG8m
         BDv+6DAs75tjGdJ+ZOkJNEzJ3H1punXx03L3ZJEQaT+/hb8U0jYVUazZaFi3D1qajzgL
         AynQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature;
        bh=8+9Qflfrrg7coTqjTjYc20vYzCht7wOLKF+4E1QBLxk=;
        fh=9aauSyI5eQk5b4s5O16fFO5a6x/LXiZqBjzkmnuA6As=;
        b=G9B9QgNhSr7gC3Dt3AC0knvFeiVH96tvVh1k5MeTu+e4Jb6T8uihGE+NWLWttWfcO7
         2K3L7vrdFBJHGI3dksNX7Q+NYoHNzi+uKUwdxshg7x6SJMYGZDtOTkIwLlOUVzFTIo3V
         7I3TsBPdbV10hWcv0JJwsXvTFvOAORgUuKr6L1a5etLERx8vEOergHGAD08+pzlzAYAV
         wcXfL7uypYaeJIPzHdzTe/qwZvQmheNpTmk1dXhIm+tz36/GsTe+YHFx+3AGcdc44dDK
         QC4L3f2/+WTP+bbv5bXcVqX/3jFvZ6Mvnfte7kald530WHGcKEJqG8k8ryHeg6ealOmp
         HZCQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=pIjIFZvG;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.223.130 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out1.suse.de (smtp-out1.suse.de. [195.135.223.130])
        by mx.google.com with ESMTPS id q12-20020a170906360c00b00a4e94324468si950831ejb.553.2024.04.03.00.08.33
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 00:08:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.223.130 as permitted sender) client-ip=195.135.223.130;
Received: from imap2.dmz-prg2.suse.org (imap2.dmz-prg2.suse.org [10.150.64.98])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id EB3BC3501F;
	Wed,  3 Apr 2024 07:08:32 +0000 (UTC)
Received: from imap2.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap2.dmz-prg2.suse.org (Postfix) with ESMTPS id 8ACAB13357;
	Wed,  3 Apr 2024 07:08:31 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap2.dmz-prg2.suse.org with ESMTPSA
	id 1GXfH28ADWYlEQAAn2gu4w
	(envelope-from <hare@suse.de>); Wed, 03 Apr 2024 07:08:31 +0000
Message-ID: <031d6f0c-7d94-4adc-b194-929dbfe80c6b@suse.de>
Date: Wed, 3 Apr 2024 09:08:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 12/23] mpt3sas: switch to using ->device_configure
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
 Bart Van Assche <bvanassche@acm.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
 linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
 megaraidlinux.pdl@broadcom.com, mpi3mr-linuxdrv.pdl@broadcom.com,
 linux-samsung-soc@vger.kernel.org, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net
References: <20240402130645.653507-1-hch@lst.de>
 <20240402130645.653507-13-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <20240402130645.653507-13-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-3.29 / 50.00];
	BAYES_HAM(-3.00)[100.00%];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	FUZZY_BLOCKED(0.00)[rspamd.com];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[42];
	MIME_TRACE(0.00)[0:+];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:email,lst.de:email]
X-Spam-Score: -3.29
X-Spam-Level: 
X-Spam-Flag: NO
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=pIjIFZvG;       dkim=neutral
 (no key) header.i=@suse.de header.s=susede2_ed25519;       spf=pass
 (google.com: domain of hare@suse.de designates 195.135.223.130 as permitted
 sender) smtp.mailfrom=hare@suse.de;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=suse.de
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

On 4/2/24 15:06, Christoph Hellwig wrote:
> Switch to the ->device_configure method instead of ->slave_configure
> and update the block limits on the passed in queue_limits instead
> of using the per-limit accessors.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
> ---
>   drivers/scsi/mpt3sas/mpt3sas_scsih.c | 18 ++++++++----------
>   1 file changed, 8 insertions(+), 10 deletions(-)
>=20
> diff --git a/drivers/scsi/mpt3sas/mpt3sas_scsih.c b/drivers/scsi/mpt3sas/=
mpt3sas_scsih.c
> index ef8ee93005eae6..89ef43a5ef862d 100644
> --- a/drivers/scsi/mpt3sas/mpt3sas_scsih.c
> +++ b/drivers/scsi/mpt3sas/mpt3sas_scsih.c
> @@ -2497,14 +2497,15 @@ _scsih_enable_tlr(struct MPT3SAS_ADAPTER *ioc, st=
ruct scsi_device *sdev)
>   }
>  =20
>   /**
> - * scsih_slave_configure - device configure routine.
> + * scsih_device_configure - device configure routine.
>    * @sdev: scsi device struct
> + * @lim: queue limits
>    *
>    * Return: 0 if ok. Any other return is assumed to be an error and
>    * the device is ignored.
>    */
>   static int
> -scsih_slave_configure(struct scsi_device *sdev)
> +scsih_device_configure(struct scsi_device *sdev, struct queue_limits *li=
m)
>   {
>   	struct Scsi_Host *shost =3D sdev->host;
>   	struct MPT3SAS_ADAPTER *ioc =3D shost_priv(shost);
> @@ -2609,8 +2610,7 @@ scsih_slave_configure(struct scsi_device *sdev)
>   			    raid_device->num_pds, ds);
>  =20
>   		if (shost->max_sectors > MPT3SAS_RAID_MAX_SECTORS) {
> -			blk_queue_max_hw_sectors(sdev->request_queue,
> -						MPT3SAS_RAID_MAX_SECTORS);
> +			lim->max_hw_sectors =3D MPT3SAS_RAID_MAX_SECTORS;
>   			sdev_printk(KERN_INFO, sdev,
>   					"Set queue's max_sector to: %u\n",
>   						MPT3SAS_RAID_MAX_SECTORS);
> @@ -2675,8 +2675,7 @@ scsih_slave_configure(struct scsi_device *sdev)
>   				pcie_device->connector_name);
>  =20
>   		if (pcie_device->nvme_mdts)
> -			blk_queue_max_hw_sectors(sdev->request_queue,
> -					pcie_device->nvme_mdts/512);
> +			lim->max_hw_sectors =3D pcie_device->nvme_mdts / 512;
>  =20
>   		pcie_device_put(pcie_device);
>   		spin_unlock_irqrestore(&ioc->pcie_device_lock, flags);
> @@ -2687,8 +2686,7 @@ scsih_slave_configure(struct scsi_device *sdev)
>   		 **/
>   		blk_queue_flag_set(QUEUE_FLAG_NOMERGES,
>   				sdev->request_queue);
> -		blk_queue_virt_boundary(sdev->request_queue,
> -				ioc->page_size - 1);
> +		lim->virt_boundary_mask =3D ioc->page_size - 1;
>   		return 0;
>   	}
Here the same argument as done for the previous patch could be made; if=20
we had the possibility to set NOMERGES in the queue limits we could do=20
away with the reference to the request queue here.

Cheers,

Hannes
--=20
Dr. Hannes Reinecke                  Kernel Storage Architect
hare@suse.de                                +49 911 74053 688
SUSE Software Solutions GmbH, Frankenstr. 146, 90461 N=C3=BCrnberg
HRB 36809 (AG N=C3=BCrnberg), GF: I. Totev, A. McDonald, W. Knoblich

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/031d6f0c-7d94-4adc-b194-929dbfe80c6b=
%40suse.de.
