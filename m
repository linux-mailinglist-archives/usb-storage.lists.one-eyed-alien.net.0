Return-Path: <usb-storage+bncBCHZVHVFVMARBZ77SK6AMGQEX3LZWNQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x346.google.com (mail-wm1-x346.google.com [IPv6:2a00:1450:4864:20::346])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF57A0B007
	for <lists+usb-storage@lfdr.de>; Mon, 13 Jan 2025 08:25:28 +0100 (CET)
Received: by mail-wm1-x346.google.com with SMTP id 5b1f17b1804b1-4361ef9984bsf4824265e9.1
        for <lists+usb-storage@lfdr.de>; Sun, 12 Jan 2025 23:25:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736753128; cv=pass;
        d=google.com; s=arc-20240605;
        b=PxuLRITmSKFdFzUkAxA620sNAzGlxp1C2gzVDBrNEIdzTpbwHEFHmN17EeXkgeG+CF
         eUDXX7QvgnsnhSx/lXvKN8wK8U+HbncXkmDRkgu1vthOi1ieSkbsuG3+wjoKAj4PowHx
         wGqNZ3AXwas+INi8HtZCaXUdbUkzMMbjGC5RDAWN1PBstk8DIUEDmFIQoAPXNJE4L6Lo
         99QlAcrwKHaHzuukleZniQj6MhZ50bKsnzKN2WmVOXXhuCHX/HCCtEJWjqPeaJF7Fu2n
         9grTcKFEELeQyspB7bJ0TMukUyDQW6ojSuI0jpMtKmSX7b7TZLZeOX+9xbzTaBs5ZMxq
         q4lQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=r4tlZ/xT66zYh49df4Ctzi5baDA2r8zLFaEWTuVkvLQ=;
        fh=zTg99tV2FwxSflUe4CgagDXThaYs62nW6WrxMAI7NEA=;
        b=J3kmDBvIkeaVqvUTd4W2ndbzn4RwjHYoIw0P7xSMlK/1rTsayLqhPqkrX/dMx9IZ9b
         xt0kBvKfnhp+z5lyaByl9Du6jzcRqiJH8+4EYR7tmm7Usxo1Kx+zKUw1X2gZmhId4aqw
         3CNCTwVOo8WrpVzfXGrj8i1G7SdufmktiGXsd+EQiaMOXgkAVcBDwXI/lVX3ZowkuyUP
         PgNBVojAhS/L5UuZcMiJcM8r+lnfac9uWtuYusr4CmkmYcmYnrEWDUixebuxuNmNh2Pf
         BMc7b+lgBBGqsigoAwq7vTfVE2V1c86tqqhFhdz+qfQsPHGfk2O7GH6ygI8Vlyu4cF8v
         SkUQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=0OxxtmGa;
       dkim=neutral (no key) header.i=@suse.de;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=0OxxtmGa;
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:2 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736753128; x=1737357928; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=r4tlZ/xT66zYh49df4Ctzi5baDA2r8zLFaEWTuVkvLQ=;
        b=LlZUhCNKTQIi3QbLpQJSe3GwXmfeCQObJDzSLK4QoxL92uziJ+IT+AA+izVzZKI6mO
         CdadlsL6m3lFBX+NLmChNgzoKS5mJOZ8V15N/S/SEec02Km1aeo47qz91qGY8ciZfUAx
         cwlvmsQ1Nx9U2b1KBtXVqCw5u3y7HlG5B6/Gk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736753128; x=1737357928;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r4tlZ/xT66zYh49df4Ctzi5baDA2r8zLFaEWTuVkvLQ=;
        b=MFG1Y0tSZnNYOwaBnlIUhzqz47BFcbh+iFopjiPgLp1I8Tu5ed5UREDiWxoOpoit8Y
         TZg0GItw/5AadW0hwjorL/p7qEEjF48PT9pWBLHQPjhmR7bHhif09rBO+NFW2i6Eof3i
         Cplvke8E4vmQhByVPS+TY06klaknoE/j0vNCOAQcKrcqKSz5u1I/kKyviWtSSsQgGp2U
         PY5R1rAyMcyFqR2QOqBelsycXvB5GeuhM3dvR8ZjoVpvI6hevOu9vlVYnlc2RucbGDYg
         NdAt+Qh3UaTdrc65gHwTLVWXzHK080WPU2b4NsW+9Fzjv6dzUdlLVioSGlkzxg49VRDl
         ha3w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVfyn0tejNc7JVvmXjS6VxRhSqjR/TscJtvGpKPnvl+obVzW4kn+TxNWRkrSmV7muaCdhqjgw==@lfdr.de
X-Gm-Message-State: AOJu0Yz/K9ieu/9DXzbLfPRflySxboMoex6+WdLfrYTNcbxt8suWA23c
	ULfXvX6b5nceWwOVTU8lttBsXEpviXRK+HOAlkS3R7xfMNUqlzzIb/vq9vG1VLZbTWMyaLA=
X-Google-Smtp-Source: AGHT+IFogE937UQevJRaQRMYIf/SBo7jZOOoSVzuxYSFWUfUmtKnZqHQBtkgW0xUP82+I/DQRLXPPg==
X-Received: by 2002:adf:9ccd:0:b0:386:3c21:b1f7 with SMTP id ffacd0b85a97d-38a872f40f3mr5788710f8f.7.1736753128005;
        Sun, 12 Jan 2025 23:25:28 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:adf:a18f:0:b0:386:386b:afbe with SMTP id ffacd0b85a97d-38a8af168d9ls520248f8f.0.-pod-prod-01-eu;
 Sun, 12 Jan 2025 23:25:26 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCX6msAfaKl3AYS71G7iBtrZoVgu5l8Noinazw9kX0NY1bttC9JbzglBuvqRrFI5T1BlryJ3l+5qBj2I/Q==@lists.one-eyed-alien.net
X-Received: by 2002:a5d:64ee:0:b0:385:fc00:f5f3 with SMTP id ffacd0b85a97d-38a872f7f8bmr12867222f8f.4.1736753125581;
        Sun, 12 Jan 2025 23:25:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736753125; cv=none;
        d=google.com; s=arc-20240605;
        b=EcJfy2oXum26bZB3mrAnBEyn5r1nCIdPu478xXc/OSlP1L5ct8IeDfDjVmbOzTl3lH
         Fu0RzephTigk1zAWrzgMuUrIVX2nOLc9oO80H9l0U/Vl+34IXG23ZyhNx+Mi1f5+Q2iA
         GkVBIC2A606yM6pRx/ywU0ePGftD0ewocci6dXJwSpiZpUJ9Itiijbgy11+SFsXeDQGZ
         FQkSgrCgpXbBqD8QFUOs4rtspVFtmvdME3r77eTvk7iDk1pILfRhjg99Z9+E3z4CVBMr
         cM7kQN1zr2iN3cgF7BBo2DPhRTAMa0mhZaN+5oRihK1fGq6Lsx0nL0fJ1rgfJTR6P8QR
         oPGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature:dkim-signature:dkim-signature;
        bh=SPMujG4Ms43NVefw5djXYekatCdjL2IaFIVDnYRZmRs=;
        fh=v1iOF7wU2LGTSrOeQNbYZHRLZQz8Z4SchD9MvpWdaCc=;
        b=NxXK8v3KO0PTryi/LxrGKbKqaXdr40OttPFSnJ/AlJnkbUbRPlHbQ4ipZx/e790Dks
         7fibHOpOHBdSbkL8nHVsb+yfOGttohuGV03rGg7D/HC4B9QAx7gH8MoCspl5+Xoa6zhi
         rsiPXRDMux5TsPMeJP52XPgDwHLdxx2e2KkKCfezuVq/tCKpsq/VONA58me2oTMcI2Pp
         ZK7XSRmHPZqzKZLmtCXq/BpRgxrgJFfEv4RAk4otFUMSSE0hAeQLwB13ZV6JIxkKX39T
         t+zAqYyZNIar1KPiaRgaIyAWlQaNIRBSUpuh4vLXXyJsRAK0dqAJXVj4y5QmRHJOYuql
         YhUA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=0OxxtmGa;
       dkim=neutral (no key) header.i=@suse.de;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=0OxxtmGa;
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:2 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [2a07:de40:b251:101:10:150:64:2])
        by mx.google.com with ESMTPS id ffacd0b85a97d-38a8e4dec13si6414699f8f.810.2025.01.12.23.25.25
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jan 2025 23:25:25 -0800 (PST)
Received-SPF: pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:2 as permitted sender) client-ip=2a07:de40:b251:101:10:150:64:2;
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 22FDA1F394;
	Mon, 13 Jan 2025 07:25:25 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id BD7AC13310;
	Mon, 13 Jan 2025 07:25:24 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id IfMmLOS/hGdXLgAAD6G6ig
	(envelope-from <hare@suse.de>); Mon, 13 Jan 2025 07:25:24 +0000
Message-ID: <f3983911-74d6-4602-af60-17ba37d4c66c@suse.de>
Date: Mon, 13 Jan 2025 08:25:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 05/10] block: fix queue freeze vs limits
 lock order in sysfs store methods
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Damien Le Moal <dlemoal@kernel.org>, Ming Lei <ming.lei@redhat.com>,
 Nilay Shroff <nilay@linux.ibm.com>, linux-block@vger.kernel.org,
 linux-nvme@lists.infradead.org, nbd@other.debian.org,
 linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <20250108092520.1325324-1-hch@lst.de>
 <20250108092520.1325324-6-hch@lst.de>
Content-Language: en-US
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <20250108092520.1325324-6-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Spam-Level: 
X-Spamd-Result: default: False [-4.30 / 50.00];
	BAYES_HAM(-3.00)[100.00%];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	FUZZY_BLOCKED(0.00)[rspamd.com];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lst.de:email,suse.de:email,suse.de:mid,imap1.dmz-prg2.suse.org:helo]
X-Spam-Score: -4.30
X-Spam-Flag: NO
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=0OxxtmGa;       dkim=neutral
 (no key) header.i=@suse.de;       dkim=pass header.i=@suse.de
 header.s=susede2_rsa header.b=0OxxtmGa;       dkim=neutral (no key)
 header.i=@suse.de;       spf=pass (google.com: domain of hare@suse.de
 designates 2a07:de40:b251:101:10:150:64:2 as permitted sender)
 smtp.mailfrom=hare@suse.de;       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
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

On 1/8/25 10:25, Christoph Hellwig wrote:
> queue_attr_store() always freezes a device queue before calling the
> attribute store operation. For attributes that control queue limits, the
> store operation will also lock the queue limits with a call to
> queue_limits_start_update(). However, some drivers (e.g. SCSI sd) may
> need to issue commands to a device to obtain limit values from the
> hardware with the queue limits locked. This creates a potential ABBA
> deadlock situation if a user attempts to modify a limit (thus freezing
> the device queue) while the device driver starts a revalidation of the
> device queue limits.
>=20
> Avoid such deadlock by not freezing the queue before calling the
> ->store_limit() method in struct queue_sysfs_entry and instead use the
> queue_limits_commit_update_frozen helper to freeze the queue after taking
> the limits lock.
>=20
> (commit log adapted from a similar patch from  Damien Le Moal)
>=20
> Fixes: ff956a3be95b ("block: use queue_limits_commit_update in queue_disc=
ard_max_store")
> Fixes: 0327ca9d53bf ("block: use queue_limits_commit_update in queue_max_=
sectors_store")
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Nilay Shroff <nilay@linux.ibm.com>
> ---
>   block/blk-sysfs.c | 18 ++++++++++--------
>   1 file changed, 10 insertions(+), 8 deletions(-)
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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/f3983911-74d6-4602-af60-17ba37d4c66c%40suse.de.
