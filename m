Return-Path: <usb-storage+bncBCHZVHVFVMARBMUDWSYAMGQEQ5BK7NI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x546.google.com (mail-ed1-x546.google.com [IPv6:2a00:1450:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A6A8965BC
	for <lists+usb-storage@lfdr.de>; Wed,  3 Apr 2024 09:13:55 +0200 (CEST)
Received: by mail-ed1-x546.google.com with SMTP id 4fb4d7f45d1cf-56c0d3517desf575038a12.0
        for <lists+usb-storage@lfdr.de>; Wed, 03 Apr 2024 00:13:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712128435; cv=pass;
        d=google.com; s=arc-20160816;
        b=Rx7HwNK5va3skcoFwI4CYk/ZxmQQHnJjThRSC9vWdMYgqnVi0pRiEQ5Lks0o45Kq51
         My9k6R2WzNkGZbEzHj7hwff1yL0UXthURkAWHGaVIsoUigp8Skv4QUDSEHm3Piog62zQ
         eKY3y+7gctUw9iQpTWuSOQ/GWuoLKSHJfN5l94nbgBNx4/RkKq0dW+w05zp+/+7w5ZX0
         tVvi3DDxpl9PK2+E9KpV3I+/x/qmwjrNtCQQR5fRP/lE+C/NOAdyRfBZpGnJ8wvtXE0w
         KJyS5PbWJqY50uQlnE9KRYShA22frq+Gf713i0NtvY7wJp78doXoERF0bn2p5tw8YvZG
         ApJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=lCnrX3e2rZvsylUjiLsUFT55IxVHL/ff9k/0H5WOf1o=;
        fh=EZxh/vFBztKWYZQ/mzwZoAjkTMu+kxXvC9/xq12xGbc=;
        b=dC0HglyKvJVVe7lR9UDaNwYHGevyuPSAOOoBowOImhz+4fBRMceN8JiiAH1PEDuB5r
         7fjsWTwLuvfzJgzlQWSu3wGHpTBntLkdyBbORr7xjcYA9NwiiEOQTQxZcERLeBZc6yXj
         bmrZVmGJxz9det33amM9mVdhjbgGXTYCV67NelPxYbvdgDYVH2Nudd3qWVmZncqhhjdv
         qAdnGp/s46C4YSystiSrUA3NsJkHWQ4yxpu5haaf1PmDvKn/j8Lhn0rpfuqMn2OjtUEh
         UGN1MFWSetyGeLidWbkTcj7zPS6WvI3IsFqF+62KOoIvEgmwpATB64+Dn1mOAGgByiZ6
         +UQQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=ZOHVXqzG;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:2 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712128435; x=1712733235; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=lCnrX3e2rZvsylUjiLsUFT55IxVHL/ff9k/0H5WOf1o=;
        b=RngqZWhRbTt52mGI9HpqBGelC3vEZOrb1/wjk7kYT+Pui+M2cy1t/OkhuvvdkHTSs1
         DIpocLUX52hVW5t2Q5PKUIgLGj6uUVokgofk2XtH2R3i99Z2TuPqn4sqVEWYtiu3U9Jh
         pcu9J4vN47rPKqseAUPJ1It0nvgmvB5L5LjOY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712128435; x=1712733235;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lCnrX3e2rZvsylUjiLsUFT55IxVHL/ff9k/0H5WOf1o=;
        b=VXjY4t80Rrr6PKVeqBrAQDjQSwrTXJC6rhJ3tNMzWAtVvvhhKSniJBAyr0/O105HgU
         2UrvY7u+d1M7xqgnDF1obm4H36zYzoT+JP/2P+v5WWGN0uTydzdtwCk5WcPJ+T+mFeDt
         34VHZIijERJ55+tXCQSkG9UHjNLzVRezoitIDAY/pKAHcni9JPnDS4Xb5OCjpiS5LQai
         yUnEUZP7K00lU51EhEMHoGILxmgLPB5/5lmiOkV7IwRQmKVeifJpw4ortg4gKOyEOgkK
         qXrg8zqHE4Nr/I2orIeA2X+bboQC95spnAZWmXu6iKTw8oiwMoon/BbhXDw4wYvim1xU
         9LEg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUknGsOv32df8VRnd2v96DqPYTcv/WJlW5xOebvw+tmIrfHJWjBvda7sYIRu8ZPaE8FB916eeiTfmescOOpZLnWpQbCQupeNxMm
X-Gm-Message-State: AOJu0YznE+wdQK0fjSg2z1Zw6JmgSFHzhFoEBBPBlSKnFKrPwK0VFLFZ
	6LT2hv6PBT/8y+ied3Cq2XiGIW0LbI1lVUpElAuquvXAJEyqvaYPF29CHB/e/YY=
X-Google-Smtp-Source: AGHT+IEKodvi+fPVTBrL+t3r4JnxPJ5UAUcR6rmZCGQ3d8wMBku3Ja3nntVTr06rpqghwCU1gs3O4Q==
X-Received: by 2002:a50:bb65:0:b0:56b:d013:a67e with SMTP id y92-20020a50bb65000000b0056bd013a67emr1597152ede.18.1712128435022;
        Wed, 03 Apr 2024 00:13:55 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:268a:b0:56c:4cab:8b77 with SMTP id
 w10-20020a056402268a00b0056c4cab8b77ls830539edd.2.-pod-prod-00-eu; Wed, 03
 Apr 2024 00:13:53 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXmMaG1x8eG3S1PVrOmhgWHdoKpEy7U7IaHchBi5xKyG5bf68Ial+ur47f7N//xmfc9aVuQU9rsvz32WFz5x5fkauKmNaTf93z35hQ8jJ1Dj0oNnaA=
X-Received: by 2002:a50:c34c:0:b0:568:b0f4:fe69 with SMTP id q12-20020a50c34c000000b00568b0f4fe69mr1500082edb.12.1712128426648;
        Wed, 03 Apr 2024 00:13:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712128426; cv=none;
        d=google.com; s=arc-20160816;
        b=pAU9v0AX6q6m8j6n60wzElyP3F7lJg1zRwtwqmc+gZWxpLydGR5C0iAhptVm1p2TQu
         DzxGs09cVTZvcAifIQ1wV50rLscHmvo/fFIAAHE2HSAARRZvNuxCuHcyG7bKxOPIFzjw
         WhqV7A564HGJrCxtuQlPqlUwMJmS5Nf8I7MPwzRjc5h5xqfNQ6AM1PZGGOshpMDaeHvJ
         c5R/7023UVbJAfnP65l9GkWU/etSRHwPbB3G6jvHqz2wDtAYd738H8tv3iAdtnRNkgeQ
         VnV0Ay7WHZna+J3kKxrTfKKebaLfPEoa5TnACoJH9DyO0M3+lRVrkzlLmb+IfcTM93C3
         p4Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature;
        bh=x5IclVmVI3vGrTCk3FjlRtdI62rFLgjFfE0wC3RdXXI=;
        fh=9aauSyI5eQk5b4s5O16fFO5a6x/LXiZqBjzkmnuA6As=;
        b=HhnFanUsTrt4yON3DLZbJoBlyv60cWW6iJ+HgrLwUiARxBPZjVqVGojffpz1tkiWi8
         VDE6GUStiaawfu0dFL2cMIl9KovLA+gktOPUAnzskg3e4S5hx5R/2j4keXGMrQ1FCtn4
         9okc2Ya49cUVkRkJr5fxiDxDH1wIZ5tyQF7PX7xafDyC5WahP1ctx+bIll4lPnq8tUAl
         qHnfRH+N91tL5PjRBmRazPnFxL+Umjmg7Sfszn098BOBXDXguw4YokWyK88UUKqyfcS0
         CRrXD5erfO/jExD3Qve6GDhkmCQfJiXLufS5jcoVk/d49dAnfDHTrJd7upI5BcaXo/tI
         GBlg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=ZOHVXqzG;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:2 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [2a07:de40:b251:101:10:150:64:2])
        by mx.google.com with ESMTPS id g18-20020a056402321200b0056dfa71b2f5si847497eda.342.2024.04.03.00.13.46
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 00:13:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:2 as permitted sender) client-ip=2a07:de40:b251:101:10:150:64:2;
Received: from imap2.dmz-prg2.suse.org (imap2.dmz-prg2.suse.org [10.150.64.98])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 33A015C916;
	Wed,  3 Apr 2024 07:13:46 +0000 (UTC)
Received: from imap2.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap2.dmz-prg2.suse.org (Postfix) with ESMTPS id 4407613357;
	Wed,  3 Apr 2024 07:13:43 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap2.dmz-prg2.suse.org with ESMTPSA
	id 2DwrC6cBDWYlEQAAn2gu4w
	(envelope-from <hare@suse.de>); Wed, 03 Apr 2024 07:13:43 +0000
Message-ID: <60d33c48-e06d-496d-9a31-40994ad31d7b@suse.de>
Date: Wed, 3 Apr 2024 09:13:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 18/23] sata_nv: switch to using ->device_configure
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
 <20240402130645.653507-19-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <20240402130645.653507-19-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Spam-Score: -2.55
X-Spamd-Result: default: False [-2.55 / 50.00];
	 ARC_NA(0.00)[];
	 RCVD_VIA_SMTP_AUTH(0.00)[];
	 XM_UA_NO_VERSION(0.01)[];
	 FROM_HAS_DN(0.00)[];
	 TO_DN_SOME(0.00)[];
	 TO_MATCH_ENVRCPT_ALL(0.00)[];
	 BAYES_HAM(-1.26)[89.70%];
	 MIME_GOOD(-0.10)[text/plain];
	 NEURAL_HAM_LONG(-1.00)[-1.000];
	 RCVD_COUNT_THREE(0.00)[3];
	 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	 NEURAL_HAM_SHORT(-0.20)[-0.999];
	 RCPT_COUNT_TWELVE(0.00)[42];
	 DBL_BLOCKED_OPENRESOLVER(0.00)[lst.de:email,suse.de:email];
	 FUZZY_BLOCKED(0.00)[rspamd.com];
	 FROM_EQ_ENVFROM(0.00)[];
	 MIME_TRACE(0.00)[0:+];
	 RCVD_TLS_ALL(0.00)[];
	 MID_RHS_MATCH_FROM(0.00)[]
X-Spam-Level: 
X-Spam-Flag: NO
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=ZOHVXqzG;       dkim=neutral
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

On 4/2/24 15:06, Christoph Hellwig wrote:
> Switch to the ->device_configure method instead of ->slave_configure
> and update the block limits on the passed in queue_limits instead
> of using the per-limit accessors.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Acked-by: Damien Le Moal <dlemoal@kernel.org>
> ---
>   drivers/ata/sata_nv.c | 20 ++++++++++++--------
>   1 file changed, 12 insertions(+), 8 deletions(-)
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
one-eyed-alien.net/d/msgid/usb-storage/60d33c48-e06d-496d-9a31-40994ad31d7b=
%40suse.de.
