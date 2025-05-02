Return-Path: <usb-storage+bncBCHZVHVFVMARB6HH2HAAMGQETLEKIXA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x548.google.com (mail-ed1-x548.google.com [IPv6:2a00:1450:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D00AA6B9B
	for <lists+usb-storage@lfdr.de>; Fri,  2 May 2025 09:27:53 +0200 (CEST)
Received: by mail-ed1-x548.google.com with SMTP id 4fb4d7f45d1cf-5f92fc82c4csf1036452a12.1
        for <lists+usb-storage@lfdr.de>; Fri, 02 May 2025 00:27:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1746170873; cv=pass;
        d=google.com; s=arc-20240605;
        b=R8pQu1ygYOcD4rckcJy+/3TaUVRGrXlbg883x52o+PCZkCV2GZEFaSp/tyd/mU/2A9
         GboSuYKm6nLZIwTnyxfJHlKLhQlA85RZb9ImI2ZiQBn+nmphMNhWT4NaEhP409mOtOrc
         ysk6EmsZcpHYhdgVrzRJkTXmeqqiWxBMRJUGGJkuflepny6QbZ43F7UUvV6hCBLoXWEx
         AhJlcSBmbs8iZA2O1vgMMI1fO78kGCYZJnX9I193Ey6KDxODKvuug44UbuTs1W6UYzKG
         luenkgUYkDG62VZ5eHv4gswSQhI7eWFAi3Zry0tKZuyuWdu/MQ2gk3YT2IFzjU+KrnTR
         DHRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=N7FVFXQ435G/Gugg7IjzgJ8Kfu/uhTQYWkMkihSzkNk=;
        fh=K2XTWh8anZdkk2c9x4YqHkpCWcQDj5aQq4aXCndKzeA=;
        b=CsGxRJAFNhlrWcMYHu1uCwpQmNqDPRIbbYmMhMPLwcbpB7SNGYUljFafD+4O+gF6rT
         xZ5ugpu4E9JMYBDHwTgGwmoIvRHtDuEU15itqZCAV9PntONtoip0txe34McVjtjpxeUY
         3GBqoKKSmYYofTIPuGETZZDTNtlFYLnivTuvq3/XwM8fy59pngxSGsW9YGFtm92Fac+j
         GLa6oyMXWV/03y+HvXT9p9/4QkAlrGloi3shsrbrWt0bzLJX5LUkrpjBWQeM5DigXlFe
         PrvaaNjFCmpWIbzYW2YLJK6tG8AEw77r9EGF4Ms97S0BZJmRkc4D3pHjaMjQG/CpvNIv
         XiEg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=ShzLkQ8v;
       dkim=neutral (no key) header.i=@suse.de;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=ShzLkQ8v;
       dkim=neutral (no key) header.i=@suse.de header.b=SQnRgcpb;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.223.131 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1746170873; x=1746775673; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=N7FVFXQ435G/Gugg7IjzgJ8Kfu/uhTQYWkMkihSzkNk=;
        b=ivzC6TvgTFjILUZqNfqWfzB+eGwnIvfcQYmZtdE9q3I2ON1bbOeJx1WbSfUVvBY8L3
         n09F54emBSCeT86PiClx9Vv2KDerAgDUOtM0io3aWRYZTxbCPldFgCAnN//xox3Iw0dS
         rFWOIUhJlSW3BdjP8eOmdGhvwQdbZzdATUemk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746170873; x=1746775673;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N7FVFXQ435G/Gugg7IjzgJ8Kfu/uhTQYWkMkihSzkNk=;
        b=LtjlzfUFcGKwkVgG+EGQaKFSYf5WU0fQ2xahsCfjuu+Jth31nsBfOfHBUdi5kTEkHq
         AoTc84BffQ5vk3SbpO8WtNi592LJN2SDzDFmJBZP91PXMPnct8//+8gL51zRuQLgEFMv
         dT6D0ynit4POFxxrVfWenLSL+nBQx98dww44Q26XM1Q7BX6GLsxxvD63hGJ36IJvbezn
         l4oYhTaVMja6eNAd8BTAcP4e8gw8sSszzzFpgB8b9CmwqXcqTFJXPSpfLpqulBnRwA4B
         6NXXCRWJm9UwQ0svthqLZjSxqAMciBzj3yAVYhK2EPlEYCdg4Zg5dFf5EARDoZOOVyTt
         b3TQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVfVc1570wpRO+Qopfer6ZtGFvXwRerJTOAOmhytaUfwpZ5Gi8fI8XH4UOEVG1zwtfhB5Rgxw==@lfdr.de
X-Gm-Message-State: AOJu0YxUR9rx7Y625KVdOyP6Rou0XObojnbJbsDM6prOw02XWuhk0xXt
	2nTxMWfXysWKS1LXp+aR4TOvXDi3/dahqMMOjaDsqhSX0w6Eph9Nw1N9HriB/D8=
X-Google-Smtp-Source: AGHT+IG/1TYgBJexFrgcNfM1H6g6Yhs2XL7VCKAm7zgpYLTwqPwmLa+5B8yCOHwFgMZj6ILEwXSTRQ==
X-Received: by 2002:a05:6402:518b:b0:5e4:cfe8:3502 with SMTP id 4fb4d7f45d1cf-5fa7805e562mr1347722a12.17.1746170872529;
        Fri, 02 May 2025 00:27:52 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AVT/gBElnLuyuH4UfyDpX/DpxYQzeKVeW/xYJnutYIps5Oku2g==
Received: by 2002:a05:6402:34d5:b0:5f8:2f70:6c4a with SMTP id
 4fb4d7f45d1cf-5f908f120aals1425040a12.0.-pod-prod-01-eu; Fri, 02 May 2025
 00:27:50 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVDxj7mOq8vxU4hNaNarjbyxn2e+rtNL/JspinlNZZ9r/iBbzq+a3NNaaZfiEpa/7fmu61Z5XIMvUCUGg==@lists.one-eyed-alien.net
X-Received: by 2002:a17:907:7f90:b0:acf:b9bd:300b with SMTP id a640c23a62f3a-ad17b471c1emr172897166b.11.1746170870485;
        Fri, 02 May 2025 00:27:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1746170870; cv=none;
        d=google.com; s=arc-20240605;
        b=i4IPe0dginsNr6NzF1kHo+8sxoqd5uRc5TV/x4p3PWM0fbULSb72xIgxL+OK6jhmCI
         vduwKWC1/P2GyWiJws0KlJbQYMLR891ZntNMl5QSFPzUKN4iLKkGNV29mDDPg1JYNLNy
         ChPjmxvL9dHGms9IOE8g2J1Vgpn6QaItkeo7bDdDJ1ZXGmeW4tBxrcCpcKATkgN/8B32
         jBoa5EnZfJw3lbwukHhBncz5XCDn9tLNymUpDsYZi3EwwJbBH9Ft2GsdzewLaqzgspCM
         zeypuWyuHaFcxbHVvUFz/mGyOcqbJbc+Mp2mMpxclWPdxH9RPodUVYc0tY2ZHrergb+b
         RleA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature:dkim-signature:dkim-signature;
        bh=W2PGwf5whLEVyVOCQc+zLst5fgDgN/UZfYnFj0npqnM=;
        fh=2/y4n9TazrvSeGQDP+AiTTbFeMAHnFfsMq4VIxZv4EM=;
        b=THglJ4iaB+VsKn45xwDEDHxo4AMM4FSHk12kFMc4BRMBxYCAznj9JypYKAGC03DpiO
         VGH2V4U9beRJxfD+8LkVIaMu3nA6cRYoZOXPrNbkTYouoBWV8Z2Oh27ItQGBL/WJOPRe
         FSH88271aeMc40b9PSsXE5F7klcaFbOQD9ZruppdtX35ZpYEY3/2QbFEUzLWMlBtz05w
         AsB0GfIzfX7tWOAAhhFfxGuJ+dyTwTl66DDNGlm7nVD9ScUCRlyZZObxP+HV3tGyGu4U
         +zFFRsHcz1piI9uwq7Xg+gtDe1NMzQWiYuGkNjyQhIioY6HL8tTLwKiwfMrM6ZsCFw8z
         a1zw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=ShzLkQ8v;
       dkim=neutral (no key) header.i=@suse.de;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=ShzLkQ8v;
       dkim=neutral (no key) header.i=@suse.de header.b=SQnRgcpb;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.223.131 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [195.135.223.131])
        by mx.google.com with ESMTPS id a640c23a62f3a-ad1893c927bsi4808566b.580.2025.05.02.00.27.50
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 00:27:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.223.131 as permitted sender) client-ip=195.135.223.131;
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 28A471F385;
	Fri,  2 May 2025 07:27:50 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id AE80B13687;
	Fri,  2 May 2025 07:27:49 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id V7+qKPVzFGjpOAAAD6G6ig
	(envelope-from <hare@suse.de>); Fri, 02 May 2025 07:27:49 +0000
Message-ID: <72655fa4-104c-4dd1-be55-090f50089f0f@suse.de>
Date: Fri, 2 May 2025 09:27:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 7/7] mm: remove NR_BOUNCE zone stat
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>,
 "Juergen E. Fischer" <fischer@norbit.de>,
 Alan Stern <stern@rowland.harvard.edu>,
 Andrew Morton <akpm@linux-foundation.org>, linux-block@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, linux-mm@kvack.org
References: <20250502064930.2981820-1-hch@lst.de>
 <20250502064930.2981820-8-hch@lst.de>
Content-Language: en-US
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <20250502064930.2981820-8-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Spam-Score: -4.30
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[imap1.dmz-prg2.suse.org:helo,lst.de:email,suse.de:mid,suse.de:email]
X-Spam-Flag: NO
X-Spam-Level: 
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=ShzLkQ8v;       dkim=neutral
 (no key) header.i=@suse.de;       dkim=pass header.i=@suse.de
 header.s=susede2_rsa header.b=ShzLkQ8v;       dkim=neutral (no key)
 header.i=@suse.de header.b=SQnRgcpb;       spf=pass (google.com: domain of
 hare@suse.de designates 195.135.223.131 as permitted sender)
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
> The stat is always 0 now, so remove it and hardwire the user visible
> output to 0.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   drivers/base/node.c    | 2 +-
>   fs/proc/meminfo.c      | 3 +--
>   include/linux/mmzone.h | 1 -
>   mm/show_mem.c          | 4 ++--
>   4 files changed, 4 insertions(+), 6 deletions(-)
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
ien.net/d/msgid/usb-storage/72655fa4-104c-4dd1-be55-090f50089f0f%40suse.de.
