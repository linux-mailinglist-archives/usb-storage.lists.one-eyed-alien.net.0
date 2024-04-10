Return-Path: <usb-storage+bncBCHZVHVFVMARBRWQ3CYAMGQEHD6TTCY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lf1-x145.google.com (mail-lf1-x145.google.com [IPv6:2a00:1450:4864:20::145])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C1189EA05
	for <lists+usb-storage@lfdr.de>; Wed, 10 Apr 2024 07:48:56 +0200 (CEST)
Received: by mail-lf1-x145.google.com with SMTP id 2adb3069b0e04-516de13dd48sf2590804e87.0
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 22:48:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712728135; cv=pass;
        d=google.com; s=arc-20160816;
        b=kIcjY0of8U7UbJL+GerOalNRMsdNRDkpFuTreu1Eko5YM3jrMv2FxhmA+RxLydpMji
         x9UjHyI7LChMfTv9gRP/eiJrFoPykhiKPkQXoT52dPMrpBu1b9b3Tf8tm/n6i3v52567
         6y+AuaSW0rPrBs/imlRIjP3k6WSlcEz92O4SYAoQcFzzwQVeijo24G2oToLkoBU+enmN
         LXHTC0733REOL9GDaC9WKfzlg0akfrogZRUHAamObk7S47ucjDT80AldgwBNIdfQWcmi
         7Il8ef/NKVyxv9dbFX+WFwIPLjpdoCUva3of3+pfxGRLC/AicONSHTSJnKTxhxwudRP+
         TdlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=VpEUdWderB2Kb5nJg94cHptDE/AC5I7gCjE1m7UsQQY=;
        fh=tUSpG+fNBraAzGnE1Ozb+xiYgYsSLptn8gU63FLJ8oI=;
        b=FQzx/istGawePiP7XH2+/N8KCN62ZDgPSJ3E/vpw6tPEH/FxiMBKix/L0wbiVblD9Z
         iD56Ncwrqnz86bU3QygI1CBM9y694khRdJTAC0UMBVvyI6N1LEq2gBU4TabNn8faIgWJ
         yJLNLJCpkm4nW981B6i0afCSur2AM3tTKxadrzarQXjjid4qzmLF9LALUDyKugD4j58U
         4Kwqq2asrY9v1vOlgDpNn5tS2PgbR3Dji4Bn8GHqIJy6rCERvhev7lJ1tI7GYPEesXHg
         /UJtcALIra89Gm71B8YeFgMeMj+M2E49VbFkcPDbyULTwxKF8Gf+/3qsSw/wUyjREANe
         9V/g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b="y+AJGJ/f";
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b="y+AJGJ/f";
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519 header.b=IfU35hxz;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.223.131 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712728135; x=1713332935; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=VpEUdWderB2Kb5nJg94cHptDE/AC5I7gCjE1m7UsQQY=;
        b=IeueudmoghBl1IvQ2yWnt8wIrar+Dq0BEw1/NuidQABY8FUkyyUllqzht1XNJDWyfz
         wZodanm3DmsNdeRxPqPbDa/FLOStvjeSJlzPAOm695Af7hhChf28q9z/2Lh3tFk+Kuu4
         BZLEmnYEkfH6svudHdK9Qt92djeJS6P+wjp6A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712728135; x=1713332935;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VpEUdWderB2Kb5nJg94cHptDE/AC5I7gCjE1m7UsQQY=;
        b=lS/0GzET0kXC3um3eiBFmIhwQZhzMRhe8XkxMuqzz/f4aB0RvXy1+Qv97YLu09u5PF
         xTzOmAai2MdiaPbDzPO2wRXkkCcCnAMhibt0BdqpWXg5B/iCtFbC2qkrFUrG5hpvTdgV
         sn2dLynb0ijD+DPHuLJPoNtc2E4QhOuh5M329CnQaxpMhPXUYWNvyyyNw43HEWfq3pMb
         PXE2BSyLT/HPXg3WtBgm0jVYFZ4areAzsX/kV7ryMWt48cdSIRKgcWuP8hbWNNtcEglq
         j2/lpLGuS3LfNySt9gXpaSR6nm/cZcTc+CDdVXytQ0MI7tbZ+A2d6ctfqieoSbZ60+jA
         BnyQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWeE/OckIs6yMaDsVFmSTnLmTwhWy7Qian3KzgoFAkdjV1Gr5mKIqIb6Rjsir2pefLWMeegttW13MmSDg+6VVLfPeYu3Ozq0OHe
X-Gm-Message-State: AOJu0Yy7XiyMrTehtqF7PpNq2o/Nl6iCq86XHOsYaz5LcGa9J/gZo61i
	lV+YJKqmDQG9l9VkymYz4X90UjFtK8/QRWzOoANfEBG3vJkxj7MUqygkUzxOP38=
X-Google-Smtp-Source: AGHT+IEsk9KOYlTALw2Xf2bQ8J5oZBaNgdDLkRUwKEMXzDJhxy0SW9rklyEhhFSDbkmbOUJtw8rvhw==
X-Received: by 2002:a05:6512:e88:b0:516:ce00:d05a with SMTP id bi8-20020a0565120e8800b00516ce00d05amr1007600lfb.25.1712728135235;
        Tue, 09 Apr 2024 22:48:55 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:5293:b0:56e:4c3a:2e76 with SMTP id
 en19-20020a056402529300b0056e4c3a2e76ls47995edb.1.-pod-prod-04-eu; Tue, 09
 Apr 2024 22:48:53 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWAm2dCuQ61CxhbIE4zs2U1/Lcd9PEG8lOnvwvLFST4POiMYeAFggICmhUO2EQrcoAq60daerCcODJSLWgR0k93i0A8mCEtikFmnh3/E/wULmOI0c4=
X-Received: by 2002:a50:c05b:0:b0:56d:e70d:b3a1 with SMTP id u27-20020a50c05b000000b0056de70db3a1mr1060985edd.0.1712728133513;
        Tue, 09 Apr 2024 22:48:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712728133; cv=none;
        d=google.com; s=arc-20160816;
        b=j2a7ClOSPB9De/uhLk/0eJb06Tw2ZRH7OKb0wRLKHVmCWbmUNCRkDyTuw+aLZ5zJW/
         3b+pyIIQKBbWJnhpwGsDXJorqGQGprNjFvwSjA2zL5nw4InSXIJb0OTnTmZHmc4S0RXu
         rMNbD1COFZqoXNbcyBFAfpcKrcseRcpKASIa0ZhE/9l5ETHgXOAvw5QOErjDXcApnsZn
         y1O5cUrgvAIcrFh5vpCbmOHQDdK5YxkwZ/ZB9zMHU2HHtKlAoJSWAwWQwgnh8wJhRNDg
         CMFknMf+Ov+yuDK9TWX98eD9+TnSfc35TIgUe1CUcEEe8WfdZQ5c67qrolJla8FkkDKx
         BSlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature:dkim-signature:dkim-signature;
        bh=/PjTj86KkADQATKhJcvAkgLGIhsELXK32ZE6U1ODLt4=;
        fh=9aauSyI5eQk5b4s5O16fFO5a6x/LXiZqBjzkmnuA6As=;
        b=IJmlUFs6rlUDR1xVQPpXuCh9T0jVh19NWli128PNSZONPbJY8GMbc3Sbi9fPgle8H6
         U2MJIt9sIN/MQXF+5YpLGRqDDh4AUEOLCaatazcn5P7mRAea2kG6q3ejXKF/fxuKqynm
         nlctTzU2QSCIdije4szOnoj6V5kC4g0rGN/d2KjP3z7m3wEDw1vKfsGku75f6c+p3sTW
         JnjrrDhGP9kAKwKSkuMBF8/lD1EeAYzCNAWOuwHOHbERSr2LAxTbFG+3FyItO9+aI8PL
         0ke+sPqMUQOjl+22RpH4H1PszQlJFzAxbMc96gn8Bkt66zJ6hdbeR1IWSE7oW9n7Gi+B
         fCcQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b="y+AJGJ/f";
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b="y+AJGJ/f";
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519 header.b=IfU35hxz;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.223.131 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [195.135.223.131])
        by mx.google.com with ESMTPS id i17-20020a508711000000b0056e0de10a40si5618343edb.115.2024.04.09.22.48.53
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 22:48:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.223.131 as permitted sender) client-ip=195.135.223.131;
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 0BA905C513;
	Wed, 10 Apr 2024 05:48:53 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id C0BA513942;
	Wed, 10 Apr 2024 05:48:50 +0000 (UTC)
Received: from dovecot-director2.suse.de ([10.150.64.162])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id XIgVLUIoFmYEEgAAD6G6ig
	(envelope-from <hare@suse.de>); Wed, 10 Apr 2024 05:48:50 +0000
Message-ID: <363c2212-9f13-4203-bd83-dcf2fdd7c3f5@suse.de>
Date: Wed, 10 Apr 2024 07:48:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 12/23] mpt3sas: switch to using ->device_configure
Content-Language: en-US
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
 "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Damien Le Moal <dlemoal@kernel.org>, Niklas Cassel <cassel@kernel.org>,
 Takashi Sakamoto <o-takashi@sakamocchi.jp>,
 Sathya Prakash <sathya.prakash@broadcom.com>,
 Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
 Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
 "Juergen E. Fischer" <fischer@norbit.de>,
 Xiang Chen <chenxiang66@hisilicon.com>,
 HighPoint Linux Team <linux@highpoint-tech.com>,
 Tyrel Datwyler <tyreld@linux.ibm.com>, Brian King <brking@us.ibm.com>,
 Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
 Mike Christie <michael.christie@oracle.com>,
 John Garry <john.g.garry@oracle.com>, Jason Yan <yanaijie@huawei.com>,
 Kashyap Desai <kashyap.desai@broadcom.com>,
 Sumit Saxena <sumit.saxena@broadcom.com>,
 Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
 Chandrakanth patil <chandrakanth.patil@broadcom.com>,
 Jack Wang <jinpu.wang@cloud.ionos.com>, Nilesh Javali <njavali@marvell.com>,
 GR-QLogic-Storage-Upstream@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
 linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
 megaraidlinux.pdl@broadcom.com, mpi3mr-linuxdrv.pdl@broadcom.com,
 linux-samsung-soc@vger.kernel.org, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net
References: <20240409143748.980206-1-hch@lst.de>
 <20240409143748.980206-13-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <20240409143748.980206-13-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Spam-Flag: NO
X-Spam-Score: -4.50
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 0BA905C513
X-Spam-Level: 
X-Rspamd-Server: rspamd2.dmz-prg2.suse.org
X-Spamd-Result: default: False [-4.50 / 50.00];
	BAYES_HAM(-3.00)[100.00%];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	MIME_GOOD(-0.10)[text/plain];
	MX_GOOD(-0.01)[];
	XM_UA_NO_VERSION(0.01)[];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:104:10:150:64:97:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[42];
	DWL_DNSWL_BLOCKED(0.00)[suse.de:dkim];
	FUZZY_BLOCKED(0.00)[rspamd.com];
	R_RATELIMIT(0.00)[to_ip_from(RLghztw5pzjjmtx4kirkcu9cad)];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[imap1.dmz-prg2.suse.org:helo,imap1.dmz-prg2.suse.org:rdns,lst.de:email,suse.de:dkim,suse.de:email];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	DKIM_TRACE(0.00)[suse.de:+]
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b="y+AJGJ/f";
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b="y+AJGJ/f";
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519
 header.b=IfU35hxz;       spf=pass (google.com: domain of hare@suse.de
 designates 195.135.223.131 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
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

On 4/9/24 16:37, Christoph Hellwig wrote:
> Switch to the ->device_configure method instead of ->slave_configure
> and update the block limits on the passed in queue_limits instead
> of using the per-limit accessors.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
> ---
>   drivers/scsi/mpt3sas/mpt3sas_scsih.c | 18 ++++++++----------
>   1 file changed, 8 insertions(+), 10 deletions(-)
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
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/363c2212-9f13-4203-bd83-dcf2fdd7c3f5=
%40suse.de.
