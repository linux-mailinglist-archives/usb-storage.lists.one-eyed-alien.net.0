Return-Path: <usb-storage+bncBCHZVHVFVMARBDX3WOYAMGQETNOSK2Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x548.google.com (mail-ed1-x548.google.com [IPv6:2a00:1450:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id C717C896506
	for <lists+usb-storage@lfdr.de>; Wed,  3 Apr 2024 08:56:14 +0200 (CEST)
Received: by mail-ed1-x548.google.com with SMTP id 4fb4d7f45d1cf-5684bbeb4b9sf3170228a12.0
        for <lists+usb-storage@lfdr.de>; Tue, 02 Apr 2024 23:56:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712127374; cv=pass;
        d=google.com; s=arc-20160816;
        b=bizc1+EeWs7kBLqub/nQ0L+n5cMk+b7RQc94kAWJzsHE8JuLPI7YdLL5tWKcSLTfhK
         aD7t4M2xEdCE7Q+ND78zDQ3MFMHQI350rYOU6yYHbsTF5tIiAosXCoRLVr0T0AgwifZY
         yo2ZbsegEAgflq0RxFI3vSPntpOrDgpavIp1eCTdlCMCtTyakhaWB3ilH9tFei8LTuMb
         5z3MSYTdFCDhWK8Q5y36g4cYQh6O/Z7KaWzJhVKdZkTd6cWOEaGvbbvj+Ti7QaRQEFjX
         QLirNS+arfnR3cNodQPNcYk7hCZ4rf6k8G2+KBplqAXmwvdYrRCsGFVAx2TD9PkM8nxQ
         TkjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=va/rFOFWj1Yx4sTphzN3tBrN2xOozdNFgFenuCOKH7o=;
        fh=CzOf+s7Un3+msX62rw98e5ARyqKVoHzJ/KYbiVfeGss=;
        b=qYj94kIVQoEVT06zq6k3eDFBYyMLMV1/Tge/PRDBl7QFdhKt/kM7dHIWg5ZhDilCTk
         XZH2orvm8/AkJV+uh7DMCXCB/n5xX/kQR6xVkrv0dITq4zAaVi1/9Tc/50uQQeXjDxuT
         CBBkGaLq26e9jQGRmE0rODgGjQPWG6AzOiQmzDU5DNpoxtmTR+AGGwbdKys37QJpNaiw
         6eGYR6Q46qlkQoV6o0JPvHGJQ7qSgtBlj4VTVlROlG+rv8YISB56ro04lv99Uo0Wk7os
         wCM63EDmCw8lSD5J9iG9qZNCZB46sTP5MxdDAprkt9zL1EJnY3zwkVMZk8DdpOAUw2tx
         LF3g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=JUOWiYhh;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519 header.b=kTNESN5D;
       spf=pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:1 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712127374; x=1712732174; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=va/rFOFWj1Yx4sTphzN3tBrN2xOozdNFgFenuCOKH7o=;
        b=FoAioD78mJDZytAlmxoeAMqgrws9WeqRcKGi2SfvJz9PLy2LdjVIA6EEb7Nvc4wLsE
         PesJtaPEPyL+ySw/yZljlqdgiOCRzoyydCbSYuruTjT42EpS2Pb1t1fkDqZjrMcdJ/8l
         8izsdS1XIeczEZfmX9NHkYNEcddXYyVTVHOW4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712127374; x=1712732174;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=va/rFOFWj1Yx4sTphzN3tBrN2xOozdNFgFenuCOKH7o=;
        b=MQmeoPqYi7dJ2mv78QJXSqEku/bG5Ee7iSQS8DqNwZGoVYNSSU3HNi3fW4Zeerp1e+
         sQ/ja+mhGaKuwDOS5YlTbv0isNDhtCwqb7JfvfNfI60+03Y8ca+hPbl85wx9HPferZv9
         lvA9wCiJS4xKqM0F8ZMKnVR3E9dP5rE7mqbczn5Sz9LTvJ5oPzFqvmeI18NZs5jsKZVc
         MVQCwHTWBeBqFAOsZ1rD1V809nQDgYzBBnHScSBRBOToER7S+ssYvVKgnr/7LBjF3NMY
         cmWLZWTTOX8J+xhyaScQFUc3IBnZd/Hr3g5+kPUCXdjyJXSL2reLhUANrZwwKiml+k6I
         BCcg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCV4qronxrmUU/l/5Lt+wyXpwLfEAPnDVK9kTaY4P2X4HtGHY8e45fXu2HRa37oTji3yqwNYxwTWHu12g7ztlz4p3wieyN0mlCq5
X-Gm-Message-State: AOJu0YyQn2aLlbwRhQOVFcpUXkk5n0OHDrwhszs8kKm+29yk688cpEJK
	eJfqkoQV1Fs4Fj8jOreDH00IFccigNDM6e9KJl2b3u0KKdHL4gDip7Vwd5LOdgA=
X-Google-Smtp-Source: AGHT+IEYrduW2EaeJ7BDRCI1/0PTVczgX3P6+oOUdOvaIS6k9ZQ9EbD/K7QF/Ca8t5PNmPGdsvmjNg==
X-Received: by 2002:a05:6402:5207:b0:56c:195d:b168 with SMTP id s7-20020a056402520700b0056c195db168mr1392805edd.26.1712127374393;
        Tue, 02 Apr 2024 23:56:14 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:3507:b0:56c:53a9:da56 with SMTP id
 b7-20020a056402350700b0056c53a9da56ls243577edd.2.-pod-prod-02-eu; Tue, 02 Apr
 2024 23:56:13 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXhcw9wRzwBr3VtAnyCvLwa8Nywve+4tIE5g3MUz4qhAz0NoJ/RvTuAqjWLZAWx07iyEei7Spz4h8rnyLoOE9KlPIFhb/SabhNlOmKh+MtWOlWzTrU=
X-Received: by 2002:a50:d4d6:0:b0:56c:3b74:ea4 with SMTP id e22-20020a50d4d6000000b0056c3b740ea4mr1210776edj.21.1712127372642;
        Tue, 02 Apr 2024 23:56:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712127372; cv=none;
        d=google.com; s=arc-20160816;
        b=hMM9AMyu8oJyo6tROkRLcwnTSYVP2tXkr3MifUsAKMyisnUKMI9ST86KT5a9Qk+k5d
         MUKhFn2XyuPXD1Bpaz66eiClaumBetkoYN1VE5oQ/RI4B77CDTKY3y6noJQs/ctJPu7d
         3gnl/HdvtdJz06ppzIDP8gShF2spXOae6OoLbbTshUH+GnY+nwUmuh33zNZHmsf+HsDp
         bdZKtRxGN5v0u8bdmz4j8ljiCe2KGJWlOvP1ycN+Rq+pFRJho6uh60rY68fCh4Q3xDEk
         9Ktg8+ywz6Kal4gW91Z2cg2b3QBSlDdO9826Dh04gSUk7LrgNl3KoPzIL2I5vWW4i4c3
         gWMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature;
        bh=2JPKnv8ufKXjiY3Ji98K500DideLp43dhs8OiEWxtFk=;
        fh=9aauSyI5eQk5b4s5O16fFO5a6x/LXiZqBjzkmnuA6As=;
        b=SWTkga7ELWxo66X2pt5tN+OPi+TnMY3gQXSTA6vvTIXSiKrClUfHpk78y5rwzMvuJU
         ROaoGoTxPoFm7rV48TX20/qqKzhy2eP2yYvQPKZ6tyLcQEdmE8gY3jmyLYZ/gShW1guT
         5iqhWAIiqcAIc5Ts1TOtoq+xXCfRyjhZ0vyc02iiD8PFk8/acT7/Qfh1Dfjb84oNM4+1
         r/M+5VKnKm4SqjbrBunU7Fj21wHCTGhE76X5/JTgeP5X2OYGz0pX/2OX3tzvbPFym3Au
         BoBBgAPjW2c0jy4F42fW0SLmqjdPecyzFWp6YTNAkn1KiEopBlA0v0JF4pztOvIr/DjM
         uMbA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=JUOWiYhh;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519 header.b=kTNESN5D;
       spf=pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:1 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out1.suse.de (smtp-out1.suse.de. [2a07:de40:b251:101:10:150:64:1])
        by mx.google.com with ESMTPS id ek9-20020a056402370900b00568523720d7si6490296edb.584.2024.04.02.23.56.12
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 23:56:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:1 as permitted sender) client-ip=2a07:de40:b251:101:10:150:64:1;
Received: from imap2.dmz-prg2.suse.org (imap2.dmz-prg2.suse.org [10.150.64.98])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 44B4A35018;
	Wed,  3 Apr 2024 06:56:10 +0000 (UTC)
Received: from imap2.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap2.dmz-prg2.suse.org (Postfix) with ESMTPS id 87AA013357;
	Wed,  3 Apr 2024 06:56:07 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap2.dmz-prg2.suse.org with ESMTPSA
	id +EznHof9DGbeDAAAn2gu4w
	(envelope-from <hare@suse.de>); Wed, 03 Apr 2024 06:56:07 +0000
Message-ID: <c5e9ce6e-5137-4579-8895-256c85f7ac4b@suse.de>
Date: Wed, 3 Apr 2024 08:56:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 08/23] ufs-exynos: move setting the the dma
 alignment to the init method
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
 <20240402130645.653507-9-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <20240402130645.653507-9-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Spam-Score: -3.48
X-Spamd-Result: default: False [-3.48 / 50.00];
	 ARC_NA(0.00)[];
	 RCVD_VIA_SMTP_AUTH(0.00)[];
	 XM_UA_NO_VERSION(0.01)[];
	 FROM_HAS_DN(0.00)[];
	 TO_DN_SOME(0.00)[];
	 TO_MATCH_ENVRCPT_ALL(0.00)[];
	 BAYES_HAM(-2.19)[96.12%];
	 MIME_GOOD(-0.10)[text/plain];
	 NEURAL_HAM_LONG(-1.00)[-1.000];
	 RCVD_COUNT_THREE(0.00)[3];
	 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	 NEURAL_HAM_SHORT(-0.20)[-0.999];
	 RCPT_COUNT_TWELVE(0.00)[42];
	 DBL_BLOCKED_OPENRESOLVER(0.00)[lst.de:email,suse.de:email,acm.org:email,samsung.com:email];
	 FUZZY_BLOCKED(0.00)[rspamd.com];
	 FROM_EQ_ENVFROM(0.00)[];
	 MIME_TRACE(0.00)[0:+];
	 RCVD_TLS_ALL(0.00)[];
	 MID_RHS_MATCH_FROM(0.00)[]
X-Spam-Level: 
X-Spam-Flag: NO
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=JUOWiYhh;       dkim=neutral
 (no key) header.i=@suse.de header.s=susede2_ed25519 header.b=kTNESN5D;
       spf=pass (google.com: domain of hare@suse.de designates
 2a07:de40:b251:101:10:150:64:1 as permitted sender) smtp.mailfrom=hare@suse.de;
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

On 4/2/24 15:06, Christoph Hellwig wrote:
> Use the SCSI host's dma_alignment field and set it in ->init and remove
> the now unused config_scsi_dev method.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>
> Reviewed-by: Bart Van Assche <bvanassche@acm.org>
> Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
> ---
>   drivers/ufs/core/ufshcd.c     | 3 ---
>   drivers/ufs/host/ufs-exynos.c | 8 ++------
>   include/ufs/ufshcd.h          | 1 -
>   3 files changed, 2 insertions(+), 10 deletions(-)
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
one-eyed-alien.net/d/msgid/usb-storage/c5e9ce6e-5137-4579-8895-256c85f7ac4b=
%40suse.de.
