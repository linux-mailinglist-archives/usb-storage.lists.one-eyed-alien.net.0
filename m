Return-Path: <usb-storage+bncBCHZVHVFVMARB6XXWOYAMGQEQQHI3QY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lf1-x148.google.com (mail-lf1-x148.google.com [IPv6:2a00:1450:4864:20::148])
	by mail.lfdr.de (Postfix) with ESMTPS id 9987C8964DC
	for <lists+usb-storage@lfdr.de>; Wed,  3 Apr 2024 08:49:31 +0200 (CEST)
Received: by mail-lf1-x148.google.com with SMTP id 2adb3069b0e04-515bbb9a73asf4854534e87.0
        for <lists+usb-storage@lfdr.de>; Tue, 02 Apr 2024 23:49:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712126971; cv=pass;
        d=google.com; s=arc-20160816;
        b=iLFTvftzNj9t/dT1jFmXJ/jgkbgV3IkDLJB0RL88cqbS81omKZ/gMz6R/oPlX5rz2S
         POZr0R43kJQaH8nt1giNjVJe2laGmSCjbETNSqVg/nUsxvwX8JKx3cYpxNXJE+lt5fWh
         SyyeGugcw8xSNKTwSfvu6HXh4yLjNj+z8b37NqRkCNpES3jNTam6619P5kBLtv7SoIxW
         vKKQ3SK26NVjHapdC618LuNQ7JSsbFpi+yJ9wJVnvohwmQ+HbP2fSttcR8dOUE6TyB2I
         qwfmKZQPqjEUNZ7te10xdiG0YWVYZmKk0OuJXoEry0Ni7JPDJNI8CI5eSGVAqWAK91M/
         msig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=aCzalvjR4IHRSjipcHYL00rMl+E9QBKfd5/Q0L+7cTY=;
        fh=ujHG54E+YaCpbj54lPHHJ3M/gLBZ+mJJkdPBQnKzVe4=;
        b=T2yzPuCj5xixuHS+rIGGtJjFtUpw9/Xvem8M0YN+HAbYFYnp433TxfR5jVvV5lbZ8A
         6xtUyOPHu1eFxh5PFjkWjDw00i3rwuYNo6mr4BTfu8U3Nh4ge+yLra+po8L1GnNbtvQL
         vrW5mQBWhPlaCZTnLJbg2rzrVH7xlPytNZYqenpXkxpeLK/fOdLJxgIYiGKXid1tHunH
         dewWFT08yi1e8YHn8eaCfN+X6qNL9D67nJ++MlIiOoIWM6ptr6UK3pSyCM6PpTbQAmVu
         mvjDdcWPmCjaiuR8tH1l09+OpND11cxjPmQG4OC0YU7G42yxlu8HSUdouVlrk7M9kFxF
         3jUQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=mpA5NBtH;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:1 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712126971; x=1712731771; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=aCzalvjR4IHRSjipcHYL00rMl+E9QBKfd5/Q0L+7cTY=;
        b=Yn/eqc21cirYQOJQrbK8fu03zyMOlWa7ejrs4cRtG2HYgTM+74FBra/eBDhhT/xGTg
         DS41gxf0tNpIECjNemeVDlZl6iYiCG10TlyDOlBUCYHsencw82TRV2ZOLgb6HUvuG5ph
         mU50u70WT6J8AKGfp2NXvl2cNxvO0GF482464=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712126971; x=1712731771;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aCzalvjR4IHRSjipcHYL00rMl+E9QBKfd5/Q0L+7cTY=;
        b=TH5B/6Xtl3aueaCaR6kTrnuMR/GiPgTO162vMvkOFW92zWP1JNnwSNU9FZZQDYM5NG
         z4agf+/HM9HjDD6oHitjGbmrBq6vVnfxZoxS5e4Ojzp14u5arH264SD44U6lrPCAgjyf
         jUFtNDXpEJnj1o2LDruHfH/gEwYCVr901qvYOejl10Xt/cJP98i9jKpx5Fo19f1+cvew
         3RLcEJac0Sd/2Zq+YRdAGjL0NnlPIzChnPcFumV1ORJ4Uvs0HrNx8/r2QiQe4l/HmQmh
         n9EcUHKKVsYQXUEEn9tg704HEWSkD46dlB+v/07L0Kksi8zbgLJRL4/YwZbn8GLAVW2X
         43pA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUvMr3AUyvN6rSVcAskV93qLTnXrQrmYZBPsH+32i5/NUB67lnLQ4mSIAci/9AMXQBQR3hEMh/cctGPtoo9W/tvDaSoF50SGsXp
X-Gm-Message-State: AOJu0YwdQIcj9W0pet6Br71CZ2xkDYoo2Tq/29v56VGxUAPOjN/ANMWa
	XmFS7RKpwjQDLT/E9ZaWBP6i5y4UYcsgOeYh8BvRgX3Xe52bgua+XdlTnOTcBVU=
X-Google-Smtp-Source: AGHT+IG1/g+AGmXnE5GAiOOmBncj5UybbUJnqNNmYntNn9iUiQtf2Xsj5DZKbMqJJhW5Pb6u+bOQaw==
X-Received: by 2002:a05:6512:33c2:b0:515:c102:c825 with SMTP id d2-20020a05651233c200b00515c102c825mr12091876lfg.19.1712126970747;
        Tue, 02 Apr 2024 23:49:30 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:3507:b0:56c:53a9:da67 with SMTP id
 b7-20020a056402350700b0056c53a9da67ls2026848edd.0.-pod-prod-04-eu; Tue, 02
 Apr 2024 23:49:29 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV/ePt+3IFFqW2RTFnI0JNFczTr1ruTIU4hkf1o8lUiVMJXb9at2QcRo5PAx+rQw9sL0eNmLoZYY2h3QiI18rHXX7++3qyAZOP/ZbVolzOdHtwjRAk=
X-Received: by 2002:a50:930d:0:b0:56b:b0f9:b7bb with SMTP id m13-20020a50930d000000b0056bb0f9b7bbmr7412526eda.41.1712126968907;
        Tue, 02 Apr 2024 23:49:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712126968; cv=none;
        d=google.com; s=arc-20160816;
        b=1Ct6zEjez51jSxKusUVDwUASKesPoMqctgALsQpdT9ayZvX+qP81NRpc1nKksQnSit
         TSfaMC9Qpo67OGsIFVNua4+NLIWunVoydkqHAdtYee8r49jeta763sChR0h0qsPxsJiK
         jmIXr+NM+SOGpcnGFsnXC6/Pw2sbogZQFZ2qaAGMvzbmwPbadNZE3KxCHpw6z8s9qtjW
         7JPUQZeO8TVd4PeS1XWI4e75ZoaR52oTtKVkg4IfKq8YHXIglaMovyOcfz9K6dby5Vef
         n4xmfRrciiSM27ggQl8UtZn5albFplm61FE9pw6VSI5SGhOljOGPqAHVdOJMBoOZaBbl
         z9ZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature;
        bh=k5n7bu/Rn6PBk9tB3IEU2+i93P9XKSPrHwFugk3H3vs=;
        fh=9aauSyI5eQk5b4s5O16fFO5a6x/LXiZqBjzkmnuA6As=;
        b=HlhEj6+oY0zzw/WAO4wbxkIpyN5kpwbKxOnHf/5w1YTyXAwI+bwxkOcej6dL5oD84Y
         zeq/4l+sPnTk8KoMMUwsmV4Rk741doHNi+7G1ikIuCVurA6RQEQuzVEeqWBg1tAa215t
         rfAnQuPEYoXRnE9GrsFqac0d+z60aapAVUtc3TCFxaBVInacmwHFZo0BAZODI+vI1wFB
         1B3qQj0vFiidFmU0lxifKh786yK9vqM03vh7MVvZkgV9d3uBpMyGhW/Pg7R1YJxWpINW
         RuxgdWCszFCav+N1oKn0M/DSG7s2MU2mC4T5UsmmWKWuOTpIUzorHmCTWY+YbHmk39K5
         evdQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=mpA5NBtH;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:1 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out1.suse.de (smtp-out1.suse.de. [2a07:de40:b251:101:10:150:64:1])
        by mx.google.com with ESMTPS id r13-20020a056402234d00b0056c3eeefedesi6703754eda.196.2024.04.02.23.49.28
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 23:49:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:1 as permitted sender) client-ip=2a07:de40:b251:101:10:150:64:1;
Received: from imap2.dmz-prg2.suse.org (imap2.dmz-prg2.suse.org [10.150.64.98])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 676B43500E;
	Wed,  3 Apr 2024 06:49:28 +0000 (UTC)
Received: from imap2.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap2.dmz-prg2.suse.org (Postfix) with ESMTPS id 9798913357;
	Wed,  3 Apr 2024 06:49:26 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap2.dmz-prg2.suse.org with ESMTPSA
	id sQbqIvb7DGYtCwAAn2gu4w
	(envelope-from <hare@suse.de>); Wed, 03 Apr 2024 06:49:26 +0000
Message-ID: <a9acaeb0-a001-4cb1-8b38-0340f3bd73cd@suse.de>
Date: Wed, 3 Apr 2024 08:49:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 04/23] scsi: initialize scsi midlayer limits
 before allocating the queue
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
 <20240402130645.653507-5-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <20240402130645.653507-5-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Spam-Score: -3.08
X-Spamd-Result: default: False [-3.08 / 50.00];
	 ARC_NA(0.00)[];
	 RCVD_VIA_SMTP_AUTH(0.00)[];
	 XM_UA_NO_VERSION(0.01)[];
	 FROM_HAS_DN(0.00)[];
	 TO_DN_SOME(0.00)[];
	 TO_MATCH_ENVRCPT_ALL(0.00)[];
	 BAYES_HAM(-1.79)[93.72%];
	 MIME_GOOD(-0.10)[text/plain];
	 NEURAL_HAM_LONG(-1.00)[-1.000];
	 RCVD_COUNT_THREE(0.00)[3];
	 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	 NEURAL_HAM_SHORT(-0.20)[-0.999];
	 RCPT_COUNT_TWELVE(0.00)[42];
	 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:email];
	 FUZZY_BLOCKED(0.00)[rspamd.com];
	 FROM_EQ_ENVFROM(0.00)[];
	 MIME_TRACE(0.00)[0:+];
	 RCVD_TLS_ALL(0.00)[];
	 MID_RHS_MATCH_FROM(0.00)[]
X-Spam-Level: 
X-Spam-Flag: NO
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=mpA5NBtH;       dkim=neutral
 (no key) header.i=@suse.de header.s=susede2_ed25519;       spf=pass
 (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:1
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
> Turn __scsi_init_queue into scsi_init_limits which initializes
> queue_limits structure that can be passed to blk_mq_alloc_queue.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Bart Van Assche <bvanassche@acm.org>
> Reviewed-by: John Garry <john.g.garry@oracle.com>
> Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
> ---
>   drivers/scsi/scsi_lib.c             | 32 ++++++++++++++---------------
>   drivers/scsi/scsi_scan.c            |  5 +++--
>   drivers/scsi/scsi_transport_fc.c    | 11 +++++-----
>   drivers/scsi/scsi_transport_iscsi.c |  5 +++--
>   include/scsi/scsi_transport.h       |  2 +-
>   5 files changed, 28 insertions(+), 27 deletions(-)
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
one-eyed-alien.net/d/msgid/usb-storage/a9acaeb0-a001-4cb1-8b38-0340f3bd73cd=
%40suse.de.
