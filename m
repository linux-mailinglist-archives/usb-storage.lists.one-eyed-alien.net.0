Return-Path: <usb-storage+bncBCHZVHVFVMARBX7H2HAAMGQELRDGQEY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x446.google.com (mail-wr1-x446.google.com [IPv6:2a00:1450:4864:20::446])
	by mail.lfdr.de (Postfix) with ESMTPS id CB6BFAA6B96
	for <lists+usb-storage@lfdr.de>; Fri,  2 May 2025 09:27:28 +0200 (CEST)
Received: by mail-wr1-x446.google.com with SMTP id ffacd0b85a97d-39141ffa913sf799310f8f.2
        for <lists+usb-storage@lfdr.de>; Fri, 02 May 2025 00:27:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1746170848; cv=pass;
        d=google.com; s=arc-20240605;
        b=c9gJyGLa+jVlUfXp2wdFjzdWFyEK9uxUYvaz2vdzXA4BsG0RQUWMv1kJgB6DCtBQRU
         6cRvNdlFVjwqVbTys/qtIFdTZ9azXniIBdvE9cO0CCmSLizYd1SCgHZUvUT67rlmNzwi
         YNJMxW3EEGQZbCBcdagTaZdN3nH5p6i1ToELXEc2Fym1CmHnapsvNT6T6YHCD5+aPy9C
         PiXeccbNrlJC2NGRKHgg9wy62mTUPFrKTJ233//pS4no+Go77kbgKm01M3Pm+QoU0aCc
         dFv4Ihpcyk+7UsjblRTd5zH1yehOpNkzgbbrRtK51EqrdIWoZVsGsQ4MSmyuchKxkURM
         oKOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=rgZ4Q9AuSa4FWPmUZEnbB70J4PtUCUZ8i7EFgSN8W+o=;
        fh=8AC4M+cnbZIJBsBtxKMG2l2J7b9B0G9rzj2j0XoHs8k=;
        b=PLHA1GmE9w+Gc8LeeVyjyKFwmCHEOXOPgX3aOd7XpSiddv9+jgx/14TV3BMV+XBINW
         wL8k/7cl+axg/4I7p6IOaaJck5a7lInrQjQFEeatMHkd16i3UfWBUwwRaHlPNe3oufcQ
         hoQ59zudht3S0V9YyhnCjFnLwYPGr99hDfN6Sfm7hWDhchgWwniiRU0t+x3mNN+bfb5a
         kuiYDcxeDGvQoVbz1G7yu/dTFr8ARjf4PaEOnJ/4HsZ5LhvZTNPABlayryGh3HqEYbLk
         e1vW27tRa+lYKcecC07MKXvz866bJ2tlwrHjEEl7YzOQiVXGyGFv/Je7QMs94zEXZXtZ
         fysQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=tHVANqYJ;
       dkim=neutral (no key) header.i=@suse.de;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=tHVANqYJ;
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:1 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1746170848; x=1746775648; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=rgZ4Q9AuSa4FWPmUZEnbB70J4PtUCUZ8i7EFgSN8W+o=;
        b=NMtzCSCl+yk6JzuVMEQUuhG9c7L7y+HFqIqLjarE30HxYYIwE/Z43HvsyH9WQD8EUr
         VDVtCF/ifLV5xCALy5YqSoUDwkfnjnb80dyjj3z7+TTj508o6j03eagMBW9vda6YKkk/
         c35A64cU25v0hC0fH3L7HTTCOvQvrdE+G3AVY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746170848; x=1746775648;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rgZ4Q9AuSa4FWPmUZEnbB70J4PtUCUZ8i7EFgSN8W+o=;
        b=bopQbo3BokkSsmNCTgJ+G9wA/4Mw7hYHvt3XQtnTReYksmhMTGn+xNYBTylPk+SQ62
         yRgcoLil8fmEX2vDIH4swROZXwugIrIy/k94DEfRdIcYoEwSgXnB+PsPzrzJ6MZ0YI9y
         YkEJriRa8LGWXsYCnIIjiK8ycDYxt8JRr8QxTzxbKcyGbhGFFDb0BaDZFky2SN/VGluT
         1je5xKL+q0QQmkH9ugDVedKlngB71kYFm5R+bjvoFltvB/VakaZOnB8/glgHhIIbhO5e
         7NCLmQ9Nshi+SLqNEnnAhWbNLDtT/DzMoS2cRjYDNDeKBb/rWahxy3yPYjEtxjOcRxjx
         /Y/w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVq19fw1NtOf3LVWARRtHVhv4oiaab6hcrbxpoAU+sH+AaDV3K5FYfpUrbCGO6bztgHYai5CQ==@lfdr.de
X-Gm-Message-State: AOJu0YyBUR4UdFGMvcZm+VLoFtkrSoCoF5SonUTuJKY9P587rq0F8UM3
	DnbvCm2S63bGtkUfmYWMFGO2OUqz4VhNyke0/nedwl3rMI89tCh3ZwORg/KAa3g=
X-Google-Smtp-Source: AGHT+IHXvtP0YNwuw1gidoqY46MU9K9TI0YGWUFTGL9FNwUS6ysN7VHYssWBRGuDKeQdw0eGj/1Z1w==
X-Received: by 2002:a5d:5f93:0:b0:3a0:8598:8e7c with SMTP id ffacd0b85a97d-3a099ad3222mr949146f8f.6.1746170848269;
        Fri, 02 May 2025 00:27:28 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AVT/gBE6vSLCNMlWtalcRWCCXZ9IKNvRCQ2RLLlclDQsvcfalQ==
Received: by 2002:a05:6000:1862:b0:3a0:8119:6f33 with SMTP id
 ffacd0b85a97d-3a092c4554als798367f8f.1.-pod-prod-07-eu; Fri, 02 May 2025
 00:27:26 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCU7nxNMebkToyL9OxqLIvrTWBVnG/QGTfkFvA3kNLdYNrV0+vQA5gi81ls+5bRtVaVHu7k3HYfPerw1/A==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6000:40c9:b0:3a0:84a5:4067 with SMTP id ffacd0b85a97d-3a099af1568mr1119881f8f.54.1746170846134;
        Fri, 02 May 2025 00:27:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1746170846; cv=none;
        d=google.com; s=arc-20240605;
        b=cxpUWMFbycM6aTQFXcIfxHvu0T79QM4NO2vqEsYyyR8YqtojeuhSj7beeGUmPHyzov
         ctOXdzSZW5ot1njW2x7cfYlqee0iF5wL644YHZClhpzaXcCRrPZGOKugGt9nENC+7X+i
         YSJdUbX59IAppm2Bq3zX7gvamt1plglWZbtOYBS6ipc3Bolwa/pGvAhTDQ3ngQzCQUNG
         uKZ6Pb9L9pa+ei0/Gnr/LEprq8zsajR+eVDYsrbk90f1Hc7f+KfOO4V/Yx0/BasEf78q
         0cVd3+BkizHEBvuDV7tikxmjx2z4kVhBvjgWFG2hQBC2AXQqP5H5oE/fY5TTEYQFM3D1
         2kZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature:dkim-signature:dkim-signature;
        bh=LehNLP4aFKmfjVjCiNiTfCnWhQDbiMcpDTK9kdHJbjk=;
        fh=2/y4n9TazrvSeGQDP+AiTTbFeMAHnFfsMq4VIxZv4EM=;
        b=K1/N9BfzmcVLRjVtc1Nb6XcqtdWpfQGonqckkgG15unoBhQQbq/eKmLccxlu90KACB
         1y7u80/ryyJJ6RwdmAtQw3uEyD+cidE4zAODRneE37rSW8NdBv4eVjaeg+xhIV5lrGYe
         UM7tOSJKArpZv5Z78oVPOFdiyDEe9Yhw3uaUAAJhVtmDXQcm+RKRtKOFPw3UmHCu7bU0
         GJMMrgwL59mGRELZyV+eNz+DERFVtK/ojRbtmu11Lst08e4tt0jSY3n3o/XcPcSb30Ry
         JA+RTJhvqF5hW3htCBoce9oZO+kLu8Cdj6TVa2FDePQaNujjh8mdybhp9bl4hGLsXdjJ
         bVWw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=tHVANqYJ;
       dkim=neutral (no key) header.i=@suse.de;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=tHVANqYJ;
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:1 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out1.suse.de (smtp-out1.suse.de. [2a07:de40:b251:101:10:150:64:1])
        by mx.google.com with ESMTPS id ffacd0b85a97d-3a099adf95dsi714359f8f.110.2025.05.02.00.27.26
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 00:27:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:1 as permitted sender) client-ip=2a07:de40:b251:101:10:150:64:1;
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 9F32521227;
	Fri,  2 May 2025 07:27:25 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 23F0813687;
	Fri,  2 May 2025 07:27:25 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id ZhCgBd1zFGjHOAAAD6G6ig
	(envelope-from <hare@suse.de>); Fri, 02 May 2025 07:27:25 +0000
Message-ID: <0a76977f-aa17-4aa6-93f4-c0b02ce1b137@suse.de>
Date: Fri, 2 May 2025 09:27:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 6/7] block: remove bounce buffering support
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>,
 "Juergen E. Fischer" <fischer@norbit.de>,
 Alan Stern <stern@rowland.harvard.edu>,
 Andrew Morton <akpm@linux-foundation.org>, linux-block@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, linux-mm@kvack.org
References: <20250502064930.2981820-1-hch@lst.de>
 <20250502064930.2981820-7-hch@lst.de>
Content-Language: en-US
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <20250502064930.2981820-7-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Spam-Level: 
X-Spamd-Result: default: False [-4.30 / 50.00];
	BAYES_HAM(-3.00)[100.00%];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lst.de:email,imap1.dmz-prg2.suse.org:helo,suse.de:email,suse.de:mid]
X-Spam-Score: -4.30
X-Spam-Flag: NO
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=tHVANqYJ;       dkim=neutral
 (no key) header.i=@suse.de;       dkim=pass header.i=@suse.de
 header.s=susede2_rsa header.b=tHVANqYJ;       dkim=neutral (no key)
 header.i=@suse.de;       spf=pass (google.com: domain of hare@suse.de
 designates 2a07:de40:b251:101:10:150:64:1 as permitted sender)
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

On 5/2/25 08:49, Christoph Hellwig wrote:
> The block layer bounce buffering support is unused now, remove it.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   arch/mips/configs/gcw0_defconfig  |   1 -
>   block/Makefile                    |   1 -
>   block/blk-map.c                   |   5 +-
>   block/blk-mq.c                    |   2 -
>   block/blk-settings.c              |   5 -
>   block/blk.h                       |  17 --
>   block/bounce.c                    | 267 ------------------------------
>   include/linux/blk_types.h         |   1 -
>   include/linux/blkdev.h            |   5 +-
>   include/trace/events/block.h      |  15 --
>   include/uapi/linux/blktrace_api.h |   2 +-
>   kernel/trace/blktrace.c           |   9 -
>   12 files changed, 3 insertions(+), 327 deletions(-)
>   delete mode 100644 block/bounce.c
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
ien.net/d/msgid/usb-storage/0a76977f-aa17-4aa6-93f4-c0b02ce1b137%40suse.de.
