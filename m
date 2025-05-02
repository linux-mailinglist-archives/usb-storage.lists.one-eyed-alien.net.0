Return-Path: <usb-storage+bncBCHZVHVFVMARB6HG2HAAMGQEDEREVTA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x545.google.com (mail-ed1-x545.google.com [IPv6:2a00:1450:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E155AA6B8E
	for <lists+usb-storage@lfdr.de>; Fri,  2 May 2025 09:25:45 +0200 (CEST)
Received: by mail-ed1-x545.google.com with SMTP id 4fb4d7f45d1cf-5f62fb80999sf1658819a12.3
        for <lists+usb-storage@lfdr.de>; Fri, 02 May 2025 00:25:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1746170745; cv=pass;
        d=google.com; s=arc-20240605;
        b=FdE6uWFFFP07o+nGNEiodPT2ciNP1mDPUNlhqzT6SSMo8EaxzZy6h231zw1fG5igCR
         vNQOU5FrNotXCjzBiRJSq1SagIzH6r82tSjKlPINgEw69lZDxdDscAyq2KEeC8/Q1E3J
         AhWWi3AZ3z7TJMA4SrRsNobwyzascRBGiwsL9xFTI/tOMbDE/MjWHfCDovCWRILpZjms
         1gpLaWurvJbS/RTmYa73+oY0V6Ikj6QmxD9HklZ3cI72hYtajUJDyWP3mHTenOTUrP9x
         Cnva7t5BtglmeCgvO7iJaGZF0m9BTf6mWT8arp4uE3yuIGMnHcl5+8cNUNohbZcRq9SW
         1tZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=fcwM4oadCp7IZJc1vPl2pq8JA60Okzr3qj63RvDDcEk=;
        fh=CWK4JysnX0hJ/R3al+g/7TbdDiQbVZObSQAiOY9bK0g=;
        b=dQ6hB2sIDNvV9ORGjtH6qEmL0eNz6Jof2AoiTTxc4VPDrIVZ5qPUPuEi78RGyi5/j1
         U4Ydtq6A20ORZFTpqM4g7+1s07hY4kwjK8Lx4mxfoMdsrFQlPxQklqTrwTBkJOJyA/1N
         04lhBmgTSKxmkGTiq0nxcwJ9KRw6Jyrr6OPAs8KNzU8J444zGFPpkcdVAsFBHZhAelfa
         fFjOdcMMrBbtnkqGxXcXsP4Mu7k4xMspBPRPWEuDfqPjbzBm6Qwfmz9vIzu9bQBfViYo
         h+IxysDA70FWkn17YeEg/kCBylnHIGGJTypHIAumnLujbZjLGd4BVJXJxtzVAGwMV6Se
         F8XA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b="bgz5d/OR";
       dkim=neutral (no key) header.i=@suse.de;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b="bgz5d/OR";
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:1 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1746170745; x=1746775545; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=fcwM4oadCp7IZJc1vPl2pq8JA60Okzr3qj63RvDDcEk=;
        b=CR1MJ6N8jT5p2R7CJT4dWtP52Sx1OwapWTLm2hsJkjwly0vKvEy9rw5pBV9FRMJesR
         uVnh/wImO11aK+rt6uzcFpZsVVq4Wud0LIu33xhhXMPinLMSmYc3/GuWMYf0gHOSBd3I
         Gu72fVp4DA0QzaBdL8mn92RRXu5s7tta5sFCk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746170745; x=1746775545;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fcwM4oadCp7IZJc1vPl2pq8JA60Okzr3qj63RvDDcEk=;
        b=LGrDDu5h0hSI60AwWV5jx6138uwEori1utSqYC5R1QXymn6Yc21DnbnmKESMd1M1Sz
         bOgd4tjBSVO2GtUmKAOMCbTdNw9+DXypka/Ry5HoSl8+khXIXWE/CaumGArxi/naKokq
         GwJWpy2id0+v+SYPhcSNG+yRhype/JP3Ll8dg4ys+T4p9QhHY5wgOG4r6LKd503wVia2
         nzJsLroVvnoNJIEOIaSTxTfcjVA3N+tXkbQegqDV7jecSXwfY8yNXlis9QmDSqIcwBik
         9KO8bVy2uU9P3B0CG5G7DL/7ag+lreGC9Xdldbmj4vHGtW7sVa5pU7jrzI3C5iHnhk/c
         BUkw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVGxoRZgg6bEh6O+WLjU+jJ/G3NidDvSWd2qwmp3pgkOmePGP+6Wskq/as0RBQ5jpKfwIcoBw==@lfdr.de
X-Gm-Message-State: AOJu0Yxz2PNejL8MV9NCSPXBaEaM/9evTE3pqaIdDLaRZE4UQQorbcF7
	Fl8jJvTQMT61cY7lgtB5o+jjWKvXB5C5NNiCfXLVoo4thVJxdibn0hZU6goz+uw=
X-Google-Smtp-Source: AGHT+IF0dgtfUl4k8vzPBU0XSVWXeCxkXhPOqonG0IN9uzjY6imizJrZxPYTOtd/zKkKsW3vUZLFFg==
X-Received: by 2002:a05:6402:210d:b0:5f6:3beb:48cb with SMTP id 4fb4d7f45d1cf-5fa7881b8demr1170771a12.20.1746170745021;
        Fri, 02 May 2025 00:25:45 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AVT/gBEqzZ7FQk5yXARpcshiR+EpohN5HdAu50Hp6XL7TkG1IQ==
Received: by 2002:a05:6402:34d5:b0:5e5:2d75:33c0 with SMTP id
 4fb4d7f45d1cf-5f90a488012ls54973a12.2.-pod-prod-03-eu; Fri, 02 May 2025
 00:25:43 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW1dPgdZkEJQGGO3+whBKj2vh414FcAhc7afTe6PxNmAfOf7iRxx3ZQxPCp4DjSTOWyNVtLpvV4V/6h2Q==@lists.one-eyed-alien.net
X-Received: by 2002:a17:907:3e87:b0:acb:6edd:b255 with SMTP id a640c23a62f3a-ad17af4d19bmr209494366b.56.1746170742798;
        Fri, 02 May 2025 00:25:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1746170742; cv=none;
        d=google.com; s=arc-20240605;
        b=TZkRs/7JR8DyZImVwrHCa/4l3EPFcF3/6HYKQ6OMqLfq49whUeUP5uTFYavTKdu2n+
         w3XrmHSwOSzp5MMpQHdPKAeFTV0VsK6WPIN7U+WoAzkD0mTur7+1tLWGsnPt3NhcKmVb
         4etcaB2ZLoLNDVSfpg4Kc/NGRyUHt+NmeJODxjXIxGPJGb1oYI+zTWmsLLl/w/NWYXN3
         pvR1kul+heIOcdpKcL7lpHAApfzQBk9wwWO5yAKNolX3C+NGj3E89+tSMh2Iz9s1nj36
         kBqmNyDxTMQPR64kTz7C7wMhC4DsoORl1P2ydQCC1H+6O2FkYrAcrzbiqTfrSCCR4mjd
         EXyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature:dkim-signature:dkim-signature;
        bh=wdycDKjOKhQw8kvWRatNLAyh1DS6YoulBU0STzXFB9o=;
        fh=2/y4n9TazrvSeGQDP+AiTTbFeMAHnFfsMq4VIxZv4EM=;
        b=GYKlOxUYTMPL3ik7Q8SCwTvTI0KGsVnSkE+1GS7W6AnIS3JD8uGBzgFsh3YyM2HD+I
         lX0R+cHrGI+KM6+CEgYthQx4RAu6jy6S1YhNNEpVhPIX6RnqkhTuPpV6yEO0bST/VUCj
         AYPtmSl1YEsstEivwhBbMLxSs6ZtEYOncSsTomGkx6+IF6VJoM8pNqJex2FLf3HgNqCr
         nDW+pxB4KeucerheFgUiDniWLgwB0C0d6TOe45/yFI2AEJG0vVf9mqG3emwmp3sX1hoW
         aanV2BHf3vf29eR8EklObeoeyikm7MPOaNiGLsALovsw1PG19WC9tIc4O4HTp7j8Kr2k
         a5Xw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b="bgz5d/OR";
       dkim=neutral (no key) header.i=@suse.de;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b="bgz5d/OR";
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:1 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out1.suse.de (smtp-out1.suse.de. [2a07:de40:b251:101:10:150:64:1])
        by mx.google.com with ESMTPS id a640c23a62f3a-ad18936bd63si4579866b.378.2025.05.02.00.25.42
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 00:25:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:1 as permitted sender) client-ip=2a07:de40:b251:101:10:150:64:1;
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 6BBA021A0B;
	Fri,  2 May 2025 07:25:42 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id EC8F713687;
	Fri,  2 May 2025 07:25:41 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id OhVJOHVzFGhlOAAAD6G6ig
	(envelope-from <hare@suse.de>); Fri, 02 May 2025 07:25:41 +0000
Message-ID: <77d504d3-3998-4222-9e71-2e45f397a25d@suse.de>
Date: Fri, 2 May 2025 09:25:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 4/7] usb-storage: reject probe of device one
 non-DMA HCDs when using highmem
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>,
 "Juergen E. Fischer" <fischer@norbit.de>,
 Alan Stern <stern@rowland.harvard.edu>,
 Andrew Morton <akpm@linux-foundation.org>, linux-block@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, linux-mm@kvack.org
References: <20250502064930.2981820-1-hch@lst.de>
 <20250502064930.2981820-5-hch@lst.de>
Content-Language: en-US
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <20250502064930.2981820-5-hch@lst.de>
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
 header.i=@suse.de header.s=susede2_rsa header.b="bgz5d/OR";
       dkim=neutral (no key) header.i=@suse.de;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b="bgz5d/OR";
       dkim=neutral (no key) header.i=@suse.de;       spf=pass (google.com:
 domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:1 as permitted
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

On 5/2/25 08:49, Christoph Hellwig wrote:
> usb-storage is the last user of the block layer bounce buffering now,
> and only uses it for HCDs that do not support DMA on highmem configs.
>=20
> Remove this support and fail the probe so that the block layer bounce
> buffering can go away.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   drivers/usb/storage/usb.c | 14 +++++++++-----
>   1 file changed, 9 insertions(+), 5 deletions(-)
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
ien.net/d/msgid/usb-storage/77d504d3-3998-4222-9e71-2e45f397a25d%40suse.de.
