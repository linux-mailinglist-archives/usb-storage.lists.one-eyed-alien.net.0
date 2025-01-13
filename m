Return-Path: <usb-storage+bncBCHZVHVFVMARBB75SK6AMGQED5BXWGA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x346.google.com (mail-wm1-x346.google.com [IPv6:2a00:1450:4864:20::346])
	by mail.lfdr.de (Postfix) with ESMTPS id 70003A0AFF5
	for <lists+usb-storage@lfdr.de>; Mon, 13 Jan 2025 08:19:37 +0100 (CET)
Received: by mail-wm1-x346.google.com with SMTP id 5b1f17b1804b1-43625ceae52sf22117405e9.0
        for <lists+usb-storage@lfdr.de>; Sun, 12 Jan 2025 23:19:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736752777; cv=pass;
        d=google.com; s=arc-20240605;
        b=W3LLkot3CAJZEbWsVRZDf+KEL/4PvkVm1DQ7igI1Vts8ltaaKDBM09ZXNi4M0gYL/v
         KC6FjDebD/yxhCBHqwLtbZpmZtDTf5iZRFch4BVLMR5n6D0UZjfGhMLLrGNRODJ6b0I7
         c1H7vktrrtbV5lLPSWWoOjSiVg856KMjj1BJPec03MoXmTeH1rV1FxQQvnTze1us1y+c
         5ND9jegby7kjV/qdBkb4Yo5ITBazwgRax3lXfAb5Wma8SiNdf4MM32RMEaEZ3R3vVte/
         tqItjTGjOHyfU5PDtLxNWJrmGiDmWIhUQkfcny6hwY0VpPeRDw+whCurC0+o5BL+ko+Y
         Ktaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=Js6afIcqjITPKo0BryfsSWiT4FAo1snXorK32+dKMpo=;
        fh=AipmRwIwdaJUDqq//711aOBir8aoQuo6u2wFncuvXMo=;
        b=MzJwibtXbBdiM8/0mybBFKL4WTbAeGuWx02cIKsb3rKOTBS+FhJaaZauwdlljAQXEJ
         vHZyKH8hjoTnBEof9AoPEdSjYJ9BwosnAocqo011ykRnhUTqk7JpJBWzDSGs7G6cgqDK
         Z1rtGizo4T4brQJyNRDLriAHDkaNql7k/9p1/PN7fo3QSbA3DT0xkpBf3KSLVdZDJUdR
         u31c7yD/cg8lK7mj0hGy5eXqz4NbFVmjq4rQAqHxRkIUH77qkAmDRkTfzxfuVXv11uGw
         /clkgaOeinOpNo85Jeu2lCSf4bRC3/dZuVOYmaOBm5p/FylZofV3g15n5pP//j30+hI/
         VvCQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=ggUI+tdd;
       dkim=neutral (no key) header.i=@suse.de;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=ggUI+tdd;
       dkim=neutral (no key) header.i=@suse.de header.b=m2FrsZqX;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.223.131 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736752777; x=1737357577; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Js6afIcqjITPKo0BryfsSWiT4FAo1snXorK32+dKMpo=;
        b=cVYZlzhBcj5mcebVB6b0T4Ik7fN96lOdclkYg56vT0jgwiyd9K56gXGH1gXBHLgsPa
         0AzMl6rEJ9/Ml6Y0Snub4vXBPGrP2w6drQ7hlMusX0V4icOenRTqBOvPxq8kViGhNV5P
         tvxB7plVhMJOjazSfZnF9+vOKzPKtgH63zIcQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736752777; x=1737357577;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Js6afIcqjITPKo0BryfsSWiT4FAo1snXorK32+dKMpo=;
        b=pGx1QDaF7Exiebfbn49XBqSs8X8LsA+m+EB2GLBdDvZKosm6m7qScpKvBKg0r2Gmuk
         5RUzAi3f+IWcj1uebWV//pr/IhrMar5GmSzOraaW/JoWbq5wpCqjioDietG9nLRfSkll
         8BfUixKr43X8B/bUmlWttzvEQjs00uEHhkMaZBzuPDBaWGEf5Q1IIP9dgDwVgAGHoJ75
         t5vsbTiSPVUs3Zwwob2/XRfDmPob4/cpPhdB5kpht8wnu9Dps1fVj67t6R09ctAT0ofJ
         T1j52evW4eqVVtEYT99k9/6gAHIpnwz7FGugp/WXsCDKbu6xfNoh544ym3imNhHTNIfU
         EFrw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUR3DXmpwplVnVfPgLW243LJiXRsfiQsuMnq1B2B1dvznrswmqWyRkezW22EKFFYNb7ZL6nHA==@lfdr.de
X-Gm-Message-State: AOJu0YydMhfNy+W2aHeWSQl7ieP29Uu4hT5Wa/RKmcy66yVaPagq78QH
	g7b7+90B3OR2QCFPsYeFA86PgIBPn6oewchayRP/Cq/NvpMvdh5wWbOkPnA6+EQ=
X-Google-Smtp-Source: AGHT+IF5l6F4nTthUKNUurEqNwOymuwspnyxZ/sth9kDCGvdvA76z+fh7+oqrsqGDV7xUpv6TY2FMg==
X-Received: by 2002:a05:600c:3149:b0:434:9fac:b158 with SMTP id 5b1f17b1804b1-436e2680c4amr144161725e9.1.1736752776471;
        Sun, 12 Jan 2025 23:19:36 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:600c:4e08:b0:436:5d0c:e9a4 with SMTP id
 5b1f17b1804b1-436e87e0c59ls23022025e9.0.-pod-prod-08-eu; Sun, 12 Jan 2025
 23:19:34 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCW+9DOJVY22con4h57/0PwqTsABvvon0sSed5i8zdTB5XIY8ibeuensxpP9zuonY5K+WCByStqWJ+k0Wg==@lists.one-eyed-alien.net
X-Received: by 2002:a5d:5f52:0:b0:38a:8647:3dac with SMTP id ffacd0b85a97d-38a8731fac1mr16515780f8f.34.1736752773668;
        Sun, 12 Jan 2025 23:19:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736752773; cv=none;
        d=google.com; s=arc-20240605;
        b=JCsy9RPAXC6juYq9vKNj5UybeP6YOEOckt7wN3ZhVt7LKm8xayS0v7Ws7lohMth4+h
         snuRXdPHgKHJsXGpZh8in0Ztb0Yzw2DAaARbVb5zkiDc76nbcH/mMSw+5nzDTShyBC6q
         smMh2ES1W3MIVMV1rhOz+LUUyXO1sreadmFlg1QUO7oal/beHKSjE4rvd8DAKwvssxHv
         7kEeYOPkgiVBqp7lmz2qf3MgzZRbZjbq+o0HjLgrDUljUm1TerS0Gbq08nuQBk3femQw
         ZZZYA/B27hbTcHNkAQ0myUI4mfN1q2+oE/MDWszbmUkBSxy1I/fnpbZ+PbzHqG9rWVnH
         ehCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature:dkim-signature:dkim-signature;
        bh=wdlX6/MCN1dGm0u1BqAi4ZRf68cuEwzfR65EqwHsmxQ=;
        fh=v1iOF7wU2LGTSrOeQNbYZHRLZQz8Z4SchD9MvpWdaCc=;
        b=QTLBnvh5xB4fsw356FZpRR/T8t6rDl7vbdNLOJhPxMALXZbBlT28mcUiUOW7oAC2yp
         zjfYWd+YJj9EgAONPaMVX6MkIQS+ZhevTywA/NMwYviPAdGXhQ7W6jiYvYT0Q2x83OI+
         3fBvbw7zaRLh0uFIaRtSD8a4BihHNY4UkuPDZ5FkFXX7Rshl4S/0P3S4kNoJsfO93yJD
         9q4sZoVOq/APIRoUTaD7gUDU9WknHIJlh22tt01hdh39wNWVL0bktYJwu7Zj++6s4i8T
         CnlA+b1GuBHBpttOLq+BWrelq+K/CiA70BI4kwB9cVaSZLHMTw70zPnnGdJSYCN2tPTy
         azZw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=ggUI+tdd;
       dkim=neutral (no key) header.i=@suse.de;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=ggUI+tdd;
       dkim=neutral (no key) header.i=@suse.de header.b=m2FrsZqX;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.223.131 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [195.135.223.131])
        by mx.google.com with ESMTPS id ffacd0b85a97d-38a8e4c843bsi6395255f8f.295.2025.01.12.23.19.33
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jan 2025 23:19:33 -0800 (PST)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.223.131 as permitted sender) client-ip=195.135.223.131;
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 0C19A1F365;
	Mon, 13 Jan 2025 07:19:33 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 9DA3E13310;
	Mon, 13 Jan 2025 07:19:32 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id oHpUJIS+hGerLAAAD6G6ig
	(envelope-from <hare@suse.de>); Mon, 13 Jan 2025 07:19:32 +0000
Message-ID: <3e664960-52c0-4cae-8209-85fa4c52f82d@suse.de>
Date: Mon, 13 Jan 2025 08:19:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 01/10] block: fix docs for freezing of queue
 limits updates
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Damien Le Moal <dlemoal@kernel.org>, Ming Lei <ming.lei@redhat.com>,
 Nilay Shroff <nilay@linux.ibm.com>, linux-block@vger.kernel.org,
 linux-nvme@lists.infradead.org, nbd@other.debian.org,
 linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <20250108092520.1325324-1-hch@lst.de>
 <20250108092520.1325324-2-hch@lst.de>
Content-Language: en-US
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <20250108092520.1325324-2-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 0C19A1F365
X-Spam-Score: -4.51
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.51 / 50.00];
	BAYES_HAM(-3.00)[99.99%];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	MIME_GOOD(-0.10)[text/plain];
	MX_GOOD(-0.01)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FUZZY_BLOCKED(0.00)[rspamd.com];
	RCVD_TLS_ALL(0.00)[];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:dkim,suse.de:mid,suse.de:email];
	DKIM_TRACE(0.00)[suse.de:+]
X-Rspamd-Server: rspamd1.dmz-prg2.suse.org
X-Spam-Flag: NO
X-Spam-Level: 
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=ggUI+tdd;       dkim=neutral
 (no key) header.i=@suse.de;       dkim=pass header.i=@suse.de
 header.s=susede2_rsa header.b=ggUI+tdd;       dkim=neutral (no key)
 header.i=@suse.de header.b=m2FrsZqX;       spf=pass (google.com: domain of
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

On 1/8/25 10:24, Christoph Hellwig wrote:
> queue_limits_commit_update is the function that needs to operate on a
> frozen queue, not queue_limits_start_update.  Update the kerneldoc
> comments to reflect that.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
> Reviewed-by: Nilay Shroff <nilay@linux.ibm.com>
> ---
>   block/blk-settings.c   | 3 ++-
>   include/linux/blkdev.h | 3 +--
>   2 files changed, 3 insertions(+), 3 deletions(-)
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
ien.net/d/msgid/usb-storage/3e664960-52c0-4cae-8209-85fa4c52f82d%40suse.de.
