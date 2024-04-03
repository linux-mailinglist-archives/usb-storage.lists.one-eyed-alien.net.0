Return-Path: <usb-storage+bncBCHZVHVFVMARBYH2WOYAMGQEQJWYKWY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x548.google.com (mail-ed1-x548.google.com [IPv6:2a00:1450:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7AF8964FE
	for <lists+usb-storage@lfdr.de>; Wed,  3 Apr 2024 08:55:29 +0200 (CEST)
Received: by mail-ed1-x548.google.com with SMTP id 4fb4d7f45d1cf-56c1ac93679sf4276423a12.2
        for <lists+usb-storage@lfdr.de>; Tue, 02 Apr 2024 23:55:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712127329; cv=pass;
        d=google.com; s=arc-20160816;
        b=q8B9f0TtOhfuR3wueluDW+3q0uXbm8+g62BqwXl8caBrY6b2S88NgDNZ1OI5x+fknL
         BztP+ueqKhsbndqkh/YoY7ckPse7dqza8YQusa2X3vBjugFTPO0wM2ZvTR9wNL1g8QYc
         JDPZkPtGFibu294s3vjgp7nj2KmXQkPiIFQZ7M7701eU3YoOJ7Zc2lnOALjvrg6eCRCC
         0EO4EeX2Uarfugkt402QuGhDwBdHMuZdbtd/hwXOlbjItbeWqlJp+qUr1YZHWVDFvwJ3
         e5WcK8mx9mZWs6bCVHT4RocAxZ8V0cPdK4HC5esUuz8126pQElfucg7XUXbzdD9lgNbM
         nsow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=1pWNk18IFeS4JBbu8FOkWpfLAxgWrZycfNx7RtFI+Tw=;
        fh=7lEbubd3bGZiZR25VIimaiIjFVt/qxOyzMHhgJtsRpQ=;
        b=ifELC3lGa6Bi2MDBdqU1iOL1RddUqdpE6PxUrlVw2hj3WyXJM9bgFI+cX8VsXUHF8h
         RL/mym+pcH67ivu0qAcuq4aNK7O2SqzuNgt6Rn1SKeamQ9y6hJGpkNoLa8DxeXj/riYf
         ARNrc+wzqhaB2pBgEarXmcDJ+ySUF4RqeNIT9sWrFXnDiZKt+ChOKKI3Z8Pv6IofGb2w
         CP0frDDjZo2KfTRkopkfvf4clq8TiAC7MNWgScA3spbcypx/1zyqU9ZE1TZ8Bon/wblo
         d1K7FsiavV/kFF3gqAYGGcwMn0tcl0ronQfB9SUnfhnIVFc6Es8CQUqw740/1RSj0mcm
         jOLg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=itHbDmfk;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.223.131 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712127329; x=1712732129; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=1pWNk18IFeS4JBbu8FOkWpfLAxgWrZycfNx7RtFI+Tw=;
        b=MMOlxtPLe2amfBZ/TC6m02c+SZev00W5mVdcNButsnSyCNIJDOfIvbPLkz7Duyi22m
         dzw9u9QYVM+QdKqQWixnznUF5pDVaIQnRRs/jYiw2qbh+1yuKSJ/3kv0ANTXKskWrVtK
         ykpKHJRw4fZ3MM7ibM6+i1YvdZ+yXsuCO2NE0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712127329; x=1712732129;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1pWNk18IFeS4JBbu8FOkWpfLAxgWrZycfNx7RtFI+Tw=;
        b=hVqzeeQJs+U0rDV67G9Ks2KR9duaKwtjI4JZcnGt68KfyfbnRUGybO5nZQJwIko/f2
         xsWO5NOKrdJy/Ic0trYSIuBA80s0e0rwz3WCnj2yNPHzK/soJrNmlYs4AhDRJqjGCjA9
         02rhmCZ+2ZP1zYyO3l/kNDGMQGnYbL43PKRny3qRp3Vw2jO92mQG+3Bft/iM90Py4pRw
         mJ3dsp8NRm82jNhdmGzA2qIRyisr0mUFDJTcF1nhlNYJy/PKJ1aJPJUjNOBcitt9huSe
         /WTGI3BF25RWVHHqMRgBHh6t7jx/LbKQA/grf5fV0opREwfSwfcGQIlflJEfpmy4vQMy
         TWuw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXGtzU9fn1TpKJWFSXpthKKXle+j8Bz3p68sLr5DVY7jsQwrV84x3QJNouJOltKvUVtG5w/lD0mHhYHO3uqFNKQANiuodGSfCdk
X-Gm-Message-State: AOJu0YxKunqfrjD0kTyJN6b5+JNVxw/yAm+iWlEDKLRb9u9k0njKaMTN
	PdpBcm8deYCC4h/+oGIRLCuM9VhLlBSpUO5dL8vZd7O1KcqE2dDn6LVl3TApmkg=
X-Google-Smtp-Source: AGHT+IH4Ep1FisCAdk+FOijSdbXxleNcdsWQWpFAW4JQlkLdDVYUmCJRWHl7r5XY5Twr0wYPqL0YTg==
X-Received: by 2002:a50:d501:0:b0:56e:bad:36b with SMTP id u1-20020a50d501000000b0056e0bad036bmr131255edi.21.1712127329055;
        Tue, 02 Apr 2024 23:55:29 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:4311:b0:56d:e746:ab95 with SMTP id
 m17-20020a056402431100b0056de746ab95ls862394edc.2.-pod-prod-04-eu; Tue, 02
 Apr 2024 23:55:27 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVCe8whHzSQLA9EHwoSENZ/SsZFE43Rx4h5I54vuKhpWV3N/4aMmVgQeEaHzmESv4PWMBFV69Iy3oDL4GSrOkmZwqq2y2JClnkdmfSJuY3/OuGXFBM=
X-Received: by 2002:a17:906:e8b:b0:a4e:eab:a8c1 with SMTP id p11-20020a1709060e8b00b00a4e0eaba8c1mr9710366ejf.33.1712127327521;
        Tue, 02 Apr 2024 23:55:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712127327; cv=none;
        d=google.com; s=arc-20160816;
        b=peNTYecVplTqPIG/0g1vN231fJ6/KD88ZiWcql3clBhj/ikgccoa7oKoxZLjePNALO
         k10nZN2uMudjq6bUmoIWKjV1Vo4r+EENAS0yAQ6957PU02xdcwkcCjQ0qstIynAytQYn
         hwvgG4vGCt+i1Jk8ZVm+bULZfJrDucgYQXdLNmpWsTmZhx+/oOWo+1GYdfcCeeklNQi7
         Q8te0j9RIfVVlc+dT0DZn627IXM1K2IONIkwxQTg5GUOIJu3AsC4R+cFTodU+sZwwvzf
         RqYhgGKp4HdYS8w/8yRgTe363A+EVbKKonWv3qe5rY2qr2kwBt2WC/bkC36Bze72MsUR
         vtXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature;
        bh=B4Rk3nTXicXzf6+jzQoIlO860P+MmVaWukmgEMPG/x0=;
        fh=9aauSyI5eQk5b4s5O16fFO5a6x/LXiZqBjzkmnuA6As=;
        b=EdA8WfO4Wx86RbuNo5IuokVNLJ3EAQw5TW16K3MwWxQlmW8o49OmK7jl5Ts/Z/kvha
         OKRFA3Ug6LLUh2Yc3N1ad7wFYGtBFBaK87w72Ozo5b/F5wvonWMgfM2bOhRt6Y2EFvGT
         rG/DqoDk81XniIA4dLXDp3W8Tk/wtR0Yolg7IThmaShsVcNysxvpxgVXAlVQLKkiCIey
         jWhNFgU97BfWH6BG+tvphAmlGVKS3XxtTZ3x6CZZlX+TyRIoKScyE65J+hBOJXFsLMdZ
         jtOzeZV4bKEYSLEXySyjsXmuIZWsM/Icd6Cog7ConWHMxgirT6PPPxHkBGcFW1jBvIfH
         JLEw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=itHbDmfk;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.223.131 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [195.135.223.131])
        by mx.google.com with ESMTPS id qw33-20020a1709066a2100b00a4748283c4dsi6801908ejc.253.2024.04.02.23.55.27
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 23:55:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.223.131 as permitted sender) client-ip=195.135.223.131;
Received: from imap2.dmz-prg2.suse.org (imap2.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:98])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 003F65C8F4;
	Wed,  3 Apr 2024 06:55:27 +0000 (UTC)
Received: from imap2.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap2.dmz-prg2.suse.org (Postfix) with ESMTPS id 8000B13357;
	Wed,  3 Apr 2024 06:55:25 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap2.dmz-prg2.suse.org with ESMTPSA
	id aJkVHV39DGbeDAAAn2gu4w
	(envelope-from <hare@suse.de>); Wed, 03 Apr 2024 06:55:25 +0000
Message-ID: <9ebcdb1c-ebb6-4e72-83e8-f360fbc8754a@suse.de>
Date: Wed, 3 Apr 2024 08:55:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 07/23] scsi: add a dma_alignment field to
 the host and host template
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
 <20240402130645.653507-8-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <20240402130645.653507-8-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Spam-Score: 1.84
X-Spam-Flag: NO
X-Spamd-Bar: +
X-Spamd-Result: default: False [1.84 / 50.00];
	 ARC_NA(0.00)[];
	 RCVD_VIA_SMTP_AUTH(0.00)[];
	 XM_UA_NO_VERSION(0.01)[];
	 FROM_HAS_DN(0.00)[];
	 TO_DN_SOME(0.00)[];
	 TO_MATCH_ENVRCPT_ALL(0.00)[];
	 BAYES_HAM(-0.50)[79.90%];
	 MIME_GOOD(-0.10)[text/plain];
	 RCVD_COUNT_THREE(0.00)[3];
	 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	 MX_GOOD(-0.01)[];
	 NEURAL_HAM_SHORT(-0.20)[-1.000];
	 RCPT_COUNT_TWELVE(0.00)[42];
	 DBL_BLOCKED_OPENRESOLVER(0.00)[lst.de:email,suse.de:email];
	 NEURAL_SPAM_LONG(0.43)[0.124];
	 FUZZY_BLOCKED(0.00)[rspamd.com];
	 FROM_EQ_ENVFROM(0.00)[];
	 R_DKIM_NA(2.20)[];
	 MIME_TRACE(0.00)[0:+];
	 RCVD_TLS_ALL(0.00)[];
	 MID_RHS_MATCH_FROM(0.00)[]
X-Spam-Level: *
X-Rspamd-Server: rspamd1.dmz-prg2.suse.org
X-Rspamd-Queue-Id: 003F65C8F4
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=itHbDmfk;       dkim=neutral
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
> Get drivers out of the business of having to call the block layer
> dma alignment limits helpers themselves.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Bart Van Assche <bvanassche@acm.org>
> Reviewed-by: John Garry <john.g.garry@oracle.com>
> Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
> ---
>   drivers/firewire/sbp2.c           |  6 ------
>   drivers/message/fusion/mptfc.c    |  1 +
>   drivers/message/fusion/mptsas.c   |  1 +
>   drivers/message/fusion/mptscsih.c |  2 --
>   drivers/message/fusion/mptspi.c   |  1 +
>   drivers/scsi/hosts.c              |  6 ++++++
>   drivers/scsi/iscsi_tcp.c          |  2 +-
>   drivers/scsi/qla2xxx/qla_os.c     |  6 +++---
>   drivers/scsi/scsi_lib.c           | 11 ++---------
>   drivers/staging/rts5208/rtsx.c    | 24 ++++++++++++------------
>   drivers/usb/image/microtek.c      |  8 +-------
>   drivers/usb/storage/scsiglue.c    | 11 +++++------
>   drivers/usb/storage/uas.c         | 13 ++++++-------
>   include/scsi/scsi_host.h          |  3 +++
>   14 files changed, 42 insertions(+), 53 deletions(-)
>=20
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
one-eyed-alien.net/d/msgid/usb-storage/9ebcdb1c-ebb6-4e72-83e8-f360fbc8754a=
%40suse.de.
