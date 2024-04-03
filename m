Return-Path: <usb-storage+bncBCHZVHVFVMARBKH5WOYAMGQE2MOIGHY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x547.google.com (mail-ed1-x547.google.com [IPv6:2a00:1450:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id BE7AD896539
	for <lists+usb-storage@lfdr.de>; Wed,  3 Apr 2024 09:00:57 +0200 (CEST)
Received: by mail-ed1-x547.google.com with SMTP id 4fb4d7f45d1cf-56c1b105949sf4343072a12.3
        for <lists+usb-storage@lfdr.de>; Wed, 03 Apr 2024 00:00:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712127657; cv=pass;
        d=google.com; s=arc-20160816;
        b=y1gsxXi7RgipSNHFHdKvv03rn2h+dxJi9ZRliZOnINoV+wBxsBL+6P6oSb6acq/pte
         Cc3z7Trs7q+cIbLM+ZXcc7frJUqPIekGqY18WyY9Ej2ylglPlusLoboLiLxmrO7pHVVO
         T1ShsxNAonsaJ6EvlynfvKWmWBjizos+BHTMoFJpg9uwMRPBBcyTaEK1XWV37d/M+lua
         HuJ5nrcseBLRgAVj8pV2k/T8JKTtKIZTd52Us4890ZJ1VbUegCRJZ721v+L2xaW5VXhO
         mrRZVWfJdvHhjjHt2YmEzkOHn0rTEG7Nx648jbvisyJNnSgh4gHgzzMRFkaJUva26az4
         fQqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=1lHwzzyhdRHRYi/HMwSxm/QR0V7VIGMi5Ew2GBf6eIQ=;
        fh=Msfr4b71zMVWQeC0DEakhoJmy8+NldaIAdua25A6g5Y=;
        b=YRMIOLghr9jM60nVNB8umAgHgZQIfcbAACj/dUk2efUMEoKgc37V4wRc1kg1uvGoKf
         1KxkzlzmAtqKOvq6hA9Tyq2JqbtTGzE4HRCRys+cvIcwc7nCgy97aEfAuy6mvNUiedtS
         b4eJeYfE660aygEr/ir0a8dpNcRDDHCtPrLZRGhgbMYsjTpxcj/APt81USxXHL/NMc6X
         /2SwRWdhBLNMAPqDHsNJi7sCAMyQqztQ9jRxKzUKxw0+cdDGoDN97hrKmEw73247bv/v
         eabTeOopvQlmX4v1AFdx22V9r9pG81/0kLC+PTy19UWye42xYUhQ55DMsxTW+xBsdCAj
         HOcg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=QB3hsxew;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.223.130 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712127657; x=1712732457; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=1lHwzzyhdRHRYi/HMwSxm/QR0V7VIGMi5Ew2GBf6eIQ=;
        b=PjrUSDjAezxJ5JbGHtf9txtbj84vfuO20zAuQqi/v2oiTfo8zRhyVw52YBbsiQQVmg
         VdfKA6TekbJQIbGD9BUasc+ihFvL+WHn2CTLGWHgjbswYuC54/uPXMPgLRYCcsjcI3KC
         qo/KosPWKN43y7E/JB6t3SS6GvPe5fcxNWsn0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712127657; x=1712732457;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1lHwzzyhdRHRYi/HMwSxm/QR0V7VIGMi5Ew2GBf6eIQ=;
        b=fABnG5grZcwWujBmRcC3glhdrRjogqfoqJUfbBucuZsalOheebn7jwVA18EZDQX1ol
         p6orPLKXGKtJe1c8WoaYFIKEY71tp2JYLXedbO0CC7rsRLFZwGMa1NLTrPNyfFBXB58V
         kbMtPi+M1kX7nhgImGdeFvUEGstaVW/ni2IBfBhOgX7X3Yxw6nfTg02GeHwzfCmSJafZ
         kSXDqKe9G+5ZoHrTSU4Wvh0C/J3KWNbJCZjP7PX76VMXSWYlm/UL5cR6Kcb2kjbhWUns
         8J6FvCv/u44jno4/Rn0gAWFJoOyUrt0uvtC3RLDmmAKKxKD89vcGrV2rtNh2gC8w68g/
         mDxw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUEJBcuftUDwYdy+49BxNQRDpODUeLfXBDxLX6tJbBfJN59erDWsN8Y/H2+bNfcOQwk37uh7ElpphMEFK1rm6mWAn29XJwR8BK1
X-Gm-Message-State: AOJu0YxzLcnHSoY5FoJtBAGrSRFhs/y5BZAve8mtpfUPqztAwKGkfWJb
	wG4wBroOuR0PcdLD1uJNjfhM5ByLpBYQ1JbOQYHK52cc6Ef+cTQ4xdzD28RjUZ8=
X-Google-Smtp-Source: AGHT+IGGj2WI+MQPdLKk8XHdp1vTa3vQzNDn2gHG3Q4JJJAHP2gXtB+scgA3XSTB6mDOt39hU6yI5A==
X-Received: by 2002:a50:baa4:0:b0:56e:5d4:92bb with SMTP id x33-20020a50baa4000000b0056e05d492bbmr652656ede.9.1712127657347;
        Wed, 03 Apr 2024 00:00:57 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:4311:b0:56d:e746:ab95 with SMTP id
 m17-20020a056402431100b0056de746ab95ls865665edc.2.-pod-prod-04-eu; Wed, 03
 Apr 2024 00:00:55 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWCVo41qxOr+UTTD6wtA9Hk3PaD9FVDnXnaK70gUNr020G72m09l78DJEZ9F2ZsCMJiO1MnkZ9trhGdqlm0o7YfzowUwY5XUydfpGD2/PQUWNpRmWU=
X-Received: by 2002:a50:d6d2:0:b0:56d:c88a:f37 with SMTP id l18-20020a50d6d2000000b0056dc88a0f37mr5941234edj.26.1712127655440;
        Wed, 03 Apr 2024 00:00:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712127655; cv=none;
        d=google.com; s=arc-20160816;
        b=YlKGCD8+aCf6bON0j6Qpfjt39EoI0YcCaTV8rZLg7kszd+H7EiqftDUFuCuZDgMB+Z
         AEbbt2Y9N/woCYodcEG/+2hloDsMNz/ojA+Lhp+kFGve1Z29CFQUngnWNkWoCixCy/yD
         upiJVkpB22KKKqvrWKAP6VjDPcmFJbdWd0MkL7rrC+Mzi2cM7b+MNWa9624ipVC9dONr
         1FBgc+B8KRY4MqC/y145XaeZp8WYkmdUzIZh+/USWNTJkYyabHqhoM52PNYihkfsCZYp
         N37HvqQK1eIXjg7UAYOgr7eKKdxQ0bTlKRaRXs1fn5XUg33RoeXyzPGRnv84aHXytq4h
         16Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature;
        bh=VStNnPFhhkcWzvAWZLJlbNI7t7EFEcfNzWUOZ1J8U2A=;
        fh=9aauSyI5eQk5b4s5O16fFO5a6x/LXiZqBjzkmnuA6As=;
        b=1JJjeEoCm4aiWirGyJciCg96cib2WiSLv29jAm8QpkNnA1VLw14/yu4PCDlho8T8vA
         R6kBci91vwOiP6J83mJ9p/2/XXkYy97rW7VskB+4e9IxtpXJL4jFfq3RmHiKiQIho8fj
         RZPYgsbjUn04BVmC7NY0022TKKTjRKIQwzII2qLKP+SZTewXbLpP2vWHlWTq1OeF+Udm
         NE9/TWYGLujnbG/GEDugsAPvPwKLiyP3xwrIqYi2AFsSu09OqXfG+fcHp93a5OThK9RG
         nwjIG5+nNvIo3pIwRZPLnHGV3AUN9Do18YR5iCJn5fdwmDowr5JoLb27ZYKSE4AcCxVN
         1/Yw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=QB3hsxew;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.223.130 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out1.suse.de (smtp-out1.suse.de. [195.135.223.130])
        by mx.google.com with ESMTPS id i9-20020a05640242c900b0056c3f718c8fsi6496668edc.340.2024.04.03.00.00.55
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 00:00:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.223.130 as permitted sender) client-ip=195.135.223.130;
Received: from imap2.dmz-prg2.suse.org (imap2.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:98])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id EE9E935023;
	Wed,  3 Apr 2024 07:00:54 +0000 (UTC)
Received: from imap2.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap2.dmz-prg2.suse.org (Postfix) with ESMTPS id 0914413357;
	Wed,  3 Apr 2024 07:00:51 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap2.dmz-prg2.suse.org with ESMTPSA
	id e5qXOqP+DGalDgAAn2gu4w
	(envelope-from <hare@suse.de>); Wed, 03 Apr 2024 07:00:51 +0000
Message-ID: <d6e7fe8a-4677-4ca8-8db1-d186dbdbb461@suse.de>
Date: Wed, 3 Apr 2024 09:00:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 10/23] scsi: add a device_configure method
 to the host template
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
 <20240402130645.653507-11-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <20240402130645.653507-11-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Spam-Score: 2.52
X-Spam-Flag: NO
X-Spamd-Bar: ++
X-Spamd-Result: default: False [2.52 / 50.00];
	 RCVD_VIA_SMTP_AUTH(0.00)[];
	 XM_UA_NO_VERSION(0.01)[];
	 TO_DN_SOME(0.00)[];
	 RCVD_COUNT_THREE(0.00)[3];
	 MX_GOOD(-0.01)[];
	 NEURAL_HAM_SHORT(-0.20)[-1.000];
	 FROM_EQ_ENVFROM(0.00)[];
	 R_DKIM_NA(2.20)[];
	 MIME_TRACE(0.00)[0:+];
	 MID_RHS_MATCH_FROM(0.00)[];
	 BAYES_HAM(-0.07)[62.73%];
	 ARC_NA(0.00)[];
	 FROM_HAS_DN(0.00)[];
	 TO_MATCH_ENVRCPT_ALL(0.00)[];
	 MIME_GOOD(-0.10)[text/plain];
	 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	 NEURAL_SPAM_LONG(0.70)[0.199];
	 RCPT_COUNT_TWELVE(0.00)[42];
	 DBL_BLOCKED_OPENRESOLVER(0.00)[lst.de:email,suse.de:email];
	 FUZZY_BLOCKED(0.00)[rspamd.com];
	 RCVD_TLS_ALL(0.00)[]
X-Spam-Level: **
X-Rspamd-Server: rspamd1.dmz-prg2.suse.org
X-Rspamd-Queue-Id: EE9E935023
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=QB3hsxew;       dkim=neutral
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
> This is a version of ->slave_configure that also takes a queue_limits
> structure that the caller applies, and thus allows drivers to reconfigure
> the queue using the atomic queue limits API.
>=20
> In the long run it should also replace ->slave_configure entirely as
> there is no need to have two different methods here, and the slave
> name in addition to being politically charged also has no basis in
> the SCSI standards or the kernel code.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
> ---
>   drivers/scsi/scsi_scan.c | 47 ++++++++++++++++++++++------------------
>   include/scsi/scsi_host.h |  4 ++++
>   2 files changed, 30 insertions(+), 21 deletions(-)
>=20
I would have loved to move all drivers over to ->device_configure, but I=20
guess that can be done at a later time.

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
one-eyed-alien.net/d/msgid/usb-storage/d6e7fe8a-4677-4ca8-8db1-d186dbdbb461=
%40suse.de.
