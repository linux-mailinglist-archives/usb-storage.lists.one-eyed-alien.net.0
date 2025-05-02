Return-Path: <usb-storage+bncBCHZVHVFVMARBQHH2HAAMGQENSQDBGA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x547.google.com (mail-ed1-x547.google.com [IPv6:2a00:1450:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id B456AAA6B92
	for <lists+usb-storage@lfdr.de>; Fri,  2 May 2025 09:26:57 +0200 (CEST)
Received: by mail-ed1-x547.google.com with SMTP id 4fb4d7f45d1cf-5f4cb765d67sf2642287a12.1
        for <lists+usb-storage@lfdr.de>; Fri, 02 May 2025 00:26:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1746170817; cv=pass;
        d=google.com; s=arc-20240605;
        b=BPkKzJeRZHN3vA9/3eWXI4Wh0Osv9gC6KHkuH7jgn3f+opWVyst1FBew/lbxk6VBBc
         jG+RdHbPx+rECHQ/iFU64jhhMTYH1gcsGfx9M1kk3z4VjkovI8M6Hzl6T1GbVPPsza/t
         Z7HTw+rft1jGrDiruml4MEjRyAv/kgIGvqiGYgVLWHCh5okbZujQ1th7OZkT3/qmZpzi
         gNTBnfdxZgVNY24LKl3782wk1q6W7DQlAwYTH4jume8YEhiddX87Dqtd84Q+KyjlIBMg
         0ShfDwyF0dgURI+iGF+LdOHVOfuydhaI4yc1DZGcjDk0Tm553WhfLDFod62DNKdmPszq
         LCuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=Ml3odKWtC1SXbohasWAmgI5jwzlpyclkM0heYonFWZg=;
        fh=6k/D5S0eahoQD4eD5iUh9Xs0SPDyRUWzMdB4lan/vMk=;
        b=iUZ/kc9rUgKrpAlGYLNHrmZMJ3Yh/5QpHVezDoO57irONyiFshxz72hPNbFUP9acgN
         fAeP75xUlmUKKrOq3XaCmnm0wjsgdpzQ7vs0YFdTUF67Np7oKrSSO56Rz81jSd8HpItr
         U5G/anrdT9WH5FfkCjPZiwwlgWPuZiNxyACEOnWrNcTf9xPeVMiDIb4/6gbAztL6tZSA
         XZX9/qSmoNG2q5e1j5tcHIZoDn1ME23cyPeC4aEmNMLGZfpvM7LaDXuKi0qCCLWtAE1e
         9vMTiXmME7MOFsyttX3JGrQEo9NcFjw1ZR5GS8svpLHPeHy+7j8uaXyZuXJdPUY+3bc5
         s5aw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=fYwT1eJ6;
       dkim=neutral (no key) header.i=@suse.de header.b=De8RyRAG;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=fYwT1eJ6;
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.223.130 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1746170817; x=1746775617; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Ml3odKWtC1SXbohasWAmgI5jwzlpyclkM0heYonFWZg=;
        b=RHMVXGkeeknt8gfIlTOTQ5g314NL5BBcjaLSV0Uhr9PQZCLBI7SvcNXgF+xdl9k5kT
         YzRMTe1XHg8bIsyYKgkx7jSTMw4RmVqUPoag97Eh4qmE7Yxah2FOEr0jzbWuOpZJKOqH
         gp/Ia2SZSAcqAoW/H30FLudVRXEMpi3CxO70k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746170817; x=1746775617;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ml3odKWtC1SXbohasWAmgI5jwzlpyclkM0heYonFWZg=;
        b=VMxF6uK3ui+H99uSdbwJ5Bf3vtbc6pEfhCEL8DlQa4ubAcn0TDspXGSDw6iklWaWUn
         wDvWswnEAA4hqQ/c/X34VRqTKfMlswuZrMKAf+kkdNlekDB6yXRHmoyDeqeCURAQ6mo9
         SFKLivVx1EMoYCaSNBRHdUjKJr4OUnz2qPTc531EiQ3RDuylw6pcH3omXfmRA4Q8tMSj
         8tZ+R51SE1Kdd9Jy4bfkGQDxjt8T5WQwIOjEYHw8YP9cqOxMyMeyJTyBShkV2cekBalj
         0Qfosx6FSE2y7FG9Dr/UghrRm7GmJb3tqjH8nqfJ7TduxqGExhSkUSCeBhviF5Aclli+
         2d5g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUKMjejvAHptxJGWl8liV8gliLZajlXiFFauptY0X9lx3k9W1duDb8rx9jYFYnYtW7nsQkkdg==@lfdr.de
X-Gm-Message-State: AOJu0YxrMPhBUiLtPNi053favzh5XAtgiUxQ4+Yzk+PbIAdefR78Emf7
	1XJOlPdSitkhs/BFT77zj4AF++np8rf6FJdZitmFKo8g9hCfJ2DpzX7DvEAVBVU=
X-Google-Smtp-Source: AGHT+IFnIiKIXOyfCfxWXHNiXBgOw/SAaXOsGyR0eRld66Gh48TEyPEFaoHs7PSu4KESsqI4mHpLbw==
X-Received: by 2002:a05:6402:d08:b0:5f8:af06:75e3 with SMTP id 4fb4d7f45d1cf-5f91997c65cmr4339237a12.10.1746170817090;
        Fri, 02 May 2025 00:26:57 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AVT/gBHcfXwSIfhV+aDN+0VI5ngjtcrDbLT8Dz57m8tUWYFyhA==
Received: by 2002:a05:6402:2349:b0:5e0:42ed:49c5 with SMTP id
 4fb4d7f45d1cf-5f90a18af09ls436855a12.1.-pod-prod-00-eu; Fri, 02 May 2025
 00:26:55 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXlBSlHe+f2V/vmpvye1u0R/MaqAtfrwj2tFZDjaWWOXDmgGGWpZf9rnttfurZMe9h0xBOFQJbvOB0RqQ==@lists.one-eyed-alien.net
X-Received: by 2002:a17:907:6a11:b0:aca:d276:fa5 with SMTP id a640c23a62f3a-ad17a878e03mr194040966b.0.1746170815061;
        Fri, 02 May 2025 00:26:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1746170815; cv=none;
        d=google.com; s=arc-20240605;
        b=bZWvxz4ZiZhkqd/h4Jx3rwEeIfTdZf8FhasX1fqLMtQznVFZRa2zVO4RfUAJXAzie1
         ZGTyuKs1Iy1rRwwyErJQvUnCKvoKXjf3uwn+mePWog+KUvfgyyic8wAJw+zwZYx+pC3r
         WqYHlSjPG8Cg30JqGo2PtGSNZfAraXtAUtAf/06ksTglsPxc42r+iUJgg0EoHx0ZwLUk
         oeMkOx3ib2NPS+yGRzycSOM0Z0xPO7WR2fow/sDObIaPmtPu7dd1xxNRwvfVZIPcECv2
         5kJI6+eIQTenIWdlPlE22IwBhdgN/S+c1qI4+zklsDUCqU0lPbC2hzZiUc3D6X1uBRmo
         fKpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature:dkim-signature:dkim-signature;
        bh=t7JIh4OfU/57KUr5ma/2EzLGzU/zF05n+rTJTo7uAa8=;
        fh=2/y4n9TazrvSeGQDP+AiTTbFeMAHnFfsMq4VIxZv4EM=;
        b=TK+plOo9xDKg+R2wTju32x85RbQXRp6Ik/QMd/cBMjHIowbNYWhohGEm6XILeOJvoa
         qQn0fVExTj4QPfz7JkR6xfRFU2l5euDDTintGpLZpDWKKoQ1PLLD5Hqczian/RZpSAO5
         6/TUzk+v21+yLHj04P8CsTg+/KKVeW5/N7yqdsPa0VjMFev5mtVLzLd55DIO660q+RII
         cTYniIBrhlFgePZh9FUFy7WnqXBsR3Gx8a5MhmOCvn2ahrmybMRfnu6ehivtOJLKIzHN
         f4dlcaMDy55blXOYBksbPcYQU4Dvo1JRlZ08DzkNWNoIOKfaV1SucdFWF8WUWesxQR+u
         HTdw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=fYwT1eJ6;
       dkim=neutral (no key) header.i=@suse.de header.b=De8RyRAG;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=fYwT1eJ6;
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.223.130 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out1.suse.de (smtp-out1.suse.de. [195.135.223.130])
        by mx.google.com with ESMTPS id a640c23a62f3a-ad1893b8310si4821466b.422.2025.05.02.00.26.55
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 00:26:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.223.130 as permitted sender) client-ip=195.135.223.130;
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 7D88F2122E;
	Fri,  2 May 2025 07:26:54 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id CB57B13687;
	Fri,  2 May 2025 07:26:53 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id YoLhL71zFGiqOAAAD6G6ig
	(envelope-from <hare@suse.de>); Fri, 02 May 2025 07:26:53 +0000
Message-ID: <85125f21-0021-47f3-9136-d3367f89ddae@suse.de>
Date: Fri, 2 May 2025 09:26:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 5/7] scsi: remove the no_highmem flag in the host
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>,
 "Juergen E. Fischer" <fischer@norbit.de>,
 Alan Stern <stern@rowland.harvard.edu>,
 Andrew Morton <akpm@linux-foundation.org>, linux-block@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, linux-mm@kvack.org
References: <20250502064930.2981820-1-hch@lst.de>
 <20250502064930.2981820-6-hch@lst.de>
Content-Language: en-US
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <20250502064930.2981820-6-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 7D88F2122E
X-Spam-Score: -4.51
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.51 / 50.00];
	BAYES_HAM(-3.00)[100.00%];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	MIME_GOOD(-0.10)[text/plain];
	MX_GOOD(-0.01)[];
	RCVD_TLS_ALL(0.00)[];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:104:10:150:64:97:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:106:10:150:64:167:received];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FUZZY_BLOCKED(0.00)[rspamd.com];
	MID_RHS_MATCH_FROM(0.00)[];
	SPAMHAUS_XBL(0.00)[2a07:de40:b281:104:10:150:64:97:from];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lst.de:email,imap1.dmz-prg2.suse.org:rdns,imap1.dmz-prg2.suse.org:helo,suse.de:dkim,suse.de:mid,suse.de:email];
	DNSWL_BLOCKED(0.00)[2a07:de40:b281:104:10:150:64:97:from,2a07:de40:b281:106:10:150:64:167:received];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	DKIM_TRACE(0.00)[suse.de:+]
X-Rspamd-Server: rspamd1.dmz-prg2.suse.org
X-Spam-Flag: NO
X-Spam-Level: 
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=fYwT1eJ6;       dkim=neutral
 (no key) header.i=@suse.de header.b=De8RyRAG;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=fYwT1eJ6;       dkim=neutral
 (no key) header.i=@suse.de;       spf=pass (google.com: domain of
 hare@suse.de designates 195.135.223.130 as permitted sender)
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
> All users are gone now.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   drivers/scsi/scsi_lib.c  | 3 ---
>   include/scsi/scsi_host.h | 2 --
>   2 files changed, 5 deletions(-)
>=20
Reviewed-by: Hannes Reinecke <hare@suse.de

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
ien.net/d/msgid/usb-storage/85125f21-0021-47f3-9136-d3367f89ddae%40suse.de.
