Return-Path: <usb-storage+bncBCHZVHVFVMARBBX7SK6AMGQERCGD6BY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x346.google.com (mail-wm1-x346.google.com [IPv6:2a00:1450:4864:20::346])
	by mail.lfdr.de (Postfix) with ESMTPS id 17CECA0B000
	for <lists+usb-storage@lfdr.de>; Mon, 13 Jan 2025 08:23:52 +0100 (CET)
Received: by mail-wm1-x346.google.com with SMTP id 5b1f17b1804b1-4362b9c1641sf18547555e9.3
        for <lists+usb-storage@lfdr.de>; Sun, 12 Jan 2025 23:23:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736753031; cv=pass;
        d=google.com; s=arc-20240605;
        b=MtFYFncYE27wNhFoLgO5o91PM/8TUT32/EwAVwypEjIykOg0iWa9C5OgVB4QhbIF/E
         iYSNmxbinGM9EZDrqy89k4PYtycmXhkIlFb0dczV1JjyjRD9jReKSl3GbKSXrEn3qwBo
         2f9v1L9HenlbAiaJ3ad9bMM241WQbYYiOPXzy/0E6CDa03eIv45iX//CQr8+wpH2tgX9
         o0nI2LK7qWgCr6txs54tAe4TqS3DBTvQZ3/CCi29rXFj/h++iZw/6vrcgvCXHzviQw83
         eOvlXhVWtOQRnZwYdz9dVYsc3Wzm1JSaZd0/UUus4EfRwF8ufqLaUG/N6zwGLOpwOgkN
         pKNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=vB6f948AvYsT4wgDL2Str9z1YMgrCYXlsLXqYqksPRs=;
        fh=iJMN4nI+8txRRAu0PO9cI5m7DMMNGd3VE7MJ8YjqbJ4=;
        b=M9k5CsThq4RRYnSe/2dwMbTZcBlyDQkoTc5PiE9XCQGk9GRQB8ciOPdxEzW/azQHlL
         8xK0JItUDLoimLAJeVbZrdH1VzGzIbVcKqxBKywwYr1RaaXVAhbXWjqGCgtcWeZ43TYS
         YB/QjRD9S9ZQTb+O2vsr53PbTPdnxxICWxoUJ/DJ3Oi+9ujqhX6dO0M36ro8hrQtwRiZ
         PclzA7GgOcjyV6JEs4oCWUk/Ds8ABflAxeLDGWWkXscIWbiopor4I3ctTQ6okaDjrIbe
         /axbZOQWMiCw317mtu13eltjjLiX0MHwCWnljptD9NdiZ8vfbHAfdwdYR/BHrx6LnwWk
         l4mg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=lkTXapxi;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=RyoHyhaa;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:2 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736753031; x=1737357831; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=vB6f948AvYsT4wgDL2Str9z1YMgrCYXlsLXqYqksPRs=;
        b=YyNnlLoT/OwCMpRU13lBUQuZPYOAMAZ3Gnjl2WmJPVn81l9NedLf50EmuLO6qxWLGK
         nteNrJIX/DsEffUF+pkbY03MjdYC0imDpZMy40qmnsIxf/bHylXyzhklxWoqiXm5kgkx
         fhqgS8gDn27XEo/SzLBZEYL6MVouD45lJ8LGU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736753031; x=1737357831;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vB6f948AvYsT4wgDL2Str9z1YMgrCYXlsLXqYqksPRs=;
        b=pUvda1XVg5s43Arcw/UVExb95YH0c+YVdcxISNdlF+5mMSbkvjq3UHaIibj4a+QLuz
         8IPHbx6KpC6ei8m9wg71TwtPfZ2t8324ZVGp3bCqOKFh3nfKyBBQJlrpNl0CT3oa2H0W
         jkA1ATUP4ev8i02vt+rs08/c7bwX/+myISV7dEmB0zJgnjW41evz3dtV733XCwYswLCD
         6h9RRW3/T0jeRS8t4YaE9/XI6qDeFjAOf1RzieuhiiU+6vbuqmm61g/GtvDVyVqJ4UxX
         CcOl1WkDjcg823fGK8D0ug2vypBRcobOndBZXekJ3AOa4NAOoqUTI+q1pcNmOwc5zVyt
         Fiwg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCX9ox3oqEP5VCoYyb2pduCkzufM8Ikw0764QTYjqMApkgVnfAnXgFP4hDJxKDMgvRN4IovEKw==@lfdr.de
X-Gm-Message-State: AOJu0YxYjqaDyXKLm87CXs9z6XwFHKvKhSIK+gHMPf+xd/4xxtZXBBuy
	+dkh5kZ69iLa0piiOpbzIWW/hl15HEU975QTX6359eoMo6NyU9K6Ybl6m5JsQVY=
X-Google-Smtp-Source: AGHT+IGPmp0lYOD4YUz28l8z1+xeo2CZgfpVJXx4xOAX1pLrShd7exe6XSG3jn4ZnFGVtKgH/2hCTQ==
X-Received: by 2002:a05:600c:1e17:b0:434:9d62:aa23 with SMTP id 5b1f17b1804b1-436e26dda97mr161010605e9.20.1736753030637;
        Sun, 12 Jan 2025 23:23:50 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:600c:600d:b0:434:aa6f:2408 with SMTP id
 5b1f17b1804b1-436e87ec4d3ls20070675e9.0.-pod-prod-03-eu; Sun, 12 Jan 2025
 23:23:48 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXWFz4DfbjTOTj4wNwyxEGXsFHV9jwquSXlq4gH4Y0EHaIMo78M7rm25Kf63uBCr0dhyAJxoo1XyM3Fgw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:600c:4713:b0:434:ff08:202b with SMTP id 5b1f17b1804b1-436e26970bcmr180551525e9.12.1736753028526;
        Sun, 12 Jan 2025 23:23:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736753028; cv=none;
        d=google.com; s=arc-20240605;
        b=DXK1Dbov9WsX6tvYKR32fkDTrSQpk3jaC5hLb3pFEwCm50YOQZ/Z5ZYFfI6yCoiN7p
         t3cKKTEeWq53lBKu5AGb/j3H9yoOgmck0eW/KGk5/BtJe6rdvgF8t0mu+TWmYJ9W3pos
         Esv5TkjDht2UNTXdza3qLEmLQoewmGIkhOQ6UbUcNjgJk5v0GKZnBN7DYqigtKe197Rr
         V1yXJT/m+YO3brwuGfcwPYum/wkhdOte1Y2tIBRnuV26d7OYbxHbuQuYDLHTuhRsHrez
         9k3WrxOkCKGQqQRVBPTCyimUJXAVHtjvjlz/B3F9ezBwYhd3dZePTU8C3JuYyGWQASJL
         7KlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature:dkim-signature:dkim-signature;
        bh=QOFqz/OKng2mpmOdlz3ZYXHYAZbTaDBWXmGjJpAHPYw=;
        fh=v1iOF7wU2LGTSrOeQNbYZHRLZQz8Z4SchD9MvpWdaCc=;
        b=YAtf6UQUl9FCMxTyemtBNmaMxuPDSGZrDTIbzDrKF/3fEp0UUFAe+Ofw6EMPb6para
         s8VVioRNxH5jEWn5L45IJdLtnUQEZ1uHhEwkOYMgV/hGxQM2BwR1PevGULBg1U/Y6WNb
         24kQnYri1t7XnsgqkuOZPGsHL3TF07VaFN6CdlbIQZUUYfarFI53SYX7Eb0w3Ofcd/xf
         DNR+PlXdl3VE84pY3GUt23XbX5qGMNpQ0+iWe12kKFAlenPQszqY5Rle1A0dqreHCKY6
         C/S0RAMpnic+p3oqRHgTQwq0yFUKzw1jQ5dP/1tCd5iBZUS24/7nT+nK+7wuiSVM8BIz
         q+8g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=lkTXapxi;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=RyoHyhaa;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:2 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [2a07:de40:b251:101:10:150:64:2])
        by mx.google.com with ESMTPS id 5b1f17b1804b1-436ea3de869si64460795e9.61.2025.01.12.23.23.48
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jan 2025 23:23:48 -0800 (PST)
Received-SPF: pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:2 as permitted sender) client-ip=2a07:de40:b251:101:10:150:64:2;
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 34D531F37E;
	Mon, 13 Jan 2025 07:23:47 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 7721813310;
	Mon, 13 Jan 2025 07:23:46 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id mAe4FoK/hGfZLQAAD6G6ig
	(envelope-from <hare@suse.de>); Mon, 13 Jan 2025 07:23:46 +0000
Message-ID: <4f63b30e-54cd-4776-aeef-5257b66d9e80@suse.de>
Date: Mon, 13 Jan 2025 08:23:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 03/10] block: don't update BLK_FEAT_POLL in __blk_mq_update_nr_hw_queues
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Damien Le Moal <dlemoal@kernel.org>, Ming Lei <ming.lei@redhat.com>,
 Nilay Shroff <nilay@linux.ibm.com>, linux-block@vger.kernel.org,
 linux-nvme@lists.infradead.org, nbd@other.debian.org,
 linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <20250108092520.1325324-1-hch@lst.de>
 <20250108092520.1325324-4-hch@lst.de>
Content-Language: en-US
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <20250108092520.1325324-4-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Spam-Level: 
X-Spamd-Result: default: False [-4.30 / 50.00];
	BAYES_HAM(-3.00)[99.99%];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	ARC_NA(0.00)[];
	FUZZY_BLOCKED(0.00)[rspamd.com];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	RCVD_TLS_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[imap1.dmz-prg2.suse.org:helo,lst.de:email,suse.de:email,suse.de:mid]
X-Spam-Score: -4.30
X-Spam-Flag: NO
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=lkTXapxi;       dkim=neutral
 (no key) header.i=@suse.de header.s=susede2_ed25519;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=RyoHyhaa;       dkim=neutral
 (no key) header.i=@suse.de header.s=susede2_ed25519;       spf=pass
 (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:2
 as permitted sender) smtp.mailfrom=hare@suse.de;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=suse.de
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
> When __blk_mq_update_nr_hw_queues changes the number of tag sets, it
> might have to disable poll queues.  Currently it does so by adjusting
> the BLK_FEAT_POLL, which is a bit against the intent of features that
> describe hardware / driver capabilities, but more importantly causes
> nasty lock order problems with the broadly held freeze when updating the
> number of hardware queues and the limits lock.  Fix this by leaving
> BLK_FEAT_POLL alone, and instead check for the number of poll queues in
> the bio submission and poll handlers.  While this adds extra work to the
> fast path, the variables are in cache lines used by these operations
> anyway, so it should be cheap enough.
>=20
> Fixes: 8023e144f9d6 ("block: move the poll flag to queue_limits")
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   block/blk-core.c  | 17 ++++++++++++++---
>   block/blk-mq.c    | 17 +----------------
>   block/blk-sysfs.c |  6 +++++-
>   block/blk.h       |  1 +
>   4 files changed, 21 insertions(+), 20 deletions(-)
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
ien.net/d/msgid/usb-storage/4f63b30e-54cd-4776-aeef-5257b66d9e80%40suse.de.
