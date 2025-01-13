Return-Path: <usb-storage+bncBCHZVHVFVMARBXX5SK6AMGQE3CGJGEY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x347.google.com (mail-wm1-x347.google.com [IPv6:2a00:1450:4864:20::347])
	by mail.lfdr.de (Postfix) with ESMTPS id 331FAA0AFFC
	for <lists+usb-storage@lfdr.de>; Mon, 13 Jan 2025 08:21:03 +0100 (CET)
Received: by mail-wm1-x347.google.com with SMTP id 5b1f17b1804b1-43624b08181sf18960825e9.0
        for <lists+usb-storage@lfdr.de>; Sun, 12 Jan 2025 23:21:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736752862; cv=pass;
        d=google.com; s=arc-20240605;
        b=R1TcyVvhpCTE8srxxaZ334xB//5dD7erYUQym7LFqU5mW12AsTIZ7OhjM+vmFtL0pW
         r54Ug0pAuAzatFSEkbyNeXREG7jNM2pMMyLIp2E01rS9Us5IX7FKplhm98k0UtesmsvF
         EuciLF74R9oCEdNTcQ8+2jyw5X84NSTR+YlC9AKvQjYKg3z14SyJJI9MdYn+CpGFA+E7
         vDcOuy+OGP6v4t4E/2a0AatSl5uFvS+gNkyTYTjAItaUr4FhH4tXgtwQUXfi+cNFux8L
         t5o2ucre3AsHYpHF5d5pqlGg/ZOJ2VEjuRvAs1TN5kNExGjpRIcR0xFuGfjKLG+ay1az
         wCCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=iERae5EI3EVymAegcdeCNs7bilsgvnk9Hkceqhq7nog=;
        fh=38gnME9jKkz2fMe6VWPv/bmdsq0OFkbqyPpoGvyojNg=;
        b=PnSQ9udJb/rns21kQtoI9+TNkbSvUtPfVeTQU4jjA5/X/k2Ls6+JEa+nLnaWO2Gn04
         m9nFdxGMmiGOuJB5MMN7dhQXOrLMSIPJdwbR+Thq1RxC2Ufd5y2rFROagAixkeU/bpMn
         znXSxUNeM09J+IWVTqqvdKxaunNeanP1qYHk5DxhRn+AeHNLlxE922nmg/9qe5RjCPCX
         kNvLz6tnZnkbfHqfAon/bMFSpSwsPwWO/8jj/IdBbIx3Qq+BvODTuv0Or201FeqBGQjX
         PNcRCQB4UlfqquhwAvst5fktlVSK48UF9cNkYUZHeeAfCltX4d63yIGfHms6wKbPXVoO
         OJpQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=PZUS77ty;
       dkim=neutral (no key) header.i=@suse.de;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=MjtXgVxq;
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:2 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736752862; x=1737357662; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=iERae5EI3EVymAegcdeCNs7bilsgvnk9Hkceqhq7nog=;
        b=JeRFxVr3CD4UhIyV0Gpjiw+L8ReTcbNPWAin7UkhG5I1q36El7RAgRbqjaLqHSf6eV
         wQuCkotVTDL37gF7ZQuO1jVuFslZpXbBFA7khgNt16CaG+UxukEo40ZipLl7g3ZIlgkl
         tWXC2pDQR9p2wo6VeAVbZqEMnFgBwfijr9u9E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736752862; x=1737357662;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iERae5EI3EVymAegcdeCNs7bilsgvnk9Hkceqhq7nog=;
        b=j6TpxEhTmhCSPlaR5EK5kR46Y+C8CzxMz6kzZB12n06DWsOe0gg919ZjdvbihDBflU
         KHdW4NaXgdqmVENPoqj/OnVuucq6NUfcUOBhpxTGk7MANGGvUePvpkm0C+YTpwEtAI9w
         Hic8KkZgZ4CYfdCnI6COGDKbbPjRcQfJ52Vhzsz/S998CUxusRtXbzgrx+SYnZEP4s7V
         4ia3GmIhiaivpI2rGvSO1E3bK3pfcxVQJqBw7sIWgMI5fPu2UgeVmm6f7ZZ/aiqOfdhA
         VgkJwGgg43XdVlkj0iHUUIq89+hqreDB7jVJ5ymGLqcN1acGZhlnGyVtP7zKfiZsFBix
         D0xw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVi4YAPblwaes6eZpFV6KTfjNvG4PwQJllhMa2nqjliCqRbg1ELhHcP7TpEZM6JyGfGivsNuQ==@lfdr.de
X-Gm-Message-State: AOJu0Yw6N0h8UFQ1NNDOOV3HN6KshDhMQaeIZNAxs73oOpyr4S/r4tUA
	5++9/24oKxKjM5GdSIgOCk5+ueSp364GV7OGioJ8VIQSLYbr2ZPL2gI9rezTlh4=
X-Google-Smtp-Source: AGHT+IFNmYmEDp+M0ECaK9JWRUiHYiN0z2kizpcNMyNY464eWbuidTWJzk/VjN077m/KC/cvZZJc5A==
X-Received: by 2002:a05:600c:3b86:b0:434:f3d8:62db with SMTP id 5b1f17b1804b1-436e9d6963amr121810375e9.2.1736752862526;
        Sun, 12 Jan 2025 23:21:02 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:600c:1d27:b0:434:fb72:d818 with SMTP id
 5b1f17b1804b1-436e8844f42ls9326805e9.1.-pod-prod-00-eu; Sun, 12 Jan 2025
 23:21:01 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXYpiLnYeL3yLY7mjnavuE+1VslLkqA6JnxCrYXQ2jR2MNhA0nVGIACBksRmyPAkuvxrIMpTG4g2PY0aA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:600c:458d:b0:436:1b86:f05 with SMTP id 5b1f17b1804b1-436e9d7b925mr119723815e9.11.1736752860313;
        Sun, 12 Jan 2025 23:21:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736752860; cv=none;
        d=google.com; s=arc-20240605;
        b=lJZf7ZVsO1eDiP0Hywg0+ZgPzn+7oBAEEyiP/rtQYtd1Ub6BTAfuH91G73qZpGngRH
         9x7i+vHcvlO+dEoE22OtytfdMj3eTRoIKPvaDUsTg4x9S78GFT8cy97Qiq1RQ2VWbEh/
         IG1zUM2GshcA+JjZ9xdPRvSguhlZFQL52uKV10QH9PjjNxTuLLRM7sufVnPw0zQ9nlM9
         H33es1al1WOGtS4o1WIrcf3PAPnjXOPg998XEAliWig/gAu9mxopKtOkgpp3X1j3dgD2
         bZy17z19jIu1xhmTSHjZT/KsReOq252E8F1hN/kYrS+DCglwhAoQ+HP0BfRtPPDsabl6
         vSVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature:dkim-signature:dkim-signature;
        bh=ZEbXcZ9FxU3Bzk1bmtL3avw4j+KWudt6f1gRaHYmg5Q=;
        fh=v1iOF7wU2LGTSrOeQNbYZHRLZQz8Z4SchD9MvpWdaCc=;
        b=WeNXApjeP/AMLMOjsMkko2UTQf8Tl35Tu1a+txdSX9jhKlxKBOoTPfNfviktofIGPm
         WZ8i2HIFCRGWo/WlqM5CBa7mVu6BPcOi/h3MbfMwF6JLSWoO0aRb6pYDIQzwKmbsZ3lC
         vcGDf5EzSdWwj4WfRPoiFAGuT6hWBH0PVRV/3XqWZDUc6ZisFgZpEI9vUrPS1D0Ib2xJ
         BAaQfJVoiNRnlbL5lZkecax0QE52x0mveD1sutlNRxNvgrfltpcyvriZYOxDVplUdovF
         av3LB+U6Hz6vSdTXZzMNFKbnsgHRnSnHLMaTpI69KEuuq2+ro1M9VWOuwbb/8YH0797j
         EVdg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=PZUS77ty;
       dkim=neutral (no key) header.i=@suse.de;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=MjtXgVxq;
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:2 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [2a07:de40:b251:101:10:150:64:2])
        by mx.google.com with ESMTPS id 5b1f17b1804b1-436e2e9c766si78220435e9.143.2025.01.12.23.21.00
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jan 2025 23:21:00 -0800 (PST)
Received-SPF: pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:2 as permitted sender) client-ip=2a07:de40:b251:101:10:150:64:2;
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id B369F1F37C;
	Mon, 13 Jan 2025 07:20:58 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 4679713310;
	Mon, 13 Jan 2025 07:20:58 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id 1/ZsD9q+hGcZLQAAD6G6ig
	(envelope-from <hare@suse.de>); Mon, 13 Jan 2025 07:20:58 +0000
Message-ID: <15cb40c2-df67-423d-a15c-c55e2bb2b8a9@suse.de>
Date: Mon, 13 Jan 2025 08:20:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 02/10] block: add a queue_limits_commit_update_frozen
 helper
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Damien Le Moal <dlemoal@kernel.org>, Ming Lei <ming.lei@redhat.com>,
 Nilay Shroff <nilay@linux.ibm.com>, linux-block@vger.kernel.org,
 linux-nvme@lists.infradead.org, nbd@other.debian.org,
 linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <20250108092520.1325324-1-hch@lst.de>
 <20250108092520.1325324-3-hch@lst.de>
Content-Language: en-US
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <20250108092520.1325324-3-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Spam-Score: -4.30
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lst.de:email,imap1.dmz-prg2.suse.org:helo,suse.de:mid,suse.de:email]
X-Spam-Flag: NO
X-Spam-Level: 
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=PZUS77ty;       dkim=neutral
 (no key) header.i=@suse.de;       dkim=pass header.i=@suse.de
 header.s=susede2_rsa header.b=MjtXgVxq;       dkim=neutral (no key)
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

On 1/8/25 10:24, Christoph Hellwig wrote:
> Add a helper that freezes the queue, updates the queue limits and
> unfreezes the queue and convert all open coded versions of that to the
> new helper.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
> Reviewed-by: Nilay Shroff <nilay@linux.ibm.com>
> ---
>   block/blk-integrity.c      |  4 +---
>   block/blk-settings.c       | 24 ++++++++++++++++++++++++
>   block/blk-zoned.c          |  7 +------
>   drivers/block/virtio_blk.c |  4 +---
>   drivers/scsi/sd.c          | 17 +++++------------
>   drivers/scsi/sr.c          |  5 +----
>   include/linux/blkdev.h     |  2 ++
>   7 files changed, 35 insertions(+), 28 deletions(-)
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
ien.net/d/msgid/usb-storage/15cb40c2-df67-423d-a15c-c55e2bb2b8a9%40suse.de.
