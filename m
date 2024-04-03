Return-Path: <usb-storage+bncBCHZVHVFVMARBJ4BWSYAMGQELLVGT5Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x546.google.com (mail-ed1-x546.google.com [IPv6:2a00:1450:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D0B896578
	for <lists+usb-storage@lfdr.de>; Wed,  3 Apr 2024 09:09:28 +0200 (CEST)
Received: by mail-ed1-x546.google.com with SMTP id 4fb4d7f45d1cf-56c1b114528sf1721491a12.0
        for <lists+usb-storage@lfdr.de>; Wed, 03 Apr 2024 00:09:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712128168; cv=pass;
        d=google.com; s=arc-20160816;
        b=E31yywbegqXgyXjz4ewN+uRVJk+m5Ga3E1i/va+bp5TxvsA6zOAGZff4T/KqhbhQKK
         6OUX7HfRwIMi1+5ZBRfJge8UCE5HeUttQKDXYOWrkq7AjDCrvlqh+OP+FWm/DZw6X7fG
         nsoJmmRCRE3ilNGAuX/ayVBsZ8W5T1YCzp1g46onPKJJ2S+xi09O6CVY9G0UioTpWHuY
         3jQYkus+b622XpdJC/kSpMwAxW0kw312EbZ4dbthrbNsvd0yA00DRcHoKl6skaqgrVTB
         8rzgoJzk5Mg2bl+QczldxG2dz4P2qQO928OonqCnFC3sWUGAjVkQeTFrIIgFuCnJlBi4
         4u9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=zNawFxW4dMY8vxTL94As/TzVuELnWVmDXDHl+3aj80M=;
        fh=dB6cBQ1Ouf8COOLz+9FRzmHPUa3tamD3p1r5k/TYiHY=;
        b=sUH8fNySHUoFFl67fxHBc3u8bAe2Jq9CtV1tJwnO212UPCNdxEjZSln37xVzfm2oHn
         /g2TB2rZv95Tmz4APTrTVBhyC1dfv7P3pmaGsDIH82gUCIHvHgb3p2/Gd4oc+0LcmxIH
         m0BaqAJg3Bt79GnlhBc6BClSnbUbmkuvjm6zPf5+8HdoJabLq7Bsg7Re/n1zsYftYk5o
         U1LZBT3vbce/6wtupJuExOkv6SFhEXeDIRnUONvOV93d8dIkO5mJLviHmPe/kAXAlxV3
         nbkIUAxEPlJ9Sbo6NH2Y11kPEwIIJXzeKQYU5hMxH3qjsAxbznICXyLrFWVPt6UpUSvP
         +cQQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=0TahLujH;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519 header.b=rBrAkxTO;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.223.130 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712128168; x=1712732968; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=zNawFxW4dMY8vxTL94As/TzVuELnWVmDXDHl+3aj80M=;
        b=URO1IR0XH7neoEdtahpbS7Vsr4g7yMIAOOdPqBchyjHLBog9mQSwAZvRwy0oQQPisG
         25b4baQLhT4raZykHWavaYvNTQx2HO9Wy4Teemjr08Am8RZu9MljbDCpZuDOK2Cp0OTB
         LJpbMGjrltmanv1CvQGEAWDsZWZIVg7ZOLq2M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712128168; x=1712732968;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zNawFxW4dMY8vxTL94As/TzVuELnWVmDXDHl+3aj80M=;
        b=qPCjf0yDrYOUBaozqBDU8VNw1dMPQBuLOV0OFgVKMJum1pZcrDOdTXUivTgJXJUsq8
         Lp85+n9oONi2fpzGwOiHlM1uZzc0Au1EPO7u25Prl2t4bC2sndJHFDFIPfEx62yBlSOQ
         OXlcvsmv+rL8zMDoD3/aCWbjgKCVHM4PAhAzbFuegvCupC5l5mFIlhJEh92GbUk+vdcW
         oRBYPMds9aT1vDrtLQAS9bVL2pNs1X2GM1a7Li8zchOooeUVNBAcjSoosG0y8HDnWCXc
         rg0retmNXlhErcgDJCxm3EfSVwrXKqyBVCU2RvuLp50hACcf4/O10dHzDnVGE5lu/Coq
         AedQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCW7uNAjnYYxPg/s2js9czeJNHqUMIWMDGLbyPjvkd8beeeSuwa8NF7h964KZ/Z5SM9D1rHA397srRa4c0hRbhfc3ID9NcpCjGCB
X-Gm-Message-State: AOJu0YygBL6dlPJP+xDCC9sPl4m72X8An1qFEoUd4Vff+d/Zcng6SmV7
	9bLQkHp90LjnOQClIC1uO26EhFL5Ne0ANyK0IWBK2r+7Z1bdPWyBFrfwFvfn8DAVbZKmxpM=
X-Google-Smtp-Source: AGHT+IEb+xMaaIkM2p2v27ToMEndhnfObTGcPeRPdyXxmdQnOnCIUi6H/GEjH9zuL8eM7HICrM67fA==
X-Received: by 2002:a50:8d1d:0:b0:56b:a7e3:7426 with SMTP id s29-20020a508d1d000000b0056ba7e37426mr9278612eds.34.1712128167949;
        Wed, 03 Apr 2024 00:09:27 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:268a:b0:56c:4cac:5ddf with SMTP id
 w10-20020a056402268a00b0056c4cac5ddfls516381edd.1.-pod-prod-01-eu; Wed, 03
 Apr 2024 00:09:26 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVHpN51/cVXXiGcm/iXXwZ9uRJhOJVQq2tslI9krNaqjwY7CBX2Qb41sXkkYkRSyvhoHXnqe+VcC6mRVKKQhUNZ6OEeSRb+YfGJnkIGZxLrXUXY45o=
X-Received: by 2002:a17:906:e202:b0:a48:56b2:d988 with SMTP id gf2-20020a170906e20200b00a4856b2d988mr8297763ejb.59.1712128166219;
        Wed, 03 Apr 2024 00:09:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712128166; cv=none;
        d=google.com; s=arc-20160816;
        b=ZfDqCCtFQBxbP1odVJGpMnukYRQ83POI7Qaqpvtx0T/mkVxOlGJHXTgPGfR5brEg+E
         dlVpJAkWi8Y7IanTS9JtItGrwbnmNzZeEVeE5cnwrx4RMbmxxgS+p05+/FEBFrWrxehH
         VrzDNVwtgDteIRjx2YKOyhmQEN1XGTx51AG+pHMl5khMPTDPNKt/M+O/rBJtRWzYSX2N
         7TiS2CATb8K45N3NB1rxUC8oguXm0wDliwsUd0cIeH9YkYSBdAQFUssf8DbU4ALRj/be
         YbtmpKunBU9rutLvoQmYUHOqKgn6gGVGImIcLqJVsN80xvyY2wfkyMaLSWUWH9uGuoB4
         S01w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature;
        bh=kM0T2C7OaStWnapOFShY6ZpfWTrM9PZp8Av+K0pCkYg=;
        fh=9aauSyI5eQk5b4s5O16fFO5a6x/LXiZqBjzkmnuA6As=;
        b=G8Q4C5V3YWtKB8B2/AUzXfoY6EFa9gfa9Sy5skskphPT4YyHclAVYSpBwPDqYfWVeQ
         wUzgxkeiHCyP1XVuEKla+qgwyA4YGrLvKpJbDEwjdqZLyhL/GFXuLwoBesirtjgOyYkP
         DQHGN7nIaT+irv8vFy+GydikVRT7LZOdFWpZatE6C4m0SNuRCb5zltqKATYLBTl8Nnzi
         01vVuOfkUOpEaS5tHmyKH9xwYBEDKjZgSwRv19ZqwuEqdVpWnm4owen1V4M8UtE6djav
         vR2AOKPeAYwUQ3/NG8b8QYnK0whwciGIhc79VNTwtfwvPL26bO3ZvZjQigPaUyRun2aA
         V8Lg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=0TahLujH;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519 header.b=rBrAkxTO;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.223.130 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out1.suse.de (smtp-out1.suse.de. [195.135.223.130])
        by mx.google.com with ESMTPS id b16-20020a17090636d000b00a4635b643afsi6228789ejc.985.2024.04.03.00.09.26
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 00:09:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.223.130 as permitted sender) client-ip=195.135.223.130;
Received: from imap2.dmz-prg2.suse.org (imap2.dmz-prg2.suse.org [10.150.64.98])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id EBD1B3501F;
	Wed,  3 Apr 2024 07:09:25 +0000 (UTC)
Received: from imap2.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap2.dmz-prg2.suse.org (Postfix) with ESMTPS id 109E313357;
	Wed,  3 Apr 2024 07:09:21 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap2.dmz-prg2.suse.org with ESMTPSA
	id 2HEdOaEADWYlEQAAn2gu4w
	(envelope-from <hare@suse.de>); Wed, 03 Apr 2024 07:09:21 +0000
Message-ID: <1c7f7d52-e7bb-4e79-aee0-778e7b08ffa1@suse.de>
Date: Wed, 3 Apr 2024 09:09:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 13/23] sbp2: switch to using ->device_configure
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
 <20240402130645.653507-14-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <20240402130645.653507-14-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-1.56 / 50.00];
	BAYES_HAM(-1.27)[89.78%];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lst.de:email,suse.de:email]
X-Spam-Score: -1.56
X-Spam-Level: 
X-Spam-Flag: NO
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=0TahLujH;       dkim=neutral
 (no key) header.i=@suse.de header.s=susede2_ed25519 header.b=rBrAkxTO;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.223.130
 as permitted sender) smtp.mailfrom=hare@suse.de;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=suse.de
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
>   drivers/firewire/sbp2.c | 7 ++++---
>   1 file changed, 4 insertions(+), 3 deletions(-)
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
one-eyed-alien.net/d/msgid/usb-storage/1c7f7d52-e7bb-4e79-aee0-778e7b08ffa1=
%40suse.de.
