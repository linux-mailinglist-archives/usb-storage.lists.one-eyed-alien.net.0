Return-Path: <usb-storage+bncBCHZVHVFVMARB5PVWOYAMGQE6SN6L3Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x547.google.com (mail-ed1-x547.google.com [IPv6:2a00:1450:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id 315C48964B6
	for <lists+usb-storage@lfdr.de>; Wed,  3 Apr 2024 08:45:10 +0200 (CEST)
Received: by mail-ed1-x547.google.com with SMTP id 4fb4d7f45d1cf-56dc338cdfdsf1302369a12.1
        for <lists+usb-storage@lfdr.de>; Tue, 02 Apr 2024 23:45:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712126710; cv=pass;
        d=google.com; s=arc-20160816;
        b=xW/mCuUXHt6nJj+CJ9fTWKiANELbrGA3qesO+fpWTkFe4MRprH35SvU0gUBn2szecw
         zGhpSk14W3tb02FfT25oAA/Xon1l7P5aIzKVOeOlA3+fMEO97VyMIOtIdrNkNu0KofbU
         9lkqKlKIfkZNgCmArEtlfCbYSI3N9uzVP3sO6Di2iAuL4V0vkS82Lx8cS3ctNfsqhrXU
         ISSn4JXhoyiIiJ+Oo7ASwvdCNVAi/LvELPzMlzSk4EPUoL1MMyRHF2uwXvymfugf/9OX
         r+1Mt/LxAMH/W6FiwNhBMpvTpQ8j7djdx/DsR7IcRNgEMhqV26D7qNfl2gGa5N63CgTC
         rKRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=a+ATe1ol0MWAL10o6akgnnbpH3kF4hQBEF35CX1szcQ=;
        fh=z5LhKzEw/gA3oOPd/Fzkr2NFZVBLUzYuL9qqrlFVrX4=;
        b=F+TkzHFCvBfp0QSPfYf+csmYSl7IN0JMCGI2a+u+DPD8fXfDUQsww3ulB+Z+Cjk42n
         xzs0nimBktQU5y/0QFdLfk2QZ471sfs4qNlH21E0TZ2CNJnRUC9Zzmdbpo/Yl5y1sROU
         VucpQCBIgbnYVHlfq7memm8zSdfUTENJHsR8rremJEfYubPFHqptp748yrOcGgMbzz4W
         AP4UmchsdI49Sop6N+djRcfSJgpE3fnZQt5nB0yewSJh9zyl6NNUjLGm/d0UrOPbcAqx
         pwFui7Ir5ETel+AUUbJBYcYCif+70zh/Am04Yu/J9ChLumy9SbRWFEaKC0VGzYsaJ2xu
         c4Dw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=tVS3D1pq;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.223.131 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712126710; x=1712731510; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=a+ATe1ol0MWAL10o6akgnnbpH3kF4hQBEF35CX1szcQ=;
        b=bLJJWpbT5iC8WCMNi1jm6CEN3iWPp4pmkND0VE6wqy1KBzmoHHmxws1J+kdNt0Fqu2
         vgcNDE5zEnRUDEiEDg7vD5mShlUQa6Agih4nleSKbm5QTwpPbF2P5KWDA4lnwdRrhub8
         vhQUofIHO0VM1HF90B+QQKnbR0lEBLXcO6C48=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712126710; x=1712731510;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a+ATe1ol0MWAL10o6akgnnbpH3kF4hQBEF35CX1szcQ=;
        b=M4vIlArRSbyQ7oYN6KVguUJQFimY8AHDzj/IfWy6MD5ZbTMIj/E/R1JS27OApyN34m
         Fn83E7Ua01saysJ+g3TPUgDurJtDGhPCtJ2YH4t5mYAq8hNPKEeDCCi0rOJ8ca2ISeXc
         KeHpxRpKJTJyZR+fZmMDIuYJWse3W+bQDfGJoiiyjM/TDCthATJ4KoS7TSvqJQiTy7LI
         VfgRzHytTkh3BugaiyvWRpzLtFhDZHFHVsS6nSFHkxO+jNsaPeUF8CCWaJ/ZK3sg73LE
         hGLE2tgK9bWpe6EZ1+K0QjWH6qusXFZIxEKSO/ILbZZyiLEABIpuax52+VycyibngTjc
         1X9w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUkm14g7/MFuClf3e55kYzDv8h+CXSOZE9sC+cqulvAfhPN8FoMh2O6CXQQOYooG/Ge2ZZgpDqPPUAQLbYrB3ucarM/cu17yy1e
X-Gm-Message-State: AOJu0YyEs9R+HCPsSyOmSUnJMLJA1zE0NoRmWwR4+3XyQ6wiEybHvpFW
	aj7KU9uyBxxU7bH/aO6LgLxqChmIGoeAXowuyJWX4iHTJxSVb/39aoS04U9n4xw=
X-Google-Smtp-Source: AGHT+IEDwi311vam/F7GGChsvh5zBhUk82TgjGs93TB+ITamNM9DVJ5pQB0DFk3Q0TekCTO0YSP6YA==
X-Received: by 2002:a50:9542:0:b0:56c:4f5:7227 with SMTP id v2-20020a509542000000b0056c04f57227mr7438704eda.41.1712126709565;
        Tue, 02 Apr 2024 23:45:09 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:3588:b0:56e:997:fbd8 with SMTP id
 y8-20020a056402358800b0056e0997fbd8ls98324edc.1.-pod-prod-09-eu; Tue, 02 Apr
 2024 23:45:08 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUsMV0Y/LD3mdfF/URPjc5kW4ueftN1dFBGafDkP8xk3tWo9JiskNwZcncTHD9e0o0gnClrOl1FmvS4SRa9E2vxBhKUkzx899PxfOTcRJSlr20fOI4=
X-Received: by 2002:a50:ba8e:0:b0:56d:c548:6af8 with SMTP id x14-20020a50ba8e000000b0056dc5486af8mr7508791ede.9.1712126707617;
        Tue, 02 Apr 2024 23:45:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712126707; cv=none;
        d=google.com; s=arc-20160816;
        b=RnmjJTbUoqPS/q1CZ5ePe4/RaytXz1MuBhTHov1O6VYARxrOxGbwh5cHzjx7+llyZr
         TAe+TZYpI2B0h+RSOSWVgalPEbpdYLek5J4gY6QuEDAfhUQ6PAucQGl+1UbC+xpM5VTu
         oiQHc3HsTjk3cAX9xmgrVNMZGDbXotMLa8hSn0im+GpL485KWA3zZml5d3Zc+v2pnk0q
         6V/hYNVCof4cxSCT1+OhNViwLgBAfTljmoAIlLLQSNImywRhC6+sdWGJ41P4cIM3oKzo
         9f288iI7GIO8a3Ofre5Q8A1cLX48odJZJpAmqVklthmxQmISGMrvYgr5mqFrD8DZVTFo
         OMrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature;
        bh=GoXPoAqyZWmKcmyarXlQ8kclO+8GvosQ+cJjkyThP0E=;
        fh=9aauSyI5eQk5b4s5O16fFO5a6x/LXiZqBjzkmnuA6As=;
        b=MhjfX+7Bpeoh3aD0WtGLKquTyXwOJuaUxZatsQOsK2d3hRj59YwC+biD6nloL2WBZ9
         AnSxHdBjcp7p5Cfs2AD/gPPOLiUDSHOjyavL/5dPSISyA0cy0avDx2pk/PnMqyTYSD83
         592LbgVNzC4QuPjEoFsCuWtffSSI9PihRNgDmwKjfm+co39l4xvC7JL4265iOuCXYG9w
         oWG+gDunIRgYESajf5rjnsqpYkRW9JYyVsE9dklId5hwVE9fHOBSm8DwPXx1aTlt10fx
         m5hST/ATsFnGie+6CSEpHI5ExrsTfPtmI2LTGGpjjFJC1NmVXRvWKsQB8y2IQ7L/jtzH
         0+KQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=tVS3D1pq;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.223.131 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [195.135.223.131])
        by mx.google.com with ESMTPS id c15-20020a05640227cf00b005688b0fe67esi6515341ede.259.2024.04.02.23.45.07
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 23:45:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.223.131 as permitted sender) client-ip=195.135.223.131;
Received: from imap2.dmz-prg2.suse.org (imap2.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:98])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 320F85C8E4;
	Wed,  3 Apr 2024 06:45:07 +0000 (UTC)
Received: from imap2.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap2.dmz-prg2.suse.org (Postfix) with ESMTPS id B09D613357;
	Wed,  3 Apr 2024 06:45:03 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap2.dmz-prg2.suse.org with ESMTPSA
	id WLF6Ju/6DGb8CAAAn2gu4w
	(envelope-from <hare@suse.de>); Wed, 03 Apr 2024 06:45:03 +0000
Message-ID: <ba789f1c-d822-492b-bd73-22b6e003c930@suse.de>
Date: Wed, 3 Apr 2024 08:45:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 01/23] block: add a helper to cancel atomic
 queue limit updates
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
 <20240402130645.653507-2-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <20240402130645.653507-2-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: rspamd2.dmz-prg2.suse.org
X-Spam-Flag: NO
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.50 / 50.00];
	BAYES_HAM(-0.20)[71.28%];
	NEURAL_HAM_SHORT(-0.20)[-0.993];
	MIME_GOOD(-0.10)[text/plain];
	MX_GOOD(-0.01)[];
	XM_UA_NO_VERSION(0.01)[];
	FUZZY_BLOCKED(0.00)[rspamd.com];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:104:10:150:64:98:from];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[42];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	SPAMHAUS_XBL(0.00)[2a07:de40:b281:104:10:150:64:98:from];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	R_DKIM_NA(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:106:10:150:64:167:received];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[imap2.dmz-prg2.suse.org:rdns,imap2.dmz-prg2.suse.org:helo,suse.de:email]
X-Spam-Level: 
X-Spam-Score: -0.50
X-Spamd-Bar: /
X-Rspamd-Queue-Id: 320F85C8E4
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=tVS3D1pq;       dkim=neutral
 (no key) header.i=@suse.de header.s=susede2_ed25519;       spf=pass
 (google.com: domain of hare@suse.de designates 195.135.223.131 as permitted
 sender) smtp.mailfrom=hare@suse.de;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=suse.de
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
> Drivers might have to perform complex actions to determine queue limits,
> and those might fail.  Add a helper to cancel a queue limit update
> that can be called in those cases.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   include/linux/blkdev.h | 13 +++++++++++++
>   1 file changed, 13 insertions(+)
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
one-eyed-alien.net/d/msgid/usb-storage/ba789f1c-d822-492b-bd73-22b6e003c930=
%40suse.de.
