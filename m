Return-Path: <usb-storage+bncBCHZVHVFVMARBL7G2HAAMGQEJS2IVQI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x347.google.com (mail-wm1-x347.google.com [IPv6:2a00:1450:4864:20::347])
	by mail.lfdr.de (Postfix) with ESMTPS id E18A2AA6B7C
	for <lists+usb-storage@lfdr.de>; Fri,  2 May 2025 09:24:32 +0200 (CEST)
Received: by mail-wm1-x347.google.com with SMTP id 5b1f17b1804b1-43cf44b66f7sf7932205e9.1
        for <lists+usb-storage@lfdr.de>; Fri, 02 May 2025 00:24:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1746170672; cv=pass;
        d=google.com; s=arc-20240605;
        b=JrSA6pY9nM0KalU1n9yPnNwLY+wUoNktCtQ4WOduBqHMMzPxB2xxdeYP00jA6hBTzw
         7fBD8dqiz9xGvdsGffhyWD8XXjuUXPvk1fCQPdOgcUJUbq1pcfs9HqDunN0XmXj+a95s
         zUrFIePe6Jj+DPNlWXSa3uhBKcou2pQ55eCmH0iVwBWUBcpHS+6FtB/dvL40OiJDZ9Wl
         01mY07uT5fXW8sfTcRd4IdKno96LMb0cruoiqWph2ScvMFFAoVdtRqhKEnfvpxZDZQgT
         EZtdyxRsV/zHBgu2RPhqreYll3CU97Q0wIfk3zIJwtGSzg3iSQFD7NGxLtpeyHNQ3rRa
         N1hA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=SLYCSFnmGPZu5CSpEWJ8BjaNC6HZ8QdT48DyfF4SOQM=;
        fh=i+sq0gYzJ3WtHEVN6dyJ0VFp0rG01OqWTg3UI+OyuKc=;
        b=NQQTvznDe1QJWCYJc6+jWDkGJKxgpj4W4go0wWy9g6PwKTI2zkz6w3xs0/Z18zWrqL
         bRiC+KCxL7/gZVQoRHtQwMAR1QybLAHpR7zqk29KBikewzYZ+chYzwsm1aZ3k3al30Lh
         1Gu4MPEgOuATZX96omx1qbxjy3Xo2H+Hb1wtrWmOEzGffl/fAdgKf057smyK6rkZ+tFR
         aUwLFnStxEe5p1O+pivjnemhDkPd2LhzCanvgd78MhhpI+E1C3f+KCiIt9+wkA44zUkr
         eZxGH2FYoToN345LbjhdKe0AQQEwrXJo/u/Bq5GriHNOWsajzHMjAsSo+rwWzO4ke7bU
         I0Pw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=ryTAgF3s;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=A+KpCrTJ;
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.223.131 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1746170672; x=1746775472; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=SLYCSFnmGPZu5CSpEWJ8BjaNC6HZ8QdT48DyfF4SOQM=;
        b=EZKthxkwQZ31jIfb9ikGDjkCdsNVY3/jPqsv67mJ17soIHfoTiyhEOIjRTqiNt+rNw
         a1iTplmgDjtwUftDDgnOr/7VNvJ7su+lMwWpS8GrJ12AZGf2XvfeCVyK2r+qYQJP/5yS
         nK14meCHx/XoMYrWm+vdbAk5mfzwVigDeDvgc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746170672; x=1746775472;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SLYCSFnmGPZu5CSpEWJ8BjaNC6HZ8QdT48DyfF4SOQM=;
        b=X9+qX8+mFJikbHp2MK2BeRolz1vmAd3LPZ6CpaCDyE2YuPxMK6ZE1aPoI+Tbeix/DG
         t50F+gXFUxWJH6U4XwTAg8LBJ+Ba0fC1szXPR1Ql54+Px30a2IEql61kzUQdsjvCCDGb
         GIZhkidQC4avzaZ488ROT0IYFr5BP9O3Lwoi5904THj6HotWmgHJurn5DuLndHL20Bzd
         O8zjWoSNu418ApQmuaD7vJzqY5VZGfY0xC4cFQippA3zQAhvSmo4xjKTo7herqkMzdTi
         KRjoH6FtzkaN1+Jt4e3Pkpxl03jHNoclMDQ4wHtBwyUXwk9Zk5i+q9msEIw/1K4mwcP6
         ZH4g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXGJtYKIYsw0edi2fO95TNG12DL7I7h3Uz69ZhV+VZkoTzug6YQ4s4Wis/wPGAArHn5UpzsWg==@lfdr.de
X-Gm-Message-State: AOJu0YwwlZuRuZEMkUBf9qTGpJgjVJHR3q3inePTO+km6M0HSyf4vfWj
	7SfNi+cX0MDfkO6bEMuF9MGtsmVHrEYb3sReb94PW7X6PjuKRFzs0B+BZHPmoMI=
X-Google-Smtp-Source: AGHT+IEfOjvex9wE8wgD1sWa47FHpsgULwy3GJHzhWC3yTx+kYTgmpYJCmf8u+E2Hbhh3dWzyS/sWQ==
X-Received: by 2002:a05:600c:470f:b0:440:67f8:7589 with SMTP id 5b1f17b1804b1-441bbec4897mr12568635e9.16.1746170671983;
        Fri, 02 May 2025 00:24:31 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AVT/gBEWe+f+yRvM8Ni+iutMfxhzXETbRP5Cqey/v8uxIqnmaQ==
Received: by 2002:a05:6000:4202:b0:39e:cbcb:8a72 with SMTP id
 ffacd0b85a97d-3a092c482a5ls725051f8f.1.-pod-prod-03-eu; Fri, 02 May 2025
 00:24:30 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWooRXHlGXlpsOdY9i8D1GdFqxQlkOWZMf0NScEONyF8vXYHmkPxh6OGIVNQaokpJXVMvRRtFH34bIQ4Q==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6000:4203:b0:399:71d4:b8 with SMTP id ffacd0b85a97d-3a099adae11mr900278f8f.23.1746170669610;
        Fri, 02 May 2025 00:24:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1746170669; cv=none;
        d=google.com; s=arc-20240605;
        b=P+Lbgb0GvJU5PrNFGA3EOUKjKoQyvkQvgaKc3PjNrOtS1mj5HYdliuwKGYWjCin78V
         5sRp8LKVD+0LYgJaGlr1B/Xwk6AOjnknIFEnrS6uHj/3jsq4EXijdU4wCzmyuIEWQrLe
         pXb8p9iJexwwgv7MdKnbHbqmpGKpxbOe0CHrXwMQTwVmywcRs4hX20b/491iQWCv+4w5
         kQJ8GE/801JwtVYyLp4p13Qx6psQDWEwnVD7wbAwgiUGjHLGl0FUbtym8vmPtzOdCdl8
         UZpU+QCnqngEg8Cms3skOgfqFvYaYU8Hx9tj28lLtVSKtcSCXsP7K1khsdoJOgiDJpDJ
         TDeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature:dkim-signature:dkim-signature;
        bh=+Jpy3kA3EvG8tXSvkK0WCSKL/K4KU0ioXSifsdCwPYQ=;
        fh=2/y4n9TazrvSeGQDP+AiTTbFeMAHnFfsMq4VIxZv4EM=;
        b=auolNVSRI24jAp7TknWKfpKNYCm/I36lFu1aVnR/p6ZV3B9JhLRciU1RtRzxaJYnEY
         i6mLjiWO+sTcdbLCejxK19+X+Mc/IHlYo8qk+ttLQ2d73/jdw5mr4aHOVXupl5B1Fs09
         kwAqOalD/1cN7y6RjB+vSOmbQFsZFeTef09/pIe+tyOFlKryVXASMn2SNAT/w6eG4os7
         VnmSsvk0ur/2v5OdKqzY2Lg+fGPu76aMBWqkb6HXJaWUYNHp5B+Y7C7fHaFgp4divS5J
         FCKwiqTSodWRK/BhNDCuzE8CbuupS9Jzi5bpc3D/Qx3byn1xq7V9QPnGIibG/avP/gU8
         P7lA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=ryTAgF3s;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=A+KpCrTJ;
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.223.131 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [195.135.223.131])
        by mx.google.com with ESMTPS id ffacd0b85a97d-3a099adfe6dsi722423f8f.147.2025.05.02.00.24.29
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 00:24:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.223.131 as permitted sender) client-ip=195.135.223.131;
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id B54241F385;
	Fri,  2 May 2025 07:24:28 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 5B66B13687;
	Fri,  2 May 2025 07:24:28 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id ffvQFCxzFGjwNwAAD6G6ig
	(envelope-from <hare@suse.de>); Fri, 02 May 2025 07:24:28 +0000
Message-ID: <40b4c1a8-666c-44ef-9f8c-9865aef94f3f@suse.de>
Date: Fri, 2 May 2025 09:24:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 1/7] scsi: make aha152x depend on !HIGHMEM
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>,
 "Juergen E. Fischer" <fischer@norbit.de>,
 Alan Stern <stern@rowland.harvard.edu>,
 Andrew Morton <akpm@linux-foundation.org>, linux-block@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, linux-mm@kvack.org
References: <20250502064930.2981820-1-hch@lst.de>
 <20250502064930.2981820-2-hch@lst.de>
Content-Language: en-US
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <20250502064930.2981820-2-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: B54241F385
X-Spam-Level: 
X-Spamd-Result: default: False [-4.51 / 50.00];
	BAYES_HAM(-3.00)[100.00%];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	MIME_GOOD(-0.10)[text/plain];
	MX_GOOD(-0.01)[];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	FROM_HAS_DN(0.00)[];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	FUZZY_BLOCKED(0.00)[rspamd.com];
	ARC_NA(0.00)[];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:104:10:150:64:97:from];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	DKIM_TRACE(0.00)[suse.de:+];
	DNSWL_BLOCKED(0.00)[2a07:de40:b281:104:10:150:64:97:from,2a07:de40:b281:106:10:150:64:167:received];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	SPAMHAUS_XBL(0.00)[2a07:de40:b281:104:10:150:64:97:from];
	MID_RHS_MATCH_FROM(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:106:10:150:64:167:received];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lst.de:email,imap1.dmz-prg2.suse.org:helo,imap1.dmz-prg2.suse.org:rdns]
X-Rspamd-Server: rspamd2.dmz-prg2.suse.org
X-Rspamd-Action: no action
X-Spam-Score: -4.51
X-Spam-Flag: NO
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=ryTAgF3s;       dkim=neutral
 (no key) header.i=@suse.de header.s=susede2_ed25519;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=A+KpCrTJ;       dkim=neutral
 (no key) header.i=@suse.de;       spf=pass (google.com: domain of
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
> This is one of the last drivers depending on the block layer bounce
> buffering code.  Restrict it to run on non-highmem configs so that the
> bounce buffering code can be removed.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   drivers/scsi/Kconfig   | 1 +
>   drivers/scsi/aha152x.c | 1 -
>   2 files changed, 1 insertion(+), 1 deletion(-)
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
ien.net/d/msgid/usb-storage/40b4c1a8-666c-44ef-9f8c-9865aef94f3f%40suse.de.
