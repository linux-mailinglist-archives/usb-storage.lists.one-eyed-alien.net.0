Return-Path: <usb-storage+bncBCHZVHVFVMARBKEEWSYAMGQE5TJE4KI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x545.google.com (mail-ed1-x545.google.com [IPv6:2a00:1450:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id EA16C8965D5
	for <lists+usb-storage@lfdr.de>; Wed,  3 Apr 2024 09:15:52 +0200 (CEST)
Received: by mail-ed1-x545.google.com with SMTP id 4fb4d7f45d1cf-56c3dc8d331sf4535982a12.2
        for <lists+usb-storage@lfdr.de>; Wed, 03 Apr 2024 00:15:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712128552; cv=pass;
        d=google.com; s=arc-20160816;
        b=pvsLr9GXiWGD0Pyq28p1NvFi+JfXu1yzdI44aVB4VABkx2H9SbNoKqSD/QdXOmG74g
         yr+hQibxgoBIiqwuzfMBJBWosVJstj8s81egyiIZ33v3l4Sba8WXELCF/Sla637dRMxi
         I5PdM5NbcVncjKYWTW/agYwOZ+1Wbw9Gh7h9JCrWhFR2wcT00nIj3uaLhGQImTOR2wFF
         KXI8qERnHu0AyhKXpwFjZGK/z9njJxA4JeP1Ce9mQ2TgFENQ9Nx0NSmuOdCBGEAYzoSP
         jOOggLNT6oWuG1RojEcJxa/xrRV3XKvWD0oLYkol0iTklgezrwjqTA5vHfOML/5HB4ms
         P55w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=YL8AtMgUdHLZ2mR8m32J6hu6fy4sDhApUZ1aKFXdlos=;
        fh=F/bBIXv8KEt1JAd+94kEy8GAZhIc2PQ10hJrvVu4G7o=;
        b=X0E3GJIdLHI0DlG9p1sxbmEyZnlgxwF2rcqR1GdeveiIBCUUkaXyeUftEeApdj50c2
         LdakksihgLTC2jkYpw5Ddrkr46Ze+zga93VK9UtKrolu9OkgCSyC8DEHFVa9KYxaEP8k
         /AMJEWpma6/CEeKJwEBETdauNnXX4arbEeTiS8Gse9+IeuQakSmOB8WvRH4aUYWKRDMs
         Y88HqaxRpgSKNlIHdf+DT+9HSHsoN1jD6M82xBx9NtqarhGQectSaHjW4ClEryOqgZhh
         QOkdz5fmUEPCYeK5Ls1eKlsNS/rXM5WqEK5RwzIt4n7rhQ1XXnmzbEaWEABXtjtLA5U9
         2nxg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=MZv11LCH;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.223.131 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712128552; x=1712733352; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=YL8AtMgUdHLZ2mR8m32J6hu6fy4sDhApUZ1aKFXdlos=;
        b=XENz3zkP0p0MNC7MZwPaz6GwOoATdI0FYMdyHUPteiS/Q3Ij0kmnuUxsFzhcDGLZNB
         yV/i6oiG7QtsuMj+9WRLC1InVCKtxwJYPBUEp5+iErqIc5AWfIt+BsW6NoUgjHBwGhBo
         +T46m7ZfdaQzjmTIG1iEB1qU/mBG3rIV3YRGo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712128552; x=1712733352;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YL8AtMgUdHLZ2mR8m32J6hu6fy4sDhApUZ1aKFXdlos=;
        b=J2wnefGJ7J7W9S7j6Gf+409rf2/OnhCO/D01tVYBrPL9tSxUDBxhOt2va0Sv2Ma6D0
         zXqCTRGj+5a6pPVf1KXKUw2IlE2w4vXpIhEJuT/lrgW9p+tGsq/JtlBqPgHeqpn3bDQh
         E9VTBX7UQmCpbS6hEqQjq6tv7ncJsFZtyjEehrSMc0S2jcoXP4Mrmz5yfkf0511LLs3i
         zuLJFhFaD1QdzgGJbJpYDTYtY8D10+ZMlUCA06A0HOG92QWd9K4HWolDtaET+Gk3Jjy4
         p2yq2+R2agF9qOhzs3twB6wonDx8MSRvKx+Nz1XUaCsiFli1nqqpz0DBdSSP1zdSQfPP
         nOOg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVadclPy3Toke2UQyL5m99vXVoFnsDUbm+MzJZ2WNxlCh68TiWKxHEaZCqIjSM6Mk236DFh93xb2Y/ta3sL/XNUolCr/BpD0Nqi
X-Gm-Message-State: AOJu0YxS1kQ5ExzD/9Ckl0uXvZ1pOEA1DcHeGp/U1urA+L11HKCR8Xwz
	RPPKsMurBB6z/AAsJLMdWKRYYPe0tUEqhSSu0xPFn5E3iY1LYWSDS/hVKGIy6Ag=
X-Google-Smtp-Source: AGHT+IE2PANv+Qa62CB/L4MLVos/WBMJNtzV3KDQMzh3PuDnPwB3SMaScjndO8EBiqhNT5Adchu1bw==
X-Received: by 2002:a05:6402:270c:b0:568:d757:f7d2 with SMTP id y12-20020a056402270c00b00568d757f7d2mr10631748edd.10.1712128552507;
        Wed, 03 Apr 2024 00:15:52 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:2695:b0:56c:53e6:a904 with SMTP id
 w21-20020a056402269500b0056c53e6a904ls387170edd.2.-pod-prod-09-eu; Wed, 03
 Apr 2024 00:15:51 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXyLyEnI+oz5xIHw/mzwHyfOyY4igzagq5FHxPgJsDKcq3XOml64/s7SUzRLPOP1ub0sMQgiDwJizyVXcPvyDq1ufOW+QFMYcW08NH6vPrJhKYNfEc=
X-Received: by 2002:a17:906:3a91:b0:a4d:f555:fd6 with SMTP id y17-20020a1709063a9100b00a4df5550fd6mr8805275ejd.29.1712128550778;
        Wed, 03 Apr 2024 00:15:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712128550; cv=none;
        d=google.com; s=arc-20160816;
        b=BRDildc9gGEsSGm9rmurAsbiIN3Tm8BhroTGtpiLDj+fJ9IOrSGEH6cnbVumYAC43z
         3z21UE8ZkwOU4Ay6Y58F/ASj2azezWZOwPgXoL3zr3ef8Kw/jfxLwf+z39ssW2KDyKZp
         Cvi1GlAVszDQjOh8uV0/7uCEw/nYgVOZKq05P7B0loPEmlr24OSoh0/Azp9r4GHLs5Mz
         TrgJSBhBW3TQBnboDsHru278JXRXP/1Q5d/lPKB5TV/Od1CMo473vEAMiwnmhsJ05OVc
         a1SdCPj+O8NQ7v0RkIh7+yHL2+RBa+HEN//qTo6j6y+dDxfHk3CGrBIYjUBxh4J8Z0eN
         dDcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature;
        bh=3ITTnavAHwcb0N8wOvNww3FtAjutukzUmB4ZDFwHe3E=;
        fh=9aauSyI5eQk5b4s5O16fFO5a6x/LXiZqBjzkmnuA6As=;
        b=AgMFo+ckjDpNQiu+taVodfUZKZHy/FOG91Mnwj4kqpMTu345yf3uPHbimT+uCrrkuq
         NSWl7t7Jmv3J6XgnRkfKrY3ybucP5CkmpUIfWZU+sF+sZVEDUMRcdUABdLmIzM6lPOb7
         tTf74+VTtDKo4O4PXVx2xD2ZUN/01MpCpoUeupVvxUYm6+uZfO3x+KPl4GES3AvQp7PX
         oCnyyYcvyVsOpV3qhqsvk6rne6s2ovyFNxudQaKF6kNzWgIi1ulhE/3pCLzROy5g2xhg
         //QXrzLONfndORBX2kHpWxJqrzv9CKGkM0maVZQxjSUMF/gXoz+wNlVK6paMHSOn/LFQ
         F3Dg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=MZv11LCH;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.223.131 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [195.135.223.131])
        by mx.google.com with ESMTPS id t9-20020a170906178900b00a46485678b2si6231109eje.651.2024.04.03.00.15.50
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 00:15:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.223.131 as permitted sender) client-ip=195.135.223.131;
Received: from imap2.dmz-prg2.suse.org (imap2.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:98])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 535B55C91A;
	Wed,  3 Apr 2024 07:15:50 +0000 (UTC)
Received: from imap2.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap2.dmz-prg2.suse.org (Postfix) with ESMTPS id 0EF4913357;
	Wed,  3 Apr 2024 07:15:46 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap2.dmz-prg2.suse.org with ESMTPSA
	id QBFTOCICDWYlEQAAn2gu4w
	(envelope-from <hare@suse.de>); Wed, 03 Apr 2024 07:15:46 +0000
Message-ID: <cd7399e3-75ab-49b5-a5ad-1e7e7df649ea@suse.de>
Date: Wed, 3 Apr 2024 09:15:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 20/23] libata: switch to using ->device_configure
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
 <20240402130645.653507-21-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <20240402130645.653507-21-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Spam-Score: 2.14
X-Spam-Flag: NO
X-Spamd-Bar: ++
X-Spamd-Result: default: False [2.14 / 50.00];
	 ARC_NA(0.00)[];
	 RCVD_VIA_SMTP_AUTH(0.00)[];
	 XM_UA_NO_VERSION(0.01)[];
	 FROM_HAS_DN(0.00)[];
	 TO_DN_SOME(0.00)[];
	 TO_MATCH_ENVRCPT_ALL(0.00)[];
	 RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:106:10:150:64:167:received];
	 MIME_GOOD(-0.10)[text/plain];
	 BAYES_HAM(-0.29)[74.52%];
	 RCVD_COUNT_THREE(0.00)[3];
	 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	 MX_GOOD(-0.01)[];
	 NEURAL_HAM_SHORT(-0.20)[-1.000];
	 RCPT_COUNT_TWELVE(0.00)[42];
	 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:email,lst.de:email];
	 NEURAL_SPAM_LONG(0.53)[0.151];
	 FUZZY_BLOCKED(0.00)[rspamd.com];
	 FROM_EQ_ENVFROM(0.00)[];
	 R_DKIM_NA(2.20)[];
	 MIME_TRACE(0.00)[0:+];
	 RCVD_TLS_ALL(0.00)[];
	 MID_RHS_MATCH_FROM(0.00)[];
	 RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:104:10:150:64:98:from]
X-Spam-Level: **
X-Rspamd-Server: rspamd1.dmz-prg2.suse.org
X-Rspamd-Queue-Id: 535B55C91A
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=MZv11LCH;       dkim=neutral
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
> Reviewed-by: John Garry <john.g.garry@oracle.com>
> Acked-by: Damien Le Moal <dlemoal@kernel.org>
> ---
>   drivers/ata/ahci.h                     |  2 +-
>   drivers/ata/libata-sata.c              | 11 +++++++----
>   drivers/ata/libata-scsi.c              | 19 +++++++++++--------
>   drivers/ata/libata.h                   |  3 ++-
>   drivers/ata/pata_macio.c               |  2 +-
>   drivers/ata/sata_mv.c                  |  2 +-
>   drivers/ata/sata_nv.c                  |  4 ++--
>   drivers/ata/sata_sil24.c               |  2 +-
>   drivers/scsi/aic94xx/aic94xx_init.c    |  2 +-
>   drivers/scsi/hisi_sas/hisi_sas.h       |  3 ++-
>   drivers/scsi/hisi_sas/hisi_sas_main.c  |  7 ++++---
>   drivers/scsi/hisi_sas/hisi_sas_v1_hw.c |  2 +-
>   drivers/scsi/hisi_sas/hisi_sas_v2_hw.c |  2 +-
>   drivers/scsi/hisi_sas/hisi_sas_v3_hw.c |  7 ++++---
>   drivers/scsi/isci/init.c               |  2 +-
>   drivers/scsi/libsas/sas_scsi_host.c    |  7 ++++---
>   drivers/scsi/mvsas/mv_init.c           |  2 +-
>   drivers/scsi/pm8001/pm8001_init.c      |  2 +-
>   include/linux/libata.h                 | 10 ++++++----
>   include/scsi/libsas.h                  |  3 ++-
>   20 files changed, 54 insertions(+), 40 deletions(-)
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
one-eyed-alien.net/d/msgid/usb-storage/cd7399e3-75ab-49b5-a5ad-1e7e7df649ea=
%40suse.de.
