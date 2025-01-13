Return-Path: <usb-storage+bncBCHZVHVFVMARBN77SK6AMGQEVKC6ODY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x345.google.com (mail-wm1-x345.google.com [IPv6:2a00:1450:4864:20::345])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F24FA0B003
	for <lists+usb-storage@lfdr.de>; Mon, 13 Jan 2025 08:24:40 +0100 (CET)
Received: by mail-wm1-x345.google.com with SMTP id 5b1f17b1804b1-436248d1240sf18655035e9.0
        for <lists+usb-storage@lfdr.de>; Sun, 12 Jan 2025 23:24:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736753080; cv=pass;
        d=google.com; s=arc-20240605;
        b=NJ3zyqD9BKPhP9W6Sf4ZLwvkBHZgzRf+57dwqSb90habddv6pU5b/hg/Che65pkuRL
         j0jwab7NLbp8T59rvQePZEq80mpKagfQTurzIggd6B2VcU1spKG7TNeUtA9JSgC1Lhc2
         AmQfxMw0ojy52dvn7mrf7LpNBfXh1E1FTMm2MTgcCf0YoN3pjnRzABQyKWQxKT7S2SkK
         brfOxyxqZ29QfpYncIl26zFiXI64+x4HKzoJDC+NaPi2+lQ8tfg4UKJO4CcgXSsYid/k
         nW1OWdOd+LwtGgv0S6ZfUqXOD0OOqnIqpHMQBgpPzXeZqjbCfFXXIRJat1Ge17f86rWm
         vZcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=q4fITzDMtYvaz9lM55uoLUWdEJBxX4moIhSaO2zDbms=;
        fh=b3QiCpR7bQWi3LW4i06xK9I9MnjqQH9IR7eFK0iQATs=;
        b=eqoS90i2EMIjD25hhWhXHZ4Qu33hRxTui+OM8vVJaMiGVlFb+kcuU5pNMzpDuvAG3L
         V1UbUomEJ4MjkvVhwiXtPhK2KqwHNCqXf03jt92ZDah1kYAec6uodHxVsoZb2lWlaLc4
         FLRF0ByO6GD8NlTcHN6D6EMXpV0TN7Jr6W/DqWWVJJo8BYfbIh9JTfKinIZupbH14N7/
         LUlD/4Ud09mSI6wm3MK1YzzstHNiiNX3P8dO0irySmlvmr1eWiKk3Eouia81hVIVhep1
         WG3yYgGSUiOWpAXdsqLDIvTzjiGrbdr9HB8Kd6wSeuqxdlCxzbANEin75nhNHOvTG8K6
         JZ3g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=j+vgPO3m;
       dkim=neutral (no key) header.i=@suse.de;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=j+vgPO3m;
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:2 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736753080; x=1737357880; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=q4fITzDMtYvaz9lM55uoLUWdEJBxX4moIhSaO2zDbms=;
        b=TAX+3wHk3k6uIFX5AzsnJXHPNT8zD1A/3t+53+k+idHiAt5D5oVVYzkwMKCryVywVy
         FmCSeaTsWGdokeIgH35hiuVaTgpLRjF4vWDldcZ6rRRU0xfAs9JtcJSXB1ECjejJEuFF
         KlBUgX8akAKmY3HyjYiuw6M2MJdkE/gKGkFrI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736753080; x=1737357880;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q4fITzDMtYvaz9lM55uoLUWdEJBxX4moIhSaO2zDbms=;
        b=h3ZsQMBnbaMOtwKnhtrp3ki73pdCHngSm2FoGKLkzRCBqGa2+ksi8bLw4uwmkBzZcC
         iNkwKv9PphL8WI5sg5MC0KX1SyxOvdaAhue8Nh4azZymOZXQK9AhQefffByd3GYu/MJ6
         /Zwf71y3+clhYyRvYBCMZjfXeOZR0d1yBSaxc9+miFmRnqjC9sv8vSgUEOsdLzoZAE4/
         CiWsBpKkLoX+QL6wi7ZgM1nMJ/bb59vex59kK1edZP36IRMqe/VmQUEf4E0HAv78YBk4
         IhC/Dv/JfoQWka8H0z0bbr+v9uzvxZ+LuWg8UNEjrJlgMxu2wLensMME+BO98KnlKHmU
         k5fQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCW8R4ukJvFFV5SPtgeAzgfaGPptN445pgK+jju/gJmZNGW/ur+SWIddsOXQkODtyarkqnwMEA==@lfdr.de
X-Gm-Message-State: AOJu0YwH/8skk0M9RP5nmdXRAeyXY2mzauTH4ua9cNQjdZT6LGGVx9G8
	/hkAE4C16eMumanOY0JeEJ4h1STUfb4bS9MrmpxnXtILncYW7qA/0/60iwl2mBQ=
X-Google-Smtp-Source: AGHT+IE9IDqPAhSGkwuplSjxgBKOAdfieGUKmdtH42nvgMKyoJtNEoLFxeZDC2n+bTIaWydTcXI7uA==
X-Received: by 2002:a05:600c:3b94:b0:434:e2ea:fc94 with SMTP id 5b1f17b1804b1-436e2696cb8mr189988505e9.11.1736753079733;
        Sun, 12 Jan 2025 23:24:39 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:600c:600d:b0:434:aa6f:2408 with SMTP id
 5b1f17b1804b1-436e87ec4d3ls20073705e9.0.-pod-prod-03-eu; Sun, 12 Jan 2025
 23:24:38 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVBKR/8FL4cWbAibN/q8/VfxpIM5W0lINxiiz3uMqv0taMj1BY8CvI/696pxnuU0xl0eSxOe6AyMkLaXQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:600c:4ecd:b0:434:f739:7ce3 with SMTP id 5b1f17b1804b1-436e26954a9mr169666565e9.8.1736753077742;
        Sun, 12 Jan 2025 23:24:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736753077; cv=none;
        d=google.com; s=arc-20240605;
        b=EPs73Gj0hyvS66ereXxDWPviM9Pv96pEQFrzjXnE3XePaNy97W8noaFbDLhoPQFerk
         c3Xd2Wkx/dFvGhV5jdXtCxERM3K7CSbTW1qxHJ2KYsYr1otLIEdiUtS7ZsCz6eZI0g7R
         EVl18aTTDtRJO61FClWsnx1aTNopRaHvwd3fI44cMz4Qh1ZmW0jQmD4rurjo0QbH7Rlq
         DF0POG7ee2crccWPf59z6r0E0uBo21wmWZJkRScxXyHBkUVQbj7SfhfjegrYNQ6xEuyF
         C3LRI8ziOkrumwQtmc0gFOgISxGmvNNqCvUEXhMi1oy56svPxHoe1zTVx5tKlvOpYbA+
         bs+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature:dkim-signature:dkim-signature;
        bh=xnfZg9j1x8q2YZgngnPcpJ8AvSw0jeapwElcDEV5W84=;
        fh=v1iOF7wU2LGTSrOeQNbYZHRLZQz8Z4SchD9MvpWdaCc=;
        b=ki/scWreIgQjzlj+UMrmuYvTUz4hCNucdqRCqQRJ0vRClfyJiXhq0e+f7+BknM9J1h
         pi4Pj31tI5/ZkqT1fdTcxepqTVIQZlhrx6RbCQ7nAM6/Pai+SO1z8CA3dOP0ROjjsZFd
         sqMw4+RiPPE1wAXJQIY2Jq14imrLTTnRhXm7deS/XkNLzPaRAslJutIdZvb8hiBcyGgQ
         xOzBygomQaU4JXJd5UvrRrTa48bHQJg6j5CTq+8Iq2Gn4FzdOoQj9f+sZaOJzonSWvLf
         vL+2jkc6L/jp/wr+tDrgqR3qMtHJjYSD0IZ59B7Bs71CiuO8muEOgiHORk1OQrImG83E
         LAnQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=j+vgPO3m;
       dkim=neutral (no key) header.i=@suse.de;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=j+vgPO3m;
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:2 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [2a07:de40:b251:101:10:150:64:2])
        by mx.google.com with ESMTPS id 5b1f17b1804b1-436ea40dd5esi61996035e9.88.2025.01.12.23.24.37
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jan 2025 23:24:37 -0800 (PST)
Received-SPF: pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:2 as permitted sender) client-ip=2a07:de40:b251:101:10:150:64:2;
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 359AA1F381;
	Mon, 13 Jan 2025 07:24:37 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id B063513310;
	Mon, 13 Jan 2025 07:24:36 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id WBkqJ7S/hGcpLgAAD6G6ig
	(envelope-from <hare@suse.de>); Mon, 13 Jan 2025 07:24:36 +0000
Message-ID: <d3f26d2e-8533-4cf9-a422-16a46a3981d3@suse.de>
Date: Mon, 13 Jan 2025 08:24:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 04/10] block: add a store_limit operations
 for sysfs entries
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Damien Le Moal <dlemoal@kernel.org>, Ming Lei <ming.lei@redhat.com>,
 Nilay Shroff <nilay@linux.ibm.com>, linux-block@vger.kernel.org,
 linux-nvme@lists.infradead.org, nbd@other.debian.org,
 linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <20250108092520.1325324-1-hch@lst.de>
 <20250108092520.1325324-5-hch@lst.de>
Content-Language: en-US
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <20250108092520.1325324-5-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 359AA1F381
X-Spam-Score: -4.51
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.51 / 50.00];
	BAYES_HAM(-3.00)[100.00%];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	MIME_GOOD(-0.10)[text/plain];
	MX_GOOD(-0.01)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FUZZY_BLOCKED(0.00)[rspamd.com];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	URIBL_BLOCKED(0.00)[imap1.dmz-prg2.suse.org:rdns,imap1.dmz-prg2.suse.org:helo,lst.de:email,suse.de:dkim,suse.de:mid,suse.de:email];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:dkim,suse.de:mid,suse.de:email,imap1.dmz-prg2.suse.org:rdns,imap1.dmz-prg2.suse.org:helo,lst.de:email];
	DKIM_TRACE(0.00)[suse.de:+]
X-Rspamd-Server: rspamd1.dmz-prg2.suse.org
X-Spam-Flag: NO
X-Spam-Level: 
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=j+vgPO3m;       dkim=neutral
 (no key) header.i=@suse.de;       dkim=pass header.i=@suse.de
 header.s=susede2_rsa header.b=j+vgPO3m;       dkim=neutral (no key)
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
> De-duplicate the code for updating queue limits by adding a store_limit
> method that allows having common code handle the actual queue limits
> update.
>=20
> Note that this is a pure refactoring patch and does not address the
> existing freeze vs limits lock order problem in the refactored code,
> which will be addressed next.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
> Reviewed-by: Nilay Shroff <nilay@linux.ibm.com>
> ---
>   block/blk-sysfs.c | 128 ++++++++++++++++++++++------------------------
>   1 file changed, 61 insertions(+), 67 deletions(-)
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
ien.net/d/msgid/usb-storage/d3f26d2e-8533-4cf9-a422-16a46a3981d3%40suse.de.
