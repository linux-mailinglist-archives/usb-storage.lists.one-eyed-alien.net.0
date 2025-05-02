Return-Path: <usb-storage+bncBCHZVHVFVMARBQPG2HAAMGQEB472BKI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ej1-x648.google.com (mail-ej1-x648.google.com [IPv6:2a00:1450:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A16AA6B80
	for <lists+usb-storage@lfdr.de>; Fri,  2 May 2025 09:24:50 +0200 (CEST)
Received: by mail-ej1-x648.google.com with SMTP id a640c23a62f3a-ace942ab877sf176996366b.1
        for <lists+usb-storage@lfdr.de>; Fri, 02 May 2025 00:24:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1746170690; cv=pass;
        d=google.com; s=arc-20240605;
        b=Jpjvyt5qCyc2xM91NJJYvy2NhjWL7HPgjCTwKV6e/6qQtIfFAvqdJyDSYMyCz9M3yH
         RAfPz8DS0AiSTJC8X04NV3InBk+pdN+sBuG6qmQn0YnOPQLxmN+pHrmzyf0Ff+YG6cIn
         Y0T9UDHpZZOBM3q/GoxAvTuMm6gIQQOirAeImnwI+6bfoQqaS+DRCW9yI3TJsy5lGm3e
         RHhV4N0wuMns3T4JtNHFLcTchIGlB3bAgsHxMigFQll/vmor/PSW7HdX37ThH4CxG6za
         wOSC8PTTI59ea7WBS7wY8ztJWGrJOuknB9ng6lEk9WvBwshdUUMnEtMGFOmvqzLHrQbk
         IZzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=+Zo/GrHWo04prLRXsAfryehhDctlR2uTLhc9U43rUKs=;
        fh=8ggVNu5xkfMiaMQCDAD7N5C3Aq7D3x2rDHT6RMZD7hg=;
        b=EdQHnN2Wd0OuYQ756kkIgy2WeWfds5QSR1yK7WN8bjmSII3OYWTdBKT5LYV1aMvFz4
         twPHvnQalVh7INNP8lGj1iNyjvLFFm5XOgYxQj704lfGr8oL346Z1/VKej9fkKQFb3yQ
         e2zo3AhLFKPHk4WLlwfu4z/ZUCjl0xfcZ0Ubz/GFovAsgY3WFdnzjtAqrGA5FsHt/LDh
         mQtwyO+X8s+dyCFs/rStcmOZO8Lnwo+UQSr/GvCnIrJQM+mD3CAqRx1AY43MD2Ym/hJ1
         SYU3F+klXxrW6yv+xtTH6IOXTkQ3B0wWGoSiHuP1V0y/kqzM+GtWXEva2dtv7FmNlg5o
         K0oQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=sj6YU9Z0;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=sj6YU9Z0;
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:2 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1746170690; x=1746775490; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=+Zo/GrHWo04prLRXsAfryehhDctlR2uTLhc9U43rUKs=;
        b=S4M4Z51eZZSPlG59UGCmlNQcHSELEblXOMk2MeAuwDYAqx7ixejkiR0wPwUbAJwwu6
         JCPfbzxkPGN3gPwwzfIK5bA9yqpIutSbtaSyotNQBZzH71AvEiP5PjGCGnMyQ0cWD6oG
         e3dstrOwjO2/7tKj28Bkm6zqFt4izq9LGXnWk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746170690; x=1746775490;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+Zo/GrHWo04prLRXsAfryehhDctlR2uTLhc9U43rUKs=;
        b=YxEL/1eBvNe+8UFY1lHsjtj7vnZeu2u+8ZtAZXLfeNX23Xgofm6fK5I8mus24wEdOF
         VyawWDJRAqprAl9GeeN1AT0I7QTIXETttELm4lscciJvQj55Z0RXWuHtojioppvmtcPB
         IlpjJcst2YJz669ywZ5o2Z5KL0dC7OGtenDVqsQ14y39+6yD/csfXN2G+pcFq3FFTvx7
         29Rz2T9Z4JjLVmGDhT9kmYHKu2DhntiyDdEG+P7OzyHIV6Wf877dF9pI+mU+MvmGsnlR
         pQgh/bv9AAI1n1LEV047DTWy7uCCf+V7rRi7xsqGm/DBoeNUNkAwOv9c/h9paRir5473
         8sxw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUg+bX1BL5WZTZBNcYY5OIe6SQBAy5FFK1RVFc8VTRJt5VJVPsav/ENCUZ/qtYssWx33LHo1Q==@lfdr.de
X-Gm-Message-State: AOJu0YxtQfA2cGl0Xbpz79oQ9llNDR1A0NjCiM69TKni60CmBKdbh9wW
	v3/o5XKOfOBA96fGqGl9tRhxTCK9/pFWkVgjZf87MVi24KiM2X/Nt6KCanXnkaQ=
X-Google-Smtp-Source: AGHT+IHyEnAV3AC4XPBlvQK610yewxw9YKKgWghzJA2KhnZ1BN8Xahb9l6kDozSQIBxZsV9aEdBsuA==
X-Received: by 2002:a17:906:ba83:b0:ad1:77aa:503 with SMTP id a640c23a62f3a-ad17ae40184mr161577366b.36.1746170689952;
        Fri, 02 May 2025 00:24:49 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AVT/gBH+I1SbX1x/HCH0CmqrN7JRRAvOpboLStw0BlW224Dnbg==
Received: by 2002:a05:6402:34d5:b0:5f8:8dcc:3213 with SMTP id
 4fb4d7f45d1cf-5f90a487d84ls326109a12.2.-pod-prod-04-eu; Fri, 02 May 2025
 00:24:47 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWsyiqRtlbIwv6wnV4G4fTNpR8dDRvgV9PpcldqVfeCBxmfeHjar7HVJuESUHACcSxJ2np5LVyjRjdacw==@lists.one-eyed-alien.net
X-Received: by 2002:a17:907:c391:b0:ac4:76d:6d2c with SMTP id a640c23a62f3a-ad17af6713fmr181706966b.40.1746170687554;
        Fri, 02 May 2025 00:24:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1746170687; cv=none;
        d=google.com; s=arc-20240605;
        b=KtuYSQtD2LPAWPcl9Lsa8GzmNQJXwydbB+whzFmJ4ldNd/nrmerYogCCRcMhPBcGlz
         l5VgriQqbox7M7oLH5/uiq9ZdTaTq0oxJqpsJrUY16vxCrY3Iny4yGz28SwvbEb1C+6E
         kyNBcspmYXTluBkX9i5gr9PiAggaw5DSP4YKtnUC2wAC8IvVQvG1JwsscXPxk1yHNMD+
         30MkCNX2P5/5Nze/U7eTySmnO6HrxjU+F0JQ0k3g3FsFZZJ70lSHL2YDgAoO0hOGp3dY
         E79riFadVfze7QHrqbEdqVrq7D7kCDsx6/XOqkmdE7OLW+6V0tMxlXRnTFUVfoSOU8bP
         K/Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature:dkim-signature:dkim-signature;
        bh=TenqFek5HQ49fljPNRwi23amJE9GPLf1ngzw8h6z5w0=;
        fh=2/y4n9TazrvSeGQDP+AiTTbFeMAHnFfsMq4VIxZv4EM=;
        b=lXYpM8BADWtBX2xa4ptlvPjBlojsvK3A3oS8JPiK2u6+B/GgnMM3D6muqShSjnam0X
         NFp7a7RepVnHOnjME/JBnst8qAl21RG6Q0x55Riyovyelym1PV/chLuvJ8txUmA/8jzp
         6rXGd22yz+8VSRKHupjOEutldEA/oLrgFWfFPgfDBq7h7chCjgh9dz8VAliWiAom6QeV
         GR0Y+yNPgT9qDVZ9DKOQdfsGOXXlFzGip1a+HdeKxbVcduLAIcPzY+s3dR8J3w8Eukxc
         jhUvJ+uKjeDMnZfQewLfrN8TUpS6jIftlP0y9PsmEps1b8vz9jViu1iHmKXSe2eO8DB1
         J5yA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=sj6YU9Z0;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=sj6YU9Z0;
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:2 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [2a07:de40:b251:101:10:150:64:2])
        by mx.google.com with ESMTPS id a640c23a62f3a-ad18936ac47si4834966b.380.2025.05.02.00.24.47
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 00:24:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:2 as permitted sender) client-ip=2a07:de40:b251:101:10:150:64:2;
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 36E3B1F385;
	Fri,  2 May 2025 07:24:47 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id CEFA313687;
	Fri,  2 May 2025 07:24:46 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id RkgHMT5zFGgSOAAAD6G6ig
	(envelope-from <hare@suse.de>); Fri, 02 May 2025 07:24:46 +0000
Message-ID: <8805f1c0-d1ed-4bf8-9751-5d137bb7e49c@suse.de>
Date: Fri, 2 May 2025 09:24:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 2/7] scsi: make imm depend on !HIGHMEM
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>,
 "Juergen E. Fischer" <fischer@norbit.de>,
 Alan Stern <stern@rowland.harvard.edu>,
 Andrew Morton <akpm@linux-foundation.org>, linux-block@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, linux-mm@kvack.org
References: <20250502064930.2981820-1-hch@lst.de>
 <20250502064930.2981820-3-hch@lst.de>
Content-Language: en-US
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <20250502064930.2981820-3-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 36E3B1F385
X-Spam-Level: 
X-Spamd-Result: default: False [-4.51 / 50.00];
	BAYES_HAM(-3.00)[99.99%];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:email,suse.de:dkim,suse.de:mid,lst.de:email,imap1.dmz-prg2.suse.org:helo,imap1.dmz-prg2.suse.org:rdns]
X-Rspamd-Server: rspamd2.dmz-prg2.suse.org
X-Rspamd-Action: no action
X-Spam-Score: -4.51
X-Spam-Flag: NO
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=sj6YU9Z0;       dkim=neutral
 (no key) header.i=@suse.de header.s=susede2_ed25519;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=sj6YU9Z0;       dkim=neutral
 (no key) header.i=@suse.de;       spf=pass (google.com: domain of
 hare@suse.de designates 2a07:de40:b251:101:10:150:64:2 as permitted sender)
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
>   drivers/scsi/imm.c   | 1 -
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
ien.net/d/msgid/usb-storage/8805f1c0-d1ed-4bf8-9751-5d137bb7e49c%40suse.de.
