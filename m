Return-Path: <usb-storage+bncBCHZVHVFVMARBVUFWSYAMGQEJLZJ53A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ej1-x647.google.com (mail-ej1-x647.google.com [IPv6:2a00:1450:4864:20::647])
	by mail.lfdr.de (Postfix) with ESMTPS id B44EE8965FF
	for <lists+usb-storage@lfdr.de>; Wed,  3 Apr 2024 09:18:46 +0200 (CEST)
Received: by mail-ej1-x647.google.com with SMTP id a640c23a62f3a-a4a356fc0d1sf83267366b.3
        for <lists+usb-storage@lfdr.de>; Wed, 03 Apr 2024 00:18:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712128726; cv=pass;
        d=google.com; s=arc-20160816;
        b=oBMVseQPPpo/Gl3U7v99PfmDIHMi9lWRQMFSsjIeNn+Ir6mckVIAWCsyWjQxIvSUXy
         osABGPv+XUr7kydkA8VVmTSmd4OQC6jr6ki1CT70Pez+NWQEUPR6mmT+SXiyr7TJU6cK
         6rfa8QIx480BKicbPRYJ5Ty13eVIm0v36RXZyVrDAtt1b4oBll44plzI5IQD05wEoAO/
         4rCNIHYlxZU1SadGJxbiqe4cpJ9MG4Fksw2EvxPT8qHiQTjboK81ZCgt/Pv8SKJP/f0J
         jEHUIYV/AClCJtC0ATsAjYeXpcQ5Pw2aot/fmEg2TcGNiyJCEwKcZbVZk95b48cOaf//
         zI6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=mvfL3+ldCAFD0qJ4ci49j7lelIiXUhzps7bWm68HOHo=;
        fh=AY1DG+wVcbQmsuLWxkrIHLmP0BkzwKTSCkBhUVVSf40=;
        b=f5Na8X5XCNBODu9u5tZImGr6U91U0/dw9lZsom+6Eaj9wFa71M/3u89jLqTW+P4F7v
         Q0MgZWmEZIrkf/yiPWhR2k/B0cqvwkpJAKpwXbUnpMLIhcZRUe5kpiBTEONAd9V5r35e
         8sP5toL9ff5jcd+m3LjwiQwbRgnp7zM3UdYoDOZZJRzWRfMWvcAHuwpT6Z/kwmlsR+wa
         Jjqbte/A+iQFaPqsU+aYmCNyIc6fjlBEjIf62AN4hzEAyL1DL7VKxnKwQbqPKhdTQfPk
         2uFpkWXuVRaQrtKH3A89FMn/XsyzYEKm6xPgSv+aGMR0JdX2Jb94eKvDpVUlK4aFfhy5
         f9eg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=He1V0bFo;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.223.130 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712128726; x=1712733526; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=mvfL3+ldCAFD0qJ4ci49j7lelIiXUhzps7bWm68HOHo=;
        b=SlBJ59UNKGGnKDVGIISoNuvh1bkZwAo7ffmd8p+KDi/xSTTFLvWQrOPfJ7FoyIOZAK
         xGXpCpVmwyU2qUmqRM7/Eaz32XH7unJi8eWQuN9mfI071/KZ96BTgR+Ygglc+qo2XM1V
         AjUpO60O2A+2b/N/kF+f6WvB09uplyMXzCauE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712128726; x=1712733526;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mvfL3+ldCAFD0qJ4ci49j7lelIiXUhzps7bWm68HOHo=;
        b=wY41w7/SzJCf3vH1Wb0K72WiTKPZcaEzer93yOZSv5u3dZdZO56AdlbAx1hDZo/A9a
         9SYL9vygF9j2onbCqJH5BMU1V/nSrQuaWe4jOQr1ur7Gd/0QGz8A6K2EfTx79qQMvnkd
         BtEBu1e/TrkwnOt+dOmZ079EKWh6rsTdbazeJKAkaylwi5FB8CkZalyn8dGvWoe0Roy8
         OjFP1CaNdPYIYxgEtOokJnO8qiPp2eAA8+wsWLHXHMndYrSLnVlOKLdIfOis3pfpwV++
         Z4R0HH+I0fCEuMHbO02nq5/48/9YYhMBrQ+kKiYHRjBaXR7TSPtQnaRpegtGcXZzrqaa
         mN+w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCV5sY/iwrazLzdYFTsII71SKQQKs3D6xOea8SoeyH/9HPccC3CTtDHkC+oaENCBv1+0oQNpT3gR+VQrg2An/6VwRMq1ipA68qyY
X-Gm-Message-State: AOJu0YybpuEce63mTMYwb1Y4SHu1++GmF2M6jg6/RC/uw0Fkqup8/FOb
	ZJD9kny065R8tdx6yloMpkLjfcU/eF1Z/ecmw1g+WlJIIQy+mR/9I1X3ZUwB1vc=
X-Google-Smtp-Source: AGHT+IFdsIVhPyNTgShmtOxjzGzMcwFSr7/tDuFCQ7jUc0JUUzZcro2TMZAlzNOO1a2eh4y0vPSTXA==
X-Received: by 2002:a05:6402:520f:b0:56d:f3f3:f61f with SMTP id s15-20020a056402520f00b0056df3f3f61fmr3801116edd.9.1712128726302;
        Wed, 03 Apr 2024 00:18:46 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:3496:b0:56d:c471:a622 with SMTP id
 v22-20020a056402349600b0056dc471a622ls152822edc.0.-pod-prod-05-eu; Wed, 03
 Apr 2024 00:18:45 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUlpD1dvTUkZM5K5esjMzvCGusGkFI9nxcjIaaBDiidnFmICl5F838R23AJND0tZ1gu/vEdQAVMy7o/pvCTVtfJjtaI74qUIFDtDfn/m6+1LgwqtMo=
X-Received: by 2002:a05:6402:1d53:b0:56d:eb22:eaf2 with SMTP id dz19-20020a0564021d5300b0056deb22eaf2mr3476813edb.21.1712128724560;
        Wed, 03 Apr 2024 00:18:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712128724; cv=none;
        d=google.com; s=arc-20160816;
        b=EViCjqTOiN/Iko1BlvPzTpz8Yxx5LjB6WE4pybCEkRoZDAgqokknWF8uQXOT4Fgbad
         /ly4rQgUhmue1QhhxxvIYrBxs8UGxb3/JIJYM7P3jGeVSQBOBNxHo9UjcWfF9EOmjW/V
         32pIAhnlZYNWQpytlBW0B66VoSeFOVUGRKhZBjytG1uhQMkTFSlWtqk7KRol1TFFO7iS
         OjEO7szt3jWq18MSvOa0bWH4graHfia/KoMt3+o/O/OR4kQ+pM3Fp+bDC+GNZsNDsnSZ
         rge0pvd2stWO0B/hk4eEHcx9G+T+oLGb9Tv0HWoguoZhZ7FbqlAVRMFW8hrhB4BkZzJr
         lITw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature;
        bh=i909qCo6sAW+mQAG+W4SgHUJRSbwXuiYxcq1jgblK0E=;
        fh=9aauSyI5eQk5b4s5O16fFO5a6x/LXiZqBjzkmnuA6As=;
        b=HtbUk7ioBfJf3UeEJiGZtOReWL5rHFrIWjLM50o9jXPolMJYwuqwt7ZRybsKfSSL3d
         9BZDxxcJh5truhLWpVB1WE84JzfGrM5IGWIv2M4qNzF7CSS2hbYrPhtX5AUtaUxx3BwE
         c0HFyAOqh5nzddnSLH8orfWUPii+voyo2N8xQqoQT/54xFvmLx/+dTqN9kCadr5CF/oj
         NMKxD9ZhnyRuH0RJ2a8Ggu94Mhg4eaKtDA+iSvXU2VPxCA6o7M2KIjvATjI6l45vEcLt
         HZ0oIPUi30skwXnABBlSNTP7yCbrcIM9Bq46vu3luGDMMtC8kqj69p69mD/wMZC2KG13
         YdfA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=He1V0bFo;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.223.130 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out1.suse.de (smtp-out1.suse.de. [195.135.223.130])
        by mx.google.com with ESMTPS id t1-20020a50d701000000b0056e099e1fb9si239052edi.323.2024.04.03.00.18.44
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 00:18:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.223.130 as permitted sender) client-ip=195.135.223.130;
Received: from imap2.dmz-prg2.suse.org (imap2.dmz-prg2.suse.org [10.150.64.98])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 2330935042;
	Wed,  3 Apr 2024 07:18:44 +0000 (UTC)
Received: from imap2.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap2.dmz-prg2.suse.org (Postfix) with ESMTPS id 047181331E;
	Wed,  3 Apr 2024 07:18:40 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap2.dmz-prg2.suse.org with ESMTPSA
	id IHBXNtACDWYlEQAAn2gu4w
	(envelope-from <hare@suse.de>); Wed, 03 Apr 2024 07:18:40 +0000
Message-ID: <c7d2a479-521d-4724-a238-f1de881750a9@suse.de>
Date: Wed, 3 Apr 2024 09:18:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 23/23] block: remove now unused queue limits helpers
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
 <20240402130645.653507-24-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <20240402130645.653507-24-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Spam-Score: -3.16
X-Spamd-Result: default: False [-3.16 / 50.00];
	 ARC_NA(0.00)[];
	 RCVD_VIA_SMTP_AUTH(0.00)[];
	 XM_UA_NO_VERSION(0.01)[];
	 FROM_HAS_DN(0.00)[];
	 TO_DN_SOME(0.00)[];
	 TO_MATCH_ENVRCPT_ALL(0.00)[];
	 BAYES_HAM(-1.87)[94.28%];
	 MIME_GOOD(-0.10)[text/plain];
	 NEURAL_HAM_LONG(-1.00)[-1.000];
	 RCVD_COUNT_THREE(0.00)[3];
	 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	 NEURAL_HAM_SHORT(-0.20)[-0.999];
	 RCPT_COUNT_TWELVE(0.00)[42];
	 DBL_BLOCKED_OPENRESOLVER(0.00)[acm.org:email,suse.de:email,lst.de:email];
	 FUZZY_BLOCKED(0.00)[rspamd.com];
	 FROM_EQ_ENVFROM(0.00)[];
	 MIME_TRACE(0.00)[0:+];
	 RCVD_TLS_ALL(0.00)[];
	 MID_RHS_MATCH_FROM(0.00)[]
X-Spam-Level: 
X-Spam-Flag: NO
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=He1V0bFo;       dkim=neutral
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
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Bart Van Assche <bvanassche@acm.org>
> Reviewed-by: John Garry <john.g.garry@oracle.com>
> Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
> ---
>   block/blk-settings.c           | 245 ---------------------------------
>   drivers/s390/block/dasd_eckd.c |   6 +-
>   include/linux/blkdev.h         |  13 --
>   include/linux/mmc/host.h       |   4 +-
>   4 files changed, 5 insertions(+), 263 deletions(-)
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
one-eyed-alien.net/d/msgid/usb-storage/c7d2a479-521d-4724-a238-f1de881750a9=
%40suse.de.
