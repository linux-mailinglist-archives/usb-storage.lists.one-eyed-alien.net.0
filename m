Return-Path: <usb-storage+bncBCHZVHVFVMARBF4CWSYAMGQEA25EDLY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x548.google.com (mail-ed1-x548.google.com [IPv6:2a00:1450:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id 7553F89658E
	for <lists+usb-storage@lfdr.de>; Wed,  3 Apr 2024 09:11:20 +0200 (CEST)
Received: by mail-ed1-x548.google.com with SMTP id 4fb4d7f45d1cf-56c137aef05sf2164350a12.1
        for <lists+usb-storage@lfdr.de>; Wed, 03 Apr 2024 00:11:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712128280; cv=pass;
        d=google.com; s=arc-20160816;
        b=W2FD+OF3caUB9uUwdoos2+6L9UkPAiYZBVgRoyO/HRBAvIYAobjWBU2OPQVYoxZ8Wy
         345dPert62KCWnUXclvwT7e2UAEpQgTmmixGSRNX5yMhsQ/KCG1eEc9E02+G9x6jnUgr
         U7GtFaN3g0WMCZ9wBlM0uBUQ6tFJLQsjNLEsYK6QKMrMywWCdx6mJNFdO4hK9YghGWpZ
         GQdlCdYX/i2X81H5LpK0DEsdzxPvWci2ajS1AQPJay3ZpmlY2d9DY+PQ9mppR6/H2FcX
         36xGDcDQWro22/PARzyqxcnNeJefKxqa+xIYFYObuARMOr2WBeI4vTp/NXhkrm/0DYAw
         i40Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=JvUBSby0bML/mARMprVz4GCxs84GDnu7mwkp6KVs27s=;
        fh=jD+z7CJed2USnfPaE7xV4s/GBziCihtFPLeUSNHi6Ck=;
        b=BvbiuckZRpUG6Nc3EDKD3uLoU+eqW+oXqWtfl23TVTBn8qA8AOqPe8Efgvl8S61KzK
         3Dig6BXA3f20m4eSqbfFurts53UScPeP7tL2WtFN3z3p0CfHpJIebQ2NgKA7CWCHvZlH
         4FsvimdcCZJSL/ZPCuvUoXMPyKV8VQcTgcPItifF0Hk+UFSBA+8d7uvYNRdDCov3gyVF
         8ACH7lhYrt5uJnVuCwncKg3zBP4te4VT1nStAEsICo6UnkPCzD0y5VLg1e2F2lsxPNJk
         onzP+rzkCttE/xNjqWERMgmvI4Mchw2CcNnctiBt/MeqH+zwqErO56vMNgWkuR2Xp5b7
         MdOA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=AOq76wJC;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.223.131 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712128280; x=1712733080; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=JvUBSby0bML/mARMprVz4GCxs84GDnu7mwkp6KVs27s=;
        b=eENcQggGJF1JPb5Diz/do2KQx4QE/WlcbPvWnJq8rHAeOCGdMiYVG+lmxuKqNMpJAO
         x++kZhOdgnp11fAJ2uUXjPMGirgdNXhMFTtZnXHDNBVWNT9F+XAn820M4LoOCVodqs/+
         cTl8GP8x9fU/chT5yC/k2YU+NbOlk556j4ZkQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712128280; x=1712733080;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JvUBSby0bML/mARMprVz4GCxs84GDnu7mwkp6KVs27s=;
        b=v0BumdqPAMHOfxDy5gv9ZmiQAqMI/W4AFzoEh45udFqkP0BfshgeVJe7fbJO6AEN18
         x6FP3/zFvrLuh+cWT79yOCGikhZpDVQuqp2nGlBEBV6s+n+uGoIZBm3kzdhjExFDIe6P
         xJZBSJZrjp58/4LFLCO3QaFIw2owEzgEiOOCrpuq/zD6AkHEDc3GpDa+2o4B10EN39OF
         b5INJc5WxmcXR7gt5jib8mFLFnTWCfN5UA2pZQywnFqRCvuNn4w+Kux2OcqpfF45CTQc
         wVJeOin8SO13nmS3MYVjsTD2EhaZhpVKVGlwj+eZb9Z224IVYrk6SLx0/JKbm7mxKUnn
         ogJQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCU1L41YeIIibgmBEGM1CeeXhDwJ8mH84B3bHra/2psNhWGiZ3qydDfmOVqD2jlpMLzR/BKitdzEa6TpYuCGqnBAeegDxS7SSIol
X-Gm-Message-State: AOJu0Yz+rsb2ytToYVSOwi0eVVFURvcj723i1cWwZkljcQ7XZKjMGMgr
	9ci37ZkboqRcVrEINzSb7sr7JEyfGKNa17BFrgkio1TB5K4h5xcf6y8bJjOR2cE=
X-Google-Smtp-Source: AGHT+IEQadxsEEDH7jGt8A/ZEEbWeyf4VGNIKFjCCiYgnlP29aTg3jyhOMkbZFgYzBEBp1olNeWffQ==
X-Received: by 2002:a50:baa4:0:b0:56e:5d4:92bb with SMTP id x33-20020a50baa4000000b0056e05d492bbmr674484ede.9.1712128280067;
        Wed, 03 Apr 2024 00:11:20 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:3588:b0:56e:997:fbc9 with SMTP id
 y8-20020a056402358800b0056e0997fbc9ls106073edc.1.-pod-prod-04-eu; Wed, 03 Apr
 2024 00:11:18 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUg43XAOvv8EofBwDOkLdqWidzxa+fJFIOD0W31vTkxjY2HK1Oait2ryCydgIcumcyph7JsyNZ7/57s4zxkCJeKS8BEXYq617cDW8BB5hzk0RgJhNI=
X-Received: by 2002:a17:906:b151:b0:a46:5d40:eb97 with SMTP id bt17-20020a170906b15100b00a465d40eb97mr8126244ejb.70.1712128278365;
        Wed, 03 Apr 2024 00:11:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712128278; cv=none;
        d=google.com; s=arc-20160816;
        b=YmbLCtjV0dQGyu9yrYC5eoCyR12G//y8K5rMdLBF/g0sCm9xQGDD8m2iaXKvtD7LcX
         Bev2mTpufTSijr9VdsG/fT170phSuYcqezoX4b1jH5aEdnmGoEz/CV9pEeykbZndkCJ4
         ay4ZDQkSpDgJNqNmJxw5dcCGj58laHzc9q8sMjcrofKz8IG3qPyZgqlFt6JsHtUDgRh/
         /uZZisOeOk6DdBXdJGUi9yK2NfLSg5Jsjp0W1mnZ9w1diPvAf3J269lj3l5BsHFpXJJZ
         DU+J9h7GNM37eBKRCh+Maq7Y6IEXOeyTPVGgDaY4v2kWsTMYqONRnz04PWCE3Zs67XuX
         muAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature;
        bh=LieroKXVIVhpGB2ASDwvKgajBvB0/LVr2P2DP/J6rKs=;
        fh=9aauSyI5eQk5b4s5O16fFO5a6x/LXiZqBjzkmnuA6As=;
        b=Bsqeb4wIor0/frsGY8s9FbgOQpU+AcP9P/uQfZK6w4e41P078kerC7EmNizhcvkEP/
         YogIEt7M3rup6JfTcpDFSboUi0H25qkroiMOSFJQ4ZFnR3TfmO24k9VOtdFZiPqkQiV+
         vVoiLP9bqDypJz9EvNJ4Ku7m/ePgcjd7rEZv0mVPuOnElrp2MvVg8kiOxUqHHi0Y+Kwn
         ICHbWrROLh26c9m1EGQ5Apg4h2e0J9mbPB29XuTXuh88/qUGoHFrNLn79uDXXLLio47E
         CGbusi0BwXsfzXNUYyPTLzLQl5lHDznOU6H/Aumh0p/vy0Pofw1AAOI+2Uozgl7ug1fH
         G41w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=AOq76wJC;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.223.131 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [195.135.223.131])
        by mx.google.com with ESMTPS id ht18-20020a170907609200b00a4e4e405575si4209932ejc.384.2024.04.03.00.11.18
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 00:11:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.223.131 as permitted sender) client-ip=195.135.223.131;
Received: from imap2.dmz-prg2.suse.org (imap2.dmz-prg2.suse.org [10.150.64.98])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id D23025C8F0;
	Wed,  3 Apr 2024 07:11:17 +0000 (UTC)
Received: from imap2.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap2.dmz-prg2.suse.org (Postfix) with ESMTPS id BC66C13357;
	Wed,  3 Apr 2024 07:11:14 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap2.dmz-prg2.suse.org with ESMTPSA
	id uLREKxIBDWYlEQAAn2gu4w
	(envelope-from <hare@suse.de>); Wed, 03 Apr 2024 07:11:14 +0000
Message-ID: <3cdbcf8c-a407-4594-a651-3f893c56baed@suse.de>
Date: Wed, 3 Apr 2024 09:11:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 15/23] ipr: switch to using ->device_configure
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
 <20240402130645.653507-16-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <20240402130645.653507-16-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Spam-Score: -2.92
X-Spamd-Result: default: False [-2.92 / 50.00];
	 RCVD_VIA_SMTP_AUTH(0.00)[];
	 XM_UA_NO_VERSION(0.01)[];
	 TO_DN_SOME(0.00)[];
	 RCVD_COUNT_THREE(0.00)[3];
	 NEURAL_HAM_SHORT(-0.20)[-0.999];
	 FROM_EQ_ENVFROM(0.00)[];
	 MIME_TRACE(0.00)[0:+];
	 MID_RHS_MATCH_FROM(0.00)[];
	 BAYES_HAM(-1.64)[92.69%];
	 ARC_NA(0.00)[];
	 FROM_HAS_DN(0.00)[];
	 TO_MATCH_ENVRCPT_ALL(0.00)[];
	 NEURAL_HAM_LONG(-1.00)[-1.000];
	 MIME_GOOD(-0.10)[text/plain];
	 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	 RCPT_COUNT_TWELVE(0.00)[42];
	 DBL_BLOCKED_OPENRESOLVER(0.00)[lst.de:email,suse.de:email];
	 FUZZY_BLOCKED(0.00)[rspamd.com];
	 RCVD_TLS_ALL(0.00)[]
X-Spam-Level: 
X-Spam-Flag: NO
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=AOq76wJC;       dkim=neutral
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
> Switch to the ->device_configure method instead of ->slave_configure
> and update the block limits on the passed in queue_limits instead
> of using the per-limit accessors.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
> ---
>   drivers/scsi/ipr.c | 10 ++++++----
>   1 file changed, 6 insertions(+), 4 deletions(-)
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
one-eyed-alien.net/d/msgid/usb-storage/3cdbcf8c-a407-4594-a651-3f893c56baed=
%40suse.de.
