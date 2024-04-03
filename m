Return-Path: <usb-storage+bncBCHZVHVFVMARBVECWSYAMGQE3LMNUWA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ej1-x648.google.com (mail-ej1-x648.google.com [IPv6:2a00:1450:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id F0BF18965A8
	for <lists+usb-storage@lfdr.de>; Wed,  3 Apr 2024 09:12:20 +0200 (CEST)
Received: by mail-ej1-x648.google.com with SMTP id a640c23a62f3a-a474ac232e9sf284234466b.2
        for <lists+usb-storage@lfdr.de>; Wed, 03 Apr 2024 00:12:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712128340; cv=pass;
        d=google.com; s=arc-20160816;
        b=Reup9I3zbjXVQQEVHCYblJpsRM02hmta2xyemA4gr8dLFKkIaH/HdUzZmfZIQvPOAl
         lLC7bpTjqLqs4mGjbRaHonSXdN+cS95IMZ642/+xCI00T45N68NfveXNjYFRqIeBlH9P
         eZ8HSw/GxUNLsxdh/nwo+Vw+qwHJqCCW6EZ7+V9JNffA6cVW0KQIaEKAj92jgcj+CCHo
         OiSN3eqzYr9PrhoSZ6gcXlRqC6bnFp5iGwz7ou0bg2L1wDndYDtmY3Kab8Q1p8jtPEM9
         A13OuNQQ5WMlmj6GovLnw/3U3J873dIyX55FXzGLLap4Fw50AwlkHTyz2lHYukxYZ34L
         HCUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=u5dKOIDAzgNaNHuB+5odGOry7ywK7PqGtzeL+YcEY90=;
        fh=B7wcFu9hT4m+eMF/4AmV8QRQpoEnSGArUvPzg4dhOJA=;
        b=cpiUWDJtvhDWu4cBmxcq7WY51d5mxTX7XgyJlVWtD7IAzL6dHqVLusVdxP8CSkr7Ng
         u9Oh/RBxCKre5UmchD7BJxMb9y4XUILHGhNm6KmRiDC5gKpDoB3wE+SIIhH8CZfEbwDj
         62lLAb6rIFJFERVL1I1frZVDi5U1mhecybvo/Fpf2fxzIOg23kXvLjq0EzfMnNEWzEiC
         6Fkt24RGkxRYZh6FXBzllt+0TJjk+LoX1s6zISsrIrVHj7KDi6WTvyLPG3VyzLjp2+7l
         GseEAIduYKu45Wyf2mBarVDDceFtGO3nLqZ5H3aN7p2omBpGrUA5Xahk6kuHAJRz5SWJ
         VrnQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=eO4+nqUk;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:1 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712128340; x=1712733140; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=u5dKOIDAzgNaNHuB+5odGOry7ywK7PqGtzeL+YcEY90=;
        b=lc5SlOfk/pM1Z4vvuDiSMO9mSCu2Piqc/3MLXB28Rlw7TQaHEbooYAPVNhe0/1y/6D
         Pt6vdK3I0meXIEKkexpMjzc5tQkvxfiDsnLEwSz1k9IvGTo1MaucgCsMR5PFtwF4VUHz
         jqxzIBV4U/bWUOjNMv5L825CgdqDlLQaG+9Ag=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712128340; x=1712733140;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u5dKOIDAzgNaNHuB+5odGOry7ywK7PqGtzeL+YcEY90=;
        b=HG+gmhdraeZ6MkHpN90b/VT5qHjgtFVUZEWw2K9odNbIRa15xiaTcwFBQPvg7yt/z9
         0h8Rek/gtg/EY3AzZwCRM7IfcJHzXov34B7TQ46jjTUSmy6RLf5gkQ5hncRZXAl3WbCP
         OPs7gzP45ACieF4SShJmG+FcQMLmDKlc+mzD/WryQP1z3phRBIaQX0vTKv00wGIXGv+N
         4mUITAF2WrLNzGqEhyEPMb5fUrdl7SGIelLrMTbFpV4PwQood5N0ue26XDotJXTn9qPV
         EdpvyZkTj4K381OpG4H+XLX6oFt2UEAFQMB30gnwKM1fnjAER5eidZYUFLTpXAQNduh7
         Ui6w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWa4f6z/Xx/TAwpuNmdbv4eH8ENhX10o0+Ue/mHKNxAy3cSPM+z6v79rWyaj7Cg7dYrj/6vAG5ZHTxKpwaBJiB/nXe0MMV8/I+n
X-Gm-Message-State: AOJu0YxaZG5Y23pcYK1C2wHwuvR7zF8LHUpcTbByBPQnf3P1HwyH+MYX
	Dsx1XNDezYM++HHIH0M5HXVM0DGXubDJDpmFSR8zoKaoBiCihTdD610kSpD0xSs=
X-Google-Smtp-Source: AGHT+IGqhupI/XDmxldkImYApx1o0C0g0D/URJFIqUOW0bYEAGAwIvxXk3V9WJa03q1wmFYGwMoRRw==
X-Received: by 2002:a05:6402:34d6:b0:56c:6cb:e7ad with SMTP id w22-20020a05640234d600b0056c06cbe7admr14986620edc.9.1712128340543;
        Wed, 03 Apr 2024 00:12:20 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:2692:b0:56c:4cb0:f66a with SMTP id
 w18-20020a056402269200b0056c4cb0f66als63081edd.1.-pod-prod-07-eu; Wed, 03 Apr
 2024 00:12:19 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWRh3oMzH4sXA29/cj10yZyUss3S8XNFhkooKrtYxbkX7rargtPETOCuMkrVdq6FTSO8cQS9IR1dtzhzEVa9+DkaMn7G0lJR1MkvRGULGI1NlRsVH0=
X-Received: by 2002:a17:906:1cc3:b0:a4e:4fc1:1855 with SMTP id i3-20020a1709061cc300b00a4e4fc11855mr8280476ejh.42.1712128338815;
        Wed, 03 Apr 2024 00:12:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712128338; cv=none;
        d=google.com; s=arc-20160816;
        b=yUpm5Kazzwup32rgI6K1+X7pslauZaWk+2SbgO62U+XOrqlWvekHvVn1HpwHZOv4cv
         KFU5MNwC/pK2ggFMvqN22iErqRQt6GwvbfdowOIDPMCyQBf7GsNYCai07wU/2nIa92FG
         +Jrfdj1ZoY+CqaXS1c8s5oAM7C+mjr5oQCIYgoEqfDRGBZkMKgWSys2QS683a4Q8War8
         XrKp2yoiXMHfYGCLIjE8NFn4N9k2NxIeVHIevgKWmQBc0gp6yTgP4F16sUfYPubCa5qT
         q8cSeEHGMykjUAl6xhNgFrPWRmlZhVJb692s9dhDgcWLQN3Pi9Q+U2HQ/L/HdAhz5VRd
         ro+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature;
        bh=eqB/Dnnb8aZwIbRgXfrzUXWobr3xcCWbNhSGYKcQyUE=;
        fh=9aauSyI5eQk5b4s5O16fFO5a6x/LXiZqBjzkmnuA6As=;
        b=Z08sC8y31is9I/nvT4wO71f/muI0c5XSVhke5F27wrdTFrfrawwJDColSI6BWf6+P+
         R0zTYmsUJSV5BV2nmQ5AorAnTEeXdR8ziNZArltlOdxz3NILhNxXndgDOxDaUoH2T/67
         XGqtTG6qQwiMCWseCJFHq02ZeqjBYtFHclbPhP8efWysOaKaWs8QxrejvQvM5E9GyPB2
         qhbQQn7p8qu4gu/Vc2aZUDJ9/O66tJPiqZ0KcBfv9EMBOLFCYRGATXVeITqD9m/FvoEa
         xlma3ELJN2df9kPBXYRfYAujgVdVCpbbqaZvppgmfw7rXSMZP6pzsxKEcbc4jHOIs8aH
         ocLA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=eO4+nqUk;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:1 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out1.suse.de (smtp-out1.suse.de. [2a07:de40:b251:101:10:150:64:1])
        by mx.google.com with ESMTPS id hp15-20020a1709073e0f00b00a4e6d59d9a2si2930794ejc.596.2024.04.03.00.12.18
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 00:12:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:1 as permitted sender) client-ip=2a07:de40:b251:101:10:150:64:1;
Received: from imap2.dmz-prg2.suse.org (imap2.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:98])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 5236035033;
	Wed,  3 Apr 2024 07:12:18 +0000 (UTC)
Received: from imap2.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap2.dmz-prg2.suse.org (Postfix) with ESMTPS id DD99213357;
	Wed,  3 Apr 2024 07:12:15 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap2.dmz-prg2.suse.org with ESMTPSA
	id YK3nMk8BDWYlEQAAn2gu4w
	(envelope-from <hare@suse.de>); Wed, 03 Apr 2024 07:12:15 +0000
Message-ID: <3c215fa7-8290-4732-8472-a1395bd99f9e@suse.de>
Date: Wed, 3 Apr 2024 09:12:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 16/23] pmcraid: switch to using ->device_configure
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
References: <20240402130645.653507-1-hch@lst.de>
 <20240402130645.653507-17-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <20240402130645.653507-17-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 5236035033
X-Spamd-Result: default: False [-1.84 / 50.00];
	BAYES_HAM(-1.54)[91.98%];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	MX_GOOD(-0.01)[];
	FUZZY_BLOCKED(0.00)[rspamd.com];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[42];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:email,lst.de:email]
X-Rspamd-Action: no action
X-Rspamd-Server: rspamd2.dmz-prg2.suse.org
X-Spam-Score: -1.84
X-Spam-Level: 
X-Spam-Flag: NO
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=eO4+nqUk;       dkim=neutral
 (no key) header.i=@suse.de header.s=susede2_ed25519;       spf=pass
 (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:1
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

On 4/2/24 15:06, Christoph Hellwig wrote:
> Switch to the ->device_configure method instead of ->slave_configure
> and update the block limits on the passed in queue_limits instead
> of using the per-limit accessors.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
> ---
>   drivers/scsi/pmcraid.c | 11 ++++++-----
>   1 file changed, 6 insertions(+), 5 deletions(-)
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
one-eyed-alien.net/d/msgid/usb-storage/3c215fa7-8290-4732-8472-a1395bd99f9e=
%40suse.de.
