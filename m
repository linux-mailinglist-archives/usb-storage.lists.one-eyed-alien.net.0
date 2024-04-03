Return-Path: <usb-storage+bncBCHZVHVFVMARBUPYWOYAMGQEVCPKA3Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ej1-x646.google.com (mail-ej1-x646.google.com [IPv6:2a00:1450:4864:20::646])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C2C08964E4
	for <lists+usb-storage@lfdr.de>; Wed,  3 Apr 2024 08:50:58 +0200 (CEST)
Received: by mail-ej1-x646.google.com with SMTP id a640c23a62f3a-a46bc50c895sf146811166b.2
        for <lists+usb-storage@lfdr.de>; Tue, 02 Apr 2024 23:50:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712127058; cv=pass;
        d=google.com; s=arc-20160816;
        b=trmjc6e2N0p3wcEIb8x+FNWDA/1kTbiUlg9NaF/2SaZejMNk2dfuoC9tsGTU8zchHC
         2lNpQj53Zl34RamMbjfr1YfwaT48z8gr3y5s5jlUQiLY9RmC/QI9EehSFA8WjqNii8N1
         Vx+f4lLGWKA+se2IpR0/IoOgXEaS2P60erq48jaTkxXhq4w2b6v78i31/OPTjcsH2mNc
         S9FL4AxOp65/7mMTB6lWdUOcx3O8PXizkXDpXd84rSOqhAcKtwQW5lvR2dpctmU3Fid0
         tBMRtT9zIXmwLGCxV0MREXiDMTb+eXvVkoZuQMZ01iJmlcUHB6xDjIBqUfOkeEkwnNkc
         uw+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=EkyUdRQNX0Ed4DAHcRAmoZpQKsNuQIXdRSyXfTIrz0c=;
        fh=Gtwh///Bnwd5NNUmr49UMO7+scWePqlgfh93KHI+bVc=;
        b=K7xvf/3qwOAwE+SGB8Nte9S1cdkrwy5MxI2f+ARFwLa1Bi/s3TK6cMBc2ig7y5weg+
         QQSWDmARnvtawiD8DbFBaUffjhAc1hWGeYTvX4VZ9Mus4h/m+o2SZOn8L4BT6T5yakDd
         5X5kOLVpa7BC2kqU5w2K76JKPh4gBo9RlNvFbJFLJjnjDHStrzexCMJVcMW+0d0eF0Tk
         IzLloNuSh6RncQ+/OMYazWRm2Cs84PrwuaFEeirB7iTMnQ3wK87NlwMzX/MeDnnI5OHI
         JxVcCWCQ55XO4vTIjwuAMh0uan16rjB8EGvNGm9/fQSmjc1x4Rgh1ayYhXtMgGDpGBQx
         wrNg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=jMJSMYZC;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.223.130 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712127058; x=1712731858; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=EkyUdRQNX0Ed4DAHcRAmoZpQKsNuQIXdRSyXfTIrz0c=;
        b=YjTNitBZ/Ww2oQJfzn+0qowJVVtsay+NHf/z9ngaki9RLVe0XiLWbZm6hjUrkBz1x3
         3lBAuBSsLU4sHPzKFC2DrcRejL2iIVSsUoyX5/CWyN5s5zNgFUPePcplJTu6K++MAGRA
         OzdGJUcEMeweh2paL3IRP9s4m8Wc6gEhh5rlc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712127058; x=1712731858;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EkyUdRQNX0Ed4DAHcRAmoZpQKsNuQIXdRSyXfTIrz0c=;
        b=G9Oec9930IwPSEPxxW5y/ZufVYX1eHFaZfZwAXTnSA4GCmOJPLO+H41BMW197++NA7
         1boP7i3TcFPCw5c6fUumypIaQAi3K2wEcZFeTs6P7Fxal7V8V0aAg0emjb1r3UbEGu4W
         v3a50vV0TqjdqPMQ/PO0GhLD+jROGDY3/wXgpi8MdgF5HatHIW7+8k0p8Lg9e0dUXQM9
         gvg4Tnxi0tsN8Ocx+BM2y3btZlHEhes+teBLOBD6L64rEXU6JIZelx5vVYCQFhAeqM1w
         V7LwjlwzUzIlzz0vHCy1MgoZqRQUFIgBSPeY7qV34K0mI5PVcdxPjbWZ8Ax947treRIi
         gm+g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUjgmcW052TnQBERMkOY5479UxsFylR7l+/zcY6d/TeHWxSnDGRQ1Df0v0sBAKehAHth5D+osI5do2UdPsukuqix3Pmq4zdS1BR
X-Gm-Message-State: AOJu0Ywt88+wpvYoTEnnc3URUMy8fN2TOJnFN2KL88ZzWk9lVLAXuxlb
	jCBNX2YWyzwwR0xTD4EvGPNBFqCgDiCEwAtsU1RPt2Rt6kbn769r9G4957ETNiw=
X-Google-Smtp-Source: AGHT+IGK2EW/HFVW5aFQZ0hXK77HzsqJBQ7r69LXZPaNK1urk+eUIHbeDHpRUTTjCQv9E/pdJTEVZg==
X-Received: by 2002:a05:6402:5253:b0:56d:ee15:4925 with SMTP id t19-20020a056402525300b0056dee154925mr3596672edd.0.1712127058114;
        Tue, 02 Apr 2024 23:50:58 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:2695:b0:56c:53e6:a900 with SMTP id
 w21-20020a056402269500b0056c53e6a900ls163016edd.2.-pod-prod-05-eu; Tue, 02
 Apr 2024 23:50:56 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXz60AwEjodGZSMZkUGHHEU0xZV1LUAFaz9lKM2EVSL+BNj13OQ3+ddRE3NWo2Ka6BMfoJoSsRFn9qE2ZZ+oHfRXFxWBKeXVsHpj+U0XX97vs0iYac=
X-Received: by 2002:a50:ab1b:0:b0:568:c6a2:f411 with SMTP id s27-20020a50ab1b000000b00568c6a2f411mr2752274edc.32.1712127056321;
        Tue, 02 Apr 2024 23:50:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712127056; cv=none;
        d=google.com; s=arc-20160816;
        b=fiFvPGs+paiQnUMhyzm68wYO4N8cxo0yxx/QW/kOo5pS67R3dT3Kes7Rw20dVx8zvB
         Ugv4v1GQK+7cpY2V4dW6ELMxvMYAkraSAHl/l9XanNPESZRxFy3UyqxJ6QQW/tyaM4nI
         dqcErtAw8l6LPAkvE8FQWktmVC2nA2IPuavZkPDoBBpRL0EidAjFStw+0yly69jGgRL8
         o00P35HBs6pQN0hY0Q36WKQoRXZxOHgxY73wWqHkgc78NNC1+58ChyLNSj02oDDwRGFc
         cmtfng0PAXyLvhU44PbWgFutbpfZZIBoYJcp4+P7FfuiR5YOJXY+v2Z64g3p03UCOF9S
         Qlig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature;
        bh=Z9UBIdS/5pVDyT4gx08b7Vz/3wFtzLCPe0c2nJQdTgE=;
        fh=9aauSyI5eQk5b4s5O16fFO5a6x/LXiZqBjzkmnuA6As=;
        b=0VEQG2qT7Owz5Oo/ICzmBuw5VSETwrsOoLS8otKxidNAmQOxxhC3oq8iJ7gjC4snPp
         3eDkxvmKkOBdHdm9+ZicEazszq23a79VKFMRQwrHsVQhENVAvOwkvUxDIRCGSsHkuC+7
         9FARJkrRFbtG9rWziQYMw6v15vqa3cnfsgY02Kxm0rAMtOiIw9064NqRAPnJ7OC/GfrQ
         WhgGtrUGCBCpILcC4yazmpbx9uvP6QaxpoOXvLvYCy78F0J9xeV8266aObBG27V7TFYR
         JiGkZtqI8ndi2RE1zG4qa3mDgWAkl0p5vLoOKGlvWOhYpyqC1IqXR/U5BotJch0BtQru
         Cwbw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=jMJSMYZC;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.223.130 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out1.suse.de (smtp-out1.suse.de. [195.135.223.130])
        by mx.google.com with ESMTPS id b16-20020a056402279000b0056b47bc2296si6574156ede.490.2024.04.02.23.50.56
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 23:50:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.223.130 as permitted sender) client-ip=195.135.223.130;
Received: from imap2.dmz-prg2.suse.org (imap2.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:98])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id B2ABE34A60;
	Wed,  3 Apr 2024 06:50:54 +0000 (UTC)
Received: from imap2.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap2.dmz-prg2.suse.org (Postfix) with ESMTPS id D74E013357;
	Wed,  3 Apr 2024 06:50:52 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap2.dmz-prg2.suse.org with ESMTPSA
	id YKjTMkz8DGYtCwAAn2gu4w
	(envelope-from <hare@suse.de>); Wed, 03 Apr 2024 06:50:52 +0000
Message-ID: <db9cefa4-b9c0-4a40-b232-68423fa98271@suse.de>
Date: Wed, 3 Apr 2024 08:50:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 05/23] scsi_transport_fc: add a
 max_bsg_segments field to struct fc_function_template
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
 <20240402130645.653507-6-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <20240402130645.653507-6-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: B2ABE34A60
X-Spamd-Result: default: False [-3.30 / 50.00];
	BAYES_HAM(-3.00)[100.00%];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	MIME_GOOD(-0.10)[text/plain];
	MX_GOOD(-0.01)[];
	XM_UA_NO_VERSION(0.01)[];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:104:10:150:64:98:from];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:106:10:150:64:167:received];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[42];
	MIME_TRACE(0.00)[0:+];
	R_DKIM_NA(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	SPAMHAUS_XBL(0.00)[2a07:de40:b281:104:10:150:64:98:from];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FUZZY_BLOCKED(0.00)[rspamd.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:email,imap2.dmz-prg2.suse.org:rdns,imap2.dmz-prg2.suse.org:helo,lst.de:email]
X-Rspamd-Action: no action
X-Rspamd-Server: rspamd2.dmz-prg2.suse.org
X-Spam-Score: -3.30
X-Spam-Level: 
X-Spam-Flag: NO
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=jMJSMYZC;       dkim=neutral
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
> ibmvfc only supports a single segment for BSG FC passthrough.  Instead of
> having it set a queue limits after creating the BSD queues, add a field s=
o
> that the FC transport can set it before allocating the queue.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
> ---
>   drivers/scsi/ibmvscsi/ibmvfc.c   | 5 +----
>   drivers/scsi/scsi_transport_fc.c | 2 ++
>   include/scsi/scsi_transport_fc.h | 1 +
>   3 files changed, 4 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/scsi/ibmvscsi/ibmvfc.c b/drivers/scsi/ibmvscsi/ibmvf=
c.c
> index 05b126bfd18b55..a3d1013c83075c 100644
> --- a/drivers/scsi/ibmvscsi/ibmvfc.c
> +++ b/drivers/scsi/ibmvscsi/ibmvfc.c
> @@ -5541,8 +5541,6 @@ static void ibmvfc_tgt_add_rport(struct ibmvfc_targ=
et *tgt)
>   			rport->supported_classes |=3D FC_COS_CLASS2;
>   		if (be32_to_cpu(tgt->service_parms.class3_parms[0]) & 0x80000000)
>   			rport->supported_classes |=3D FC_COS_CLASS3;
> -		if (rport->rqst_q)
> -			blk_queue_max_segments(rport->rqst_q, 1);
>   	} else
>   		tgt_dbg(tgt, "rport add failed\n");
>   	spin_unlock_irqrestore(vhost->host->host_lock, flags);
> @@ -6391,8 +6389,6 @@ static int ibmvfc_probe(struct vio_dev *vdev, const=
 struct vio_device_id *id)
>  =20
>   	ibmvfc_init_sub_crqs(vhost);
>  =20
> -	if (shost_to_fc_host(shost)->rqst_q)
> -		blk_queue_max_segments(shost_to_fc_host(shost)->rqst_q, 1);
>   	dev_set_drvdata(dev, vhost);
>   	spin_lock(&ibmvfc_driver_lock);
>   	list_add_tail(&vhost->queue, &ibmvfc_head);
> @@ -6547,6 +6543,7 @@ static struct fc_function_template ibmvfc_transport=
_functions =3D {
>   	.get_starget_port_id =3D ibmvfc_get_starget_port_id,
>   	.show_starget_port_id =3D 1,
>  =20
> +	.max_bsg_segments =3D 1,
>   	.bsg_request =3D ibmvfc_bsg_request,
>   	.bsg_timeout =3D ibmvfc_bsg_timeout,
>   };
> diff --git a/drivers/scsi/scsi_transport_fc.c b/drivers/scsi/scsi_transpo=
rt_fc.c
> index 0799700b0fca77..7d088b8da07578 100644
> --- a/drivers/scsi/scsi_transport_fc.c
> +++ b/drivers/scsi/scsi_transport_fc.c
> @@ -4288,6 +4288,7 @@ fc_bsg_hostadd(struct Scsi_Host *shost, struct fc_h=
ost_attrs *fc_host)
>   	snprintf(bsg_name, sizeof(bsg_name),
>   		 "fc_host%d", shost->host_no);
>   	scsi_init_limits(shost, &lim);
> +	lim.max_segments =3D min_not_zero(lim.max_segments, i->f->max_bsg_segme=
nts);
>   	q =3D bsg_setup_queue(dev, bsg_name, &lim, fc_bsg_dispatch,
>   			fc_bsg_job_timeout, i->f->dd_bsg_size);
>   	if (IS_ERR(q)) {
> @@ -4320,6 +4321,7 @@ fc_bsg_rportadd(struct Scsi_Host *shost, struct fc_=
rport *rport)
>   		return -ENOTSUPP;
>  =20
>   	scsi_init_limits(shost, &lim);
> +	lim.max_segments =3D min_not_zero(lim.max_segments, i->f->max_bsg_segme=
nts);
>   	q =3D bsg_setup_queue(dev, dev_name(dev), &lim, fc_bsg_dispatch_prep,
>   				fc_bsg_job_timeout, i->f->dd_bsg_size);
>   	if (IS_ERR(q)) {
> diff --git a/include/scsi/scsi_transport_fc.h b/include/scsi/scsi_transpo=
rt_fc.h
> index 483513c575976c..fd039306ffbb20 100644
> --- a/include/scsi/scsi_transport_fc.h
> +++ b/include/scsi/scsi_transport_fc.h
> @@ -709,6 +709,7 @@ struct fc_function_template {
>   	int  	(*vport_delete)(struct fc_vport *);
>  =20
>   	/* bsg support */
> +	u32				max_bsg_segments;
>   	int	(*bsg_request)(struct bsg_job *);
>   	int	(*bsg_timeout)(struct bsg_job *);
>  =20
That looks like an odd alignment...

Anyway:
Reviewed-by: Hannes Reinecke <hare@suse.de>

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
one-eyed-alien.net/d/msgid/usb-storage/db9cefa4-b9c0-4a40-b232-68423fa98271=
%40suse.de.
