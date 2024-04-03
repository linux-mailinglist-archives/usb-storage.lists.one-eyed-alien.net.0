Return-Path: <usb-storage+bncBCHZVHVFVMARBZUEWSYAMGQEEVBDTGA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x546.google.com (mail-ed1-x546.google.com [IPv6:2a00:1450:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C728965E5
	for <lists+usb-storage@lfdr.de>; Wed,  3 Apr 2024 09:16:54 +0200 (CEST)
Received: by mail-ed1-x546.google.com with SMTP id 4fb4d7f45d1cf-5684bf1440dsf2930541a12.3
        for <lists+usb-storage@lfdr.de>; Wed, 03 Apr 2024 00:16:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712128614; cv=pass;
        d=google.com; s=arc-20160816;
        b=Wpfs/yMLjnFBW7k92dKgt91ne32Lal1yU5J5tOGVYlBvuHlc7+XGra9datyk9RvVsC
         moCYKEHjdnWT0/8nWjE6EXFpyrcWyapyE8Hg7SFW9iUzUwcZl0PH9gsGaq0DvYyh9msR
         jizyuvrOA1yXXNbuObZ9pCggbYtXmf2nGJvrZ8hxmzQ9WWGvovIThwCIwrQi9EQSEEov
         xcXGh1pRPVCpuOeBW5MNJ0utyXpCj0shAKcbM7adaWj0sr9WEOdlcdY8dg+3N83wX7FW
         rYeDbNb2k6YobbOWi6ggOjbP6A7hD9uHDejBWyXejnbE8bLdONWp+KNvD1FimQ9BGPIc
         WfYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=u3Cf21Vwaui/Xfw0d0t3+zaJAktPs7yPuZTM8e04Ur0=;
        fh=OhzO4Xtm90JAsNbagvsmYjrjL8twSO4gbqMp0vhlDzA=;
        b=mv5WYN0F9Ki+i6mebaEPCnSnC/4usODCd225Q75FHEFsDlxHsihcBvAgH4Kqc1/x7C
         if8SmGyFhb32oh2C+oooUkOHYbZjRL12/QU7DJkA8UTXaPTO5PLWMCekzrr4gRxv6BQl
         3hEuHYrWNHDpwgw/xVIL/sdIHRcqWwsYekShGzumA8sDXeG//l5Yr8LvD0bc9TqQ+iMC
         jeGyv124ZAG52hXmALsqSBGI5b6aAlNgF2ZjLy7tS4/PVW2lvBPiiKwKCn2MHHmGYdRr
         ASRq3v2YAx/OrP3hfikMngp52XijOwghYB4hHUcEdiYtGoY9s0ZTD+EDAJKRAZj6Bugy
         Gsdg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=zxrELxz6;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.223.131 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712128614; x=1712733414; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=u3Cf21Vwaui/Xfw0d0t3+zaJAktPs7yPuZTM8e04Ur0=;
        b=ENq4179PwvAxlTzjl/nAkzyMBnyhXFfkFXn2rtbZON2nXbd/PaSujx3S11mjdbQGWA
         ce0e+BknHmijdMxpUkcDZGgWWq+LC8xiQJZU+Q1dm+hRSEgKemUnT2eu/OgAmjRze/qA
         g+/Hk6a6QFHimqAo86yuUw5Dm1Ullu8p6lhOA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712128614; x=1712733414;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u3Cf21Vwaui/Xfw0d0t3+zaJAktPs7yPuZTM8e04Ur0=;
        b=dl7vgNbuVcWAt01BWTQrpgpfQ2oQ7hD/CLdZhlZ0oHwUmIsGudoytwq0u3xbXWRRJw
         HLXY2A5lcIS7HmLpCFgSQsCI5TwlBUydoKJKKRYCg8sxNscwQ3XaoT/o5T5A81z+Bgpe
         2hJUFbKsBBwjGlTWro2mU5Ud/TX1wx+0fXcXowA0It3w8T9mYmZXONSTlvyu8T+DS+MJ
         A/qqrlb+Y8S80gqY5lVRdN04Gv2O29E12Zima+t8feRgFfoTlgyXYQoM2qHaPupHu33O
         3MQmoXenQP3MncaPtl9GFBq0ueQIvuxglFwf/1c9DKxXv2gaaCA1LR7dEY46MQCsidz1
         teiQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCV7H/KoYvKL36YQGWcc6CIm0DN2S0XqVbpXBmg9YH9F1e/92tPRwFCdqbgH0br9NVu3mZ5N6qUTOfAU5aMqyCQXJw2+xVSnDjmN
X-Gm-Message-State: AOJu0YwwwZKERjpcMtETkm+aB6KdWHnTnvnFoMyVy+9ixyI0k9t7MAAq
	xMAJ8MV6IahSEitED4xueZ/w8m5QGYf636FaBBYWcbDZMYPVjkID8pTqRg6KZsre8FEIy7A=
X-Google-Smtp-Source: AGHT+IGZdIIEnzF65n4wS+Kj3S21a6JGMUfl7fLvgfkXYOSJOYpAqfn+wC1K7rMATBSw4DnmG+Frxg==
X-Received: by 2002:a05:6402:1ed4:b0:56b:a969:e742 with SMTP id g20-20020a0564021ed400b0056ba969e742mr10747334edg.4.1712128614529;
        Wed, 03 Apr 2024 00:16:54 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:520a:b0:56c:4c79:16aa with SMTP id
 s10-20020a056402520a00b0056c4c7916aals1244322edd.1.-pod-prod-06-eu; Wed, 03
 Apr 2024 00:16:53 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUxi8fsiNjTawHuj9YcMcrVOr6YnZHqOuTw9rNHQUyfNhNZMrKncPZbbb/X0IdveySA5OaIkQ6WJ8zNpBqVmKFMjN5F44edleR3IJm//I+PxpoE6+s=
X-Received: by 2002:a17:907:7642:b0:a4e:1449:5381 with SMTP id kj2-20020a170907764200b00a4e14495381mr9818518ejc.1.1712128612883;
        Wed, 03 Apr 2024 00:16:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712128612; cv=none;
        d=google.com; s=arc-20160816;
        b=zRjNlbfeQQwWMtAL9sdk0VAsxZ99946qEVf6tx5vLGFoR619LLLVCvNIbaH59TYcex
         nW0G63g3/hStBIQh2ndauycWb5ebkw2ph/+m3IBK1o4PyYVLAl2j1xc/VfH6U5tZ8uus
         aKAIw8dh56WxA3l3MgjMe2itQo7HyDODs1exWWG7H247tFkbwNjh4IqARkfqx8TKGB28
         /5ATyQSSQ1WF592iHSsxw7Q43AWh+CS/KZ4HHJNsuS/bA7dBUqI2z5o3DiUE9cyHAIe1
         bz3qNXymqetiAur9AwgxGdMLYFfRYWfdbpf62sD5hAOFA9MN2VDdau2zDHUXj8g9CV1g
         miSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature;
        bh=ulqqzBR3KTWHCAy89sef5Vdx76a8DXmRGqKzCwup11A=;
        fh=9aauSyI5eQk5b4s5O16fFO5a6x/LXiZqBjzkmnuA6As=;
        b=VYMfhes02AijdH2tuIYWKSKAxciQiZ/NNweePiLMLkG1O8oyd6yCgWg/kfVDulgmOf
         BlQUXsUA4TWDkskYPtErqFyv0NC5u5zHk3HK+qB6o2RU9dS3PBaPYBIDV8DcWvkzBnI1
         9cv37YYw2hI2/KikaOP3MqQRbPapPHDxEVbYhAWpB5mUV/z9P4E9yXXzwFBnT1aGc0r1
         nv3Adihf0uZ7UgTyapLUOXgir29BXYygO7gc++k4M6+JVEwxrcdixwVKdPU1tQCrjX0S
         WJQ2xOVyYUTn1vDqjwyX+CMZUDQ+cUkEy5C8jiySoAo7MYdKQE6X45J5DPx/poiEV/qV
         F7tA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=zxrELxz6;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.223.131 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [195.135.223.131])
        by mx.google.com with ESMTPS id h15-20020a170906260f00b00a4e0c7da71csi6414748ejc.225.2024.04.03.00.16.52
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 00:16:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.223.131 as permitted sender) client-ip=195.135.223.131;
Received: from imap2.dmz-prg2.suse.org (imap2.dmz-prg2.suse.org [10.150.64.98])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 67FBB5C91A;
	Wed,  3 Apr 2024 07:16:52 +0000 (UTC)
Received: from imap2.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap2.dmz-prg2.suse.org (Postfix) with ESMTPS id E320513357;
	Wed,  3 Apr 2024 07:16:48 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap2.dmz-prg2.suse.org with ESMTPSA
	id MOZTMWACDWYlEQAAn2gu4w
	(envelope-from <hare@suse.de>); Wed, 03 Apr 2024 07:16:48 +0000
Message-ID: <0b648ab8-d5e6-4332-876f-05b97cf7c232@suse.de>
Date: Wed, 3 Apr 2024 09:16:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 21/23] mpi3mr: switch to using ->device_configure
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
 <20240402130645.653507-22-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <20240402130645.653507-22-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.62 / 50.00];
	BAYES_HAM(-0.33)[75.80%];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[42];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	FUZZY_BLOCKED(0.00)[rspamd.com];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lst.de:email,imap2.dmz-prg2.suse.org:rdns,imap2.dmz-prg2.suse.org:helo,suse.de:email]
X-Spam-Score: -0.62
X-Spam-Level: 
X-Spam-Flag: NO
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=zxrELxz6;       dkim=neutral
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
> Note that mpi3mr also updates the limits from an event handler that
> iterates all SCSI devices.  This is also updated to use the
> queue_limits, but the complete locking of this path probably means
> it already is completely broken and needs a proper audit.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
> ---
>   drivers/scsi/mpi3mr/mpi3mr.h    |  1 -
>   drivers/scsi/mpi3mr/mpi3mr_os.c | 76 ++++++++++++++-------------------
>   2 files changed, 31 insertions(+), 46 deletions(-)
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
one-eyed-alien.net/d/msgid/usb-storage/0b648ab8-d5e6-4332-876f-05b97cf7c232=
%40suse.de.
