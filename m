Return-Path: <usb-storage+bncBCHZVHVFVMARBX7G2HAAMGQE3P2A52I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ej1-x648.google.com (mail-ej1-x648.google.com [IPv6:2a00:1450:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D8B2AA6B85
	for <lists+usb-storage@lfdr.de>; Fri,  2 May 2025 09:25:20 +0200 (CEST)
Received: by mail-ej1-x648.google.com with SMTP id a640c23a62f3a-ac2a113c5d8sf105897866b.1
        for <lists+usb-storage@lfdr.de>; Fri, 02 May 2025 00:25:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1746170720; cv=pass;
        d=google.com; s=arc-20240605;
        b=QQ67m5NAl7fgrGPyQi9RN16QdqvOYgFc9XvdOL/rLM8t9tJAqv0MYH7O3dDKu9AtIt
         DxY3Y4/0TnpvcJ8D9E0G/HY1WOUjGjiTQebA8att4pPdF8uyOJaswi7KRiYQ1ylOlbDm
         CcHnyhBTCLHxNUHUheZe3O2aVvJ6At9OOCeVBiwiskx4xANcp7Bz8N17KT1m3WEsWY7e
         bIIKBBHw6iU/0pNF1qd2B9lkogeu/fcS9JVOIbf1haW6p6vSHRYOg5xTOILa2uwm/egL
         tySf+eraHfAVVUYg7MUcQ3ibRwkMuqSOm/ycmzd1o/DKyht+hsaG91SJKi1a6JaNIrnj
         bWvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=UYIufPFwK57QH40EFb/HyTVU4nrD6fUHnsv6+ggNgTY=;
        fh=ptMIPEbjbFEWIVyXgQN/xpf9Hd/VWKmlMj27Z9WUObc=;
        b=jrGe2kJO5WhzIH8LeZXznCZZlk/TEHuO2nxVCYQteZwpsxAqQFcNeyI7oRXgwAV6Ww
         s4PgGKk3Tw4Irrj7NijWi/lKPJASIecMQS45JGSoayqmhU/FYaj2T3gcN2ro1UDRZo4c
         swJhA5TTyPf9IgyVbrrKjdxvlReX+TTNZHHFlAWhH516Q3nFPofdGl0sZ6now9O5Avkm
         Nkw7Dbr+GF05pXCW1eE0CgLEwVvShLA/bVNcnDem9GTchj+7RObAyVqT90utJ9DjbuSm
         xjktghpOp7ZrrIN9ciiaYXOjh3UkO9sc+VBiI+B784+UJ29l7E9rmNqnM7P5UaKNdgTg
         Xhkw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=iIF9ViaZ;
       dkim=neutral (no key) header.i=@suse.de;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=iIF9ViaZ;
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:1 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1746170720; x=1746775520; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=UYIufPFwK57QH40EFb/HyTVU4nrD6fUHnsv6+ggNgTY=;
        b=cDAhTBugfS+c/vI7SkxI4D/HU3stZnwZnEjXN/1tJuJTKnwwQNkTjmVeXRf3Y3RGQs
         FI1ZRjQ31CJfTsNbENNu/CVBTNs2I6EZC0b1R/v4Xp5FzTBHnThPW/x1H0nqO7KvOkTt
         uWpkjTOq/2+guR3Pp+otGBq+aFv05JKQjvO/k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746170720; x=1746775520;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UYIufPFwK57QH40EFb/HyTVU4nrD6fUHnsv6+ggNgTY=;
        b=n2zEQK2w19TQK9btR2m+vYDRmxakzOKSgBSLCkFHsMvjXLwZbKesNsaaslsDH5tMLa
         fpQFlk4jAEoTOnOOROC6zo8OULVAXXfBZWBh71pTDnPdVzwgp9QO9fiacsTfp5tJGp09
         bnMCE1D2O0SW33CQ8/Kx4mNkXhUkJIla+7zlSmFcKreqeFLDhYr7k3gAYwfaIXP6dCWW
         +G8D9vvMDBqlhjeuNtq7LFc5J61oRJ7xRQajsLwnOSt5HW0ylmE0keA8wuazMvjAyC9h
         dO62pZZmIefj3bXf/VnA6H7Q/XsdxderdDoSS/aP6vTNFHWX48X/IzBm09yQu0B+TSTH
         s/BA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUHpUWxG0R4ZHYYqsGP6m8PzWBD2utZb/QYjREWKK6KwVZXPfmCVnrkAD2ImGUGxqf90TspIA==@lfdr.de
X-Gm-Message-State: AOJu0YwZKliAoPEQ8jXK7VLec2+N4719b6ZdJ9F1dV8liyYj5h9m75h7
	bxm/sbcT7NIT96tPiMCPnPuIVRGrh7tge2xkgUvzHGjiivsFZtHxmJgTPtoySk4=
X-Google-Smtp-Source: AGHT+IFb88R+9K0GOymY0t578XQ894bT1xu/jTQwQZMv0vJanU8IHPObesWk32lJTmSBH2MctwS1Xg==
X-Received: by 2002:a17:906:6a22:b0:aca:c789:133e with SMTP id a640c23a62f3a-ad17aff7ebdmr157302866b.50.1746170719581;
        Fri, 02 May 2025 00:25:19 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AVT/gBFlc13/YsK+gx+Is4Hm60l22ODtUKfTP+HhwFiXiwl4eg==
Received: by 2002:a05:6402:2707:b0:5e4:beea:cc00 with SMTP id
 4fb4d7f45d1cf-5f90a183e24ls1168744a12.1.-pod-prod-05-eu; Fri, 02 May 2025
 00:25:17 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXwpuVVx2ukGnV79X0oBzZpauX7GIDJiHDuSVGN0cKABntRYUDxwTyUv711ZF9ytR43u1tU16uYUUXdyg==@lists.one-eyed-alien.net
X-Received: by 2002:a17:907:c04:b0:acb:8492:fe with SMTP id a640c23a62f3a-ad17aff62bemr178240966b.52.1746170717465;
        Fri, 02 May 2025 00:25:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1746170717; cv=none;
        d=google.com; s=arc-20240605;
        b=O2TMZR6Js9w4bv2R+ZQGQVZSVD27gPWU0INxPMzfVeIpKx/NxbluOUSYXJxq2/nqtl
         8v8U3pMOC/7BzoCR4aACRDvNdW4HvuLXaumF6U3TTi1NfZFw/+rVvWFd+qo/B7ne2JVw
         iJaw06c9FB5Uw06apnMheKzTv7+La9ZOtxgM2ic6IC9ymYN/CIMwPjA4ItCo/dthUjg7
         WPI8Wp/B9SP+ALrp/x8M/ev0SFLvmH7FWjGjbY+gV6DLvs/+1TpAUWT2UePXIWmxlkHy
         XfcxbCmSGG4skx2PC2EPfQWdYXB4cxlHTBh14959cEgOOCk3RrDr5xwf8mwJHs5JOd62
         N8OA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature:dkim-signature:dkim-signature;
        bh=xtJbcL426DKNGAr2FtIavadp4OKGW5CpxmJtMoRNYhc=;
        fh=2/y4n9TazrvSeGQDP+AiTTbFeMAHnFfsMq4VIxZv4EM=;
        b=TGHwSUP3mRGAhJLAxr3vN34D6lyJC1eIilIWx6fcT2PsEeLebSLqVGOV3BupgGYZFN
         Hr2PzqnpbycW54iTD4ZVCpJu5tKlfBpInQblhRhtrxhZQG6tyHxfMexkd9pmd8Dr1sY1
         jLzHx9WwijV/jsFCWo4q96N40X56Fsus001sH9MKcnVa0jI0keIR2m9FjJfJuUjiCHI+
         4nVoI9hgYX2ewhLClQVVmBumTn6N1Qeo/h4P8XUsSUQ75i3LtX8wOBsmQP1BsjgxfnGb
         dXWyg/pedDl7OPCrWAOmJ1ryLS/TCgrZUf3a2jyLa+auUzWWg0Tx8n3mT+Ksq8o8kOwT
         QrbA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=iIF9ViaZ;
       dkim=neutral (no key) header.i=@suse.de;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=iIF9ViaZ;
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:1 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out1.suse.de (smtp-out1.suse.de. [2a07:de40:b251:101:10:150:64:1])
        by mx.google.com with ESMTPS id a640c23a62f3a-ad1893c6087si4479366b.497.2025.05.02.00.25.17
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 00:25:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:1 as permitted sender) client-ip=2a07:de40:b251:101:10:150:64:1;
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 0697121A0B;
	Fri,  2 May 2025 07:25:17 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id A776913687;
	Fri,  2 May 2025 07:25:16 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id fOz2JlxzFGguOAAAD6G6ig
	(envelope-from <hare@suse.de>); Fri, 02 May 2025 07:25:16 +0000
Message-ID: <708230df-0480-4ccc-a900-68e121ceb07f@suse.de>
Date: Fri, 2 May 2025 09:25:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 3/7] scsi: make ppa depend on !HIGHMEM
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>,
 "Juergen E. Fischer" <fischer@norbit.de>,
 Alan Stern <stern@rowland.harvard.edu>,
 Andrew Morton <akpm@linux-foundation.org>, linux-block@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, linux-mm@kvack.org
References: <20250502064930.2981820-1-hch@lst.de>
 <20250502064930.2981820-4-hch@lst.de>
Content-Language: en-US
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <20250502064930.2981820-4-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 0697121A0B
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
	DNSWL_BLOCKED(0.00)[2a07:de40:b281:106:10:150:64:167:received,2a07:de40:b281:104:10:150:64:97:from];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	SPAMHAUS_XBL(0.00)[2a07:de40:b281:104:10:150:64:97:from];
	MID_RHS_MATCH_FROM(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:106:10:150:64:167:received];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:email,suse.de:dkim,suse.de:mid,imap1.dmz-prg2.suse.org:helo,imap1.dmz-prg2.suse.org:rdns,lst.de:email]
X-Rspamd-Server: rspamd2.dmz-prg2.suse.org
X-Rspamd-Action: no action
X-Spam-Score: -4.51
X-Spam-Flag: NO
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=iIF9ViaZ;       dkim=neutral
 (no key) header.i=@suse.de;       dkim=pass header.i=@suse.de
 header.s=susede2_rsa header.b=iIF9ViaZ;       dkim=neutral (no key)
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
> This is one of the last drivers depending on the block layer bounce
> buffering code.  Restrict it to run on non-highmem configs so that the
> bounce buffering code can be removed.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   drivers/scsi/Kconfig | 1 +
>   drivers/scsi/ppa.c   | 1 -
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
ien.net/d/msgid/usb-storage/708230df-0480-4ccc-a900-68e121ceb07f%40suse.de.
