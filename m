Return-Path: <usb-storage+bncBCHZVHVFVMARB277WOYAMGQEZUB7A6Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x547.google.com (mail-ed1-x547.google.com [IPv6:2a00:1450:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9BA896550
	for <lists+usb-storage@lfdr.de>; Wed,  3 Apr 2024 09:06:20 +0200 (CEST)
Received: by mail-ed1-x547.google.com with SMTP id 4fb4d7f45d1cf-568a9f3ba97sf4282949a12.1
        for <lists+usb-storage@lfdr.de>; Wed, 03 Apr 2024 00:06:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712127980; cv=pass;
        d=google.com; s=arc-20160816;
        b=1GkDz12wPEmkupPdtLOtoYhk5fxyBUFBCbxopmZJZXBkD6Pcx7MH3lXsP1F0N7tasz
         fvQTFLV/RiiS/gPNqZ+4n7/iJrh6ad1exbqMMCvjKFi2BrquUaDWY8O142r9DVGBORCy
         N6NQK+snf6nvAaiL4KeQMkJ2ew3eYYGIzgAQhKFYi+bu64AlwsLqKgUon5qtzIaHGVbv
         HPeG5OdlcLYnXqhHCrvrw6IdmwUCpcUMIrQoqKlB8GyykoriHzKacU92K/WCKEiU/TWt
         p5dDkepnzTYK5IPUNtVjqHD7NDRMSgjKYsVEEjwztAxTdZmw8MHJ4BQ3rhxjVtbiYngz
         wpRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=MfPDc8kBhAcAI3g7F4ftEBgg99vF3Ude3nCj1t2HOUw=;
        fh=IrwLr4ddAuA8VtBaK1QJtfM9y9FoPFPoBo0hAw8o/Xs=;
        b=gkgugf0xIYc5yMCkHPAb6Sf2lYM5RxdvOLzrxoU2sTebZEty6vZbT+GNwNxQJE8Voh
         dP88evZZUtRSCoFh4J/ndb9Jb6+Nz6Oe8LU7UhQLCr5oww3U0aVFUYyOC0mgjDBHyyR2
         k32zmWU3Ftjebbnh+u5tSgX0mtEJRTB0qZccI17GGacqCsFWmpv4ow0TaN/uoRXfZlHT
         n89Tjpot/Tpc4m1JVWIVc6hRHYMTW38sAeBPzu+fcclRB1pwbAnqkB5UCWQHnES03Oov
         AUY56mbttAAG7mEhVgHFi0v+xeOOvX0vQbPEaBXPy5E4qBIuzBDZEEMHfAHttFQg7C0M
         4p1g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=szckVdgs;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.223.131 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712127980; x=1712732780; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=MfPDc8kBhAcAI3g7F4ftEBgg99vF3Ude3nCj1t2HOUw=;
        b=KNx7Cms5YIBCkxkp2j9rC8JN9b9M+90xla53NOew8AG1wqJMaB7NOvZDE48Ei3vemn
         rbUHOV+pdz1bDVQ+eF4TXFoQg/ko4IEhnZzSFvL8ImdTnAxjD+v0JLHN5IwunuVEbD22
         GsM1qBPg8aUTwciBWWY+raLNn541pFdrVfGTw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712127980; x=1712732780;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MfPDc8kBhAcAI3g7F4ftEBgg99vF3Ude3nCj1t2HOUw=;
        b=LdOcav9aaRYM1xkhHN8h2hg/jtbKiuTGi3feHZrh8F2HyKwABxLhUb0M8q23cJFv89
         K6e/4LA8duo3f0kjom0c9w97KYpFu1Rno2Rb/ApxyXu4m3YtI2HIrxFbU2s/sSUwDdVB
         d7gnqQe90ZcG4FsA7cuR97wEZj3yvLYwCXAFgnDW/m1lfq36TPVIfma3bL4p4RUS3oZF
         TQjUD68j762y1yikuV3O16TAHNo5lrsXrraKaEAYO8/nwYI2B26qd9Lme8eWzMeKvZCL
         EU5tjhwK9aYwAojyCC/j62uEgrVe35TzApIY0WcNX02hPy/JflFnPvkVcCahwObJ8L4b
         gAjQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUpMmmZATF0f69MlKqza+7iMYU2uf53TYlpIBiq36HNT0Ek76I7HXPegf7GU+xpkITG36TN4w9WZrSj+PizSvH1mISH3OBxk6JC
X-Gm-Message-State: AOJu0YxqaSFSCiIrDy93i0OQfWx9Qz6ewFkdTgHDr5Dhr3502gftQ0wg
	9CE40olcqFN9KXpw3jckmj8LjIt8O/rfbcBnG22qhppCBczywX7uwIp3RJ4EMFo=
X-Google-Smtp-Source: AGHT+IGfF4mpXL4xb30MvqfiXPjKp+6u1yQuHHNE5/LC3G5sC/rt6YGfGJ/TNV/aw7HxpiUMwxwuwQ==
X-Received: by 2002:a05:6402:34cf:b0:56c:26f4:bfe9 with SMTP id w15-20020a05640234cf00b0056c26f4bfe9mr8421376edc.27.1712127980094;
        Wed, 03 Apr 2024 00:06:20 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:520a:b0:56c:4c79:16aa with SMTP id
 s10-20020a056402520a00b0056c4c7916aals1234954edd.1.-pod-prod-06-eu; Wed, 03
 Apr 2024 00:06:18 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWeEtXgdkRs6z7D+ZQL1mnosSM5c2AwKLhGfwaxMlicOKnHAlu/W2LdSDsWmwgWCZzUhMPenrJodQ3mtET1ChvqGIAGqp2SCB+3KH1CxeTvRg4uM68=
X-Received: by 2002:a17:906:6b0b:b0:a47:3378:48f4 with SMTP id q11-20020a1709066b0b00b00a47337848f4mr8796891ejr.35.1712127977977;
        Wed, 03 Apr 2024 00:06:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712127977; cv=none;
        d=google.com; s=arc-20160816;
        b=05EWTwecRqMgBu71aU2n/cDKD9eKZ6DPInUHDeBqI2SCvAmqZRkaqBk3DcnCrz4nch
         0fOOVuH7uwPLX2wgqMSzgct4gTHa0/vG1tj9FK6NYrrukVh76WTZG14KEPqeA8nqe8av
         td6wXDQajcxRiDDEM+/YNfNhSsFTjY9arqfRyGczqHIrDxQEdgEqvo+4h4GJT7WV1u71
         4L9lydyT5JArPPmogLkqWQWUsgDCaPHn/nu6sJqKNBU+CdCTZDM6bxq9yBiVZ+E55PJQ
         THWCaEhMUcX1ilUYgdPfS/EG+VO+QFF2lGQBHu4qVZGdVYessy/u8Odx3floVobxQwBo
         KugA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature;
        bh=wIvsQfFIhfnJPerBO+JoS38ScrQ+EYMMEjWxZ5bIlsM=;
        fh=9aauSyI5eQk5b4s5O16fFO5a6x/LXiZqBjzkmnuA6As=;
        b=zrsZsPzr7bQKUlECnGTZ2ExA0Mh1M0Hr/ys1EQRb0aM5z9ew07UfnEeZ5I9YJYh9NB
         X4E7XoTQtWLlN+6iltVAszyLFwiBgwgOeGEb2TnQzX3YYSObJ4DJOwwvZ6wfYu0BbdH0
         mAWZ2XKzHTKR0GR6SoGNvoECj5/u4bDnS+mNr2GCP8Gj6RrtRmgpB4Al1a+1bo45kB0l
         amErcMk4CS76wQXeQMxcS8yEDGu5vn0J03hPOHYTrOnXrOdcZnZqzQKmm2Xc63soywwa
         TtKhVHxX1FHoch8mlcJ5z/zf3LnoOZdpmfb6mF/DMFlsUnvaClnVapzs+Vpz5+5i7nRQ
         wptQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=szckVdgs;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.223.131 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [195.135.223.131])
        by mx.google.com with ESMTPS id dt2-20020a170906b78200b00a47100a7144si6744430ejb.199.2024.04.03.00.06.17
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 00:06:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.223.131 as permitted sender) client-ip=195.135.223.131;
Received: from imap2.dmz-prg2.suse.org (imap2.dmz-prg2.suse.org [10.150.64.98])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 3C3725C3A6;
	Wed,  3 Apr 2024 07:06:16 +0000 (UTC)
Received: from imap2.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap2.dmz-prg2.suse.org (Postfix) with ESMTPS id A476913357;
	Wed,  3 Apr 2024 07:06:14 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap2.dmz-prg2.suse.org with ESMTPSA
	id MvFsJub/DGZnEAAAn2gu4w
	(envelope-from <hare@suse.de>); Wed, 03 Apr 2024 07:06:14 +0000
Message-ID: <9f555953-6b41-4962-8f43-339326e30d6a@suse.de>
Date: Wed, 3 Apr 2024 09:06:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 11/23] megaraid_sas: switch to using ->device_configure
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
 <20240402130645.653507-12-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <20240402130645.653507-12-hch@lst.de>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[imap2.dmz-prg2.suse.org:rdns,imap2.dmz-prg2.suse.org:helo,suse.de:email,lst.de:email]
X-Spam-Score: -3.29
X-Spam-Level: 
X-Spam-Flag: NO
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=szckVdgs;       dkim=neutral
 (no key) header.i=@suse.de header.s=susede2_ed25519;       spf=pass
 (google.com: domain of hare@suse.de designates 195.135.223.131 as permitted
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
>   drivers/scsi/megaraid/megaraid_sas.h        |  2 +-
>   drivers/scsi/megaraid/megaraid_sas_base.c   | 29 ++++++++++++---------
>   drivers/scsi/megaraid/megaraid_sas_fusion.c |  3 ++-
>   3 files changed, 20 insertions(+), 14 deletions(-)
>=20
> diff --git a/drivers/scsi/megaraid/megaraid_sas.h b/drivers/scsi/megaraid=
/megaraid_sas.h
> index 56624cbf7fa5e7..5680c6cdb22193 100644
> --- a/drivers/scsi/megaraid/megaraid_sas.h
> +++ b/drivers/scsi/megaraid/megaraid_sas.h
> @@ -2701,7 +2701,7 @@ int megasas_get_ctrl_info(struct megasas_instance *=
instance);
>   int
>   megasas_sync_pd_seq_num(struct megasas_instance *instance, bool pend);
>   void megasas_set_dynamic_target_properties(struct scsi_device *sdev,
> -					   bool is_target_prop);
> +		struct queue_limits *lim, bool is_target_prop);
>   int megasas_get_target_prop(struct megasas_instance *instance,
>   			    struct scsi_device *sdev);
>   void megasas_get_snapdump_properties(struct megasas_instance *instance)=
;
> diff --git a/drivers/scsi/megaraid/megaraid_sas_base.c b/drivers/scsi/meg=
araid/megaraid_sas_base.c
> index 3d4f13da1ae873..def0d905b6d9e3 100644
> --- a/drivers/scsi/megaraid/megaraid_sas_base.c
> +++ b/drivers/scsi/megaraid/megaraid_sas_base.c
> @@ -1888,7 +1888,7 @@ static struct megasas_instance *megasas_lookup_inst=
ance(u16 host_no)
>   * Returns void
>   */
>   void megasas_set_dynamic_target_properties(struct scsi_device *sdev,
> -					   bool is_target_prop)
> +		struct queue_limits *lim, bool is_target_prop)
>   {
>   	u16 pd_index =3D 0, ld;
>   	u32 device_id;
> @@ -1915,8 +1915,10 @@ void megasas_set_dynamic_target_properties(struct =
scsi_device *sdev,
>   			return;
>   		raid =3D MR_LdRaidGet(ld, local_map_ptr);
>  =20
> -		if (raid->capability.ldPiMode =3D=3D MR_PROT_INFO_TYPE_CONTROLLER)
> -			blk_queue_update_dma_alignment(sdev->request_queue, 0x7);
> +		if (raid->capability.ldPiMode =3D=3D MR_PROT_INFO_TYPE_CONTROLLER) {
> +			if (lim)
> +				lim->dma_alignment =3D 0x7;
> +		}
>  =20
>   		mr_device_priv_data->is_tm_capable =3D
>   			raid->capability.tmCapable;
> @@ -1967,7 +1969,8 @@ void megasas_set_dynamic_target_properties(struct s=
csi_device *sdev,
>    *
>    */
>   static inline void
> -megasas_set_nvme_device_properties(struct scsi_device *sdev, u32 max_io_=
size)
> +megasas_set_nvme_device_properties(struct scsi_device *sdev,
> +		struct queue_limits *lim, u32 max_io_size)
>   {
>   	struct megasas_instance *instance;
>   	u32 mr_nvme_pg_size;
> @@ -1976,10 +1979,10 @@ megasas_set_nvme_device_properties(struct scsi_de=
vice *sdev, u32 max_io_size)
>   	mr_nvme_pg_size =3D max_t(u32, instance->nvme_page_size,
>   				MR_DEFAULT_NVME_PAGE_SIZE);
>  =20
> -	blk_queue_max_hw_sectors(sdev->request_queue, (max_io_size / 512));
> +	lim->max_hw_sectors =3D max_io_size / 512;
> +	lim->virt_boundary_mask =3D mr_nvme_pg_size - 1;
>  =20
>   	blk_queue_flag_set(QUEUE_FLAG_NOMERGES, sdev->request_queue);
> -	blk_queue_virt_boundary(sdev->request_queue, mr_nvme_pg_size - 1);
>   }
That now looks odd.
We're taking great pains to have everything in queue_limits and avoid=20
having to use the request_queue directly, yet this one call we're missing.
Wouldn't it make sense to move that into queue_limits, too?

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
one-eyed-alien.net/d/msgid/usb-storage/9f555953-6b41-4962-8f43-339326e30d6a=
%40suse.de.
