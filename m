Return-Path: <usb-storage+bncBCHZVHVFVMARBXXWWOYAMGQE42YWWUA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x545.google.com (mail-ed1-x545.google.com [IPv6:2a00:1450:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E4E8964CE
	for <lists+usb-storage@lfdr.de>; Wed,  3 Apr 2024 08:46:54 +0200 (CEST)
Received: by mail-ed1-x545.google.com with SMTP id 4fb4d7f45d1cf-56c137aef05sf2152487a12.1
        for <lists+usb-storage@lfdr.de>; Tue, 02 Apr 2024 23:46:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712126814; cv=pass;
        d=google.com; s=arc-20160816;
        b=bKtTvELoPSt70JsPNsTDoNv3GM2bTtJ6eApS4y2olb5lYFTOpamBvU5+fG6thxzMRP
         xUXkq9FVAw96yPoQxhkC6Bq+mhRznENjiPNC54Z7qUL794nehe04OfJM2la1j1Bu+2au
         X+toXLkVZKf9g3pWqi1lhycTvKFaogP6PZIDwZZS95rNKyEzSdVZamWF6PlXxKfLs1ht
         dIowzlbzjDp8yvQetbRoCr3FnomSdVJNXdugxKm1xY8l7Xfn5zUHkSBAZBYgADHOP/ns
         rb4uVTzten7VGu4e9lhh4Q5NnhCeu3BxSrN3/hNdt5yJgeVrZMLSavWYgfp6fy240i25
         Jq3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=kCAcBLQQvL1064x1Bom+/H/SnDJCWChO3x5Mnbc9OV8=;
        fh=s0tWXmye6/DPM1rJIkZ7+qP2WNMDG7CZo8A/lurlL7I=;
        b=0SXOp9AoJNi91Gq+nYf7KJZ9vlVZk8FLcSBVvWIZ8qHdEDe4ovLkjlJ49RqsEP8qq+
         FTDKFPjjP2EKWn/ypvDvr2IZpOrqB3l1POomp4BT8fjK7KX5vHkczOJUFHN1ufuzNq9N
         +UXs7HioOKJ0Fc5cgF09dctCIpd7nZHd7VYmWb8LiBcExKVL6ovBDhFrNBF65LqyJlsV
         CUCmS66BVXUT23kau8HJbJAn1cckjzWnUOq4IczTSzAJbjVOn3xxbibXVO8SbpbMa6RI
         r3ICKH59BCkUPlmQI/u+2xzx3d/27G5qL5gaRozwcAqAbKS1INc2p4xWEUOixJ+5DLDf
         m/bg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=1w8IDFpB;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:2 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712126814; x=1712731614; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=kCAcBLQQvL1064x1Bom+/H/SnDJCWChO3x5Mnbc9OV8=;
        b=H3rihhsYVXW6FAcD9AQfrAIqRvF30ui/gENR31CWEp727fjx24n3op4GG9mZYZ121K
         DGdAZAEhAUgn5KbQR+yKPjnQZmDAmE0JfYg1stwkm8VXZSV7w7gnRPHdQI55tfZ68/LA
         ZwHlv9PZMgnUHO1XT3M2qDv4uhM17GlWB4gHM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712126814; x=1712731614;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kCAcBLQQvL1064x1Bom+/H/SnDJCWChO3x5Mnbc9OV8=;
        b=YpVpiYgMMEdxk0WdWwBlo82ROnSTr1S2tgyUpnn9wdNaIC/n06yI1r2amcygN5dC8c
         PDqp2lPvYu5yJfVU1MO8Gnr4K9829I1cJd2xsLEZJP8bduWv4GZ1IRz4iA3E7a9osDYz
         5MN37CO5B257pQyclkjBrIwkCPS3FJfBETbUxtbMw+SHDdmdrSnl5PhTrHXy4QDp/Rhy
         fiyrPQBO2SMmp9LieIRyoJhEF7pnmhT8AdXQU4E7A7oCahqviKeBgOVEcbXsOGRJ6R5R
         oyjXaNSsX4a0ucCWqyBqJ2Su/Gx/vegBtRD1Krgx4OGkg64ppcBZaeJO9kuXS3VQ32lb
         BLOg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWUDTfBClYShiMh+ejp+Ff0DFcNHXGNppmLRVPQBVImWYCjz9aD5ujfi1VxWo4sF1ae3LUYsP67uneJicWsHVjoNj4U3sTm9B7M
X-Gm-Message-State: AOJu0YzRmHOSmg/Wc6ONfA2eN3sLYaEV2UmrlxSdzISp4tLuDo5R3Nrj
	O/64Xz2ageNSAF7ophGAgRokFzi8v7QiB6uBnyKvHX9kQIoRLMTyb+CkzYjSh+s=
X-Google-Smtp-Source: AGHT+IFmfci+iZHUNIczqT1K96JvPNeMf8GvMDFZ+iC8l83qMWnDD0fBSqAM6sHP9eB8dHexj3sdfg==
X-Received: by 2002:a05:6402:1ed4:b0:566:13a2:3008 with SMTP id g20-20020a0564021ed400b0056613a23008mr10854133edg.6.1712126814449;
        Tue, 02 Apr 2024 23:46:54 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:4311:b0:56d:e746:ab95 with SMTP id
 m17-20020a056402431100b0056de746ab95ls857812edc.2.-pod-prod-04-eu; Tue, 02
 Apr 2024 23:46:53 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW8Gn2JZEILyYxtjJh0Kslue2TyAAdyGft+qEz9qHaG/7D1hRNUB4rpj1dFOSkO1wH7h0aoYU6QkGRGOWLPWBUIFMOPXvMqP3AEloyK24ZjrblLyh8=
X-Received: by 2002:a17:906:2793:b0:a46:a8ba:60b3 with SMTP id j19-20020a170906279300b00a46a8ba60b3mr9536314ejc.37.1712126812757;
        Tue, 02 Apr 2024 23:46:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712126812; cv=none;
        d=google.com; s=arc-20160816;
        b=S/1ev8sukwg5hdHpAH7A1ypV4QEQLIKdIpjj9cwLwV7wyPHn0rIgwF14atUti5gxsr
         eQxZiPYldqJyeko9fNILTwXw73QofzwxM+8yBZh9q8MLl0kBqgSjA0Zulrdwwdz0VPhS
         seoX8hj6N+jai5Oj+eNec4dwZoV7oYDRKHUT+Ua0ySprm0FouV1AGqCoLI3yAf4Te3jl
         e5JFyvOVQMp4NnMbv6ueAcD5CsecRphlLtlBCwpvzFN9NKPEQabYsNRfwdxFjNO6lL44
         panrfvx/xu5D1eh4sVOO5PUCRKZr3jG1u4WvJLsXh7qbVELqbXw59BWHA6TQR6IHKxDq
         FQWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature;
        bh=OGKURyfC53qXCREde1d7M/ZCGvB8l1Q0eDVyJ51sZFA=;
        fh=9aauSyI5eQk5b4s5O16fFO5a6x/LXiZqBjzkmnuA6As=;
        b=voOm+skcl/CflgmTnVWSf7o3omFnarjIQNzrPzhW2g8Sk890A3SAoQgbl1GfFuJIrL
         1cY5vK45RZlaX1tQGmgt9+Iy/TmmwK/7oXAzSWq/C2BgR/IFnXinbmJl/oJHgRq8kdZV
         hmILiZboAtKDIRpA/N6fJsTBn818cgZg988C49DakHTn4kJQjv3iAeph2bvglReAQKFJ
         Q/PalAEa1ETbable2DLRn5Dtp4yZ4dWdnp1i+mtGQ/S3m5s2OuBlx8GCh9L59u+s51yT
         3++pAVQahYSCDizPXbDAmw1n/9tRmnpAlLw0SgwRrOVVGAkQ5SiZzxz+nQpi0AhmFY3x
         RgdA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=1w8IDFpB;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:2 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [2a07:de40:b251:101:10:150:64:2])
        by mx.google.com with ESMTPS id o9-20020a1709064f8900b00a4e97320807si794247eju.399.2024.04.02.23.46.52
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 23:46:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:2 as permitted sender) client-ip=2a07:de40:b251:101:10:150:64:2;
Received: from imap2.dmz-prg2.suse.org (imap2.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:98])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 45EF55C8E6;
	Wed,  3 Apr 2024 06:46:52 +0000 (UTC)
Received: from imap2.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap2.dmz-prg2.suse.org (Postfix) with ESMTPS id 77AC213357;
	Wed,  3 Apr 2024 06:46:50 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap2.dmz-prg2.suse.org with ESMTPSA
	id AJErG1r7DGb8CAAAn2gu4w
	(envelope-from <hare@suse.de>); Wed, 03 Apr 2024 06:46:50 +0000
Message-ID: <99686f5b-bd8d-4cd9-bb2e-341fd5d75c1e@suse.de>
Date: Wed, 3 Apr 2024 08:46:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 03/23] mpi3mr: pass queue_limits to bsg_setup_queue
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
 <20240402130645.653507-4-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <20240402130645.653507-4-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Spam-Score: 1.48
X-Spam-Flag: NO
X-Spamd-Bar: +
X-Spamd-Result: default: False [1.48 / 50.00];
	 ARC_NA(0.00)[];
	 RCVD_VIA_SMTP_AUTH(0.00)[];
	 XM_UA_NO_VERSION(0.01)[];
	 FROM_HAS_DN(0.00)[];
	 TO_DN_SOME(0.00)[];
	 TO_MATCH_ENVRCPT_ALL(0.00)[];
	 RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:106:10:150:64:167:received];
	 MIME_GOOD(-0.10)[text/plain];
	 SPAMHAUS_XBL(0.00)[2a07:de40:b281:104:10:150:64:98:from];
	 BAYES_HAM(-1.26)[89.73%];
	 RCVD_COUNT_THREE(0.00)[3];
	 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	 MX_GOOD(-0.01)[];
	 NEURAL_HAM_SHORT(-0.20)[-1.000];
	 RCPT_COUNT_TWELVE(0.00)[42];
	 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:email];
	 NEURAL_SPAM_LONG(0.84)[0.241];
	 FUZZY_BLOCKED(0.00)[rspamd.com];
	 FROM_EQ_ENVFROM(0.00)[];
	 R_DKIM_NA(2.20)[];
	 MIME_TRACE(0.00)[0:+];
	 RCVD_TLS_ALL(0.00)[];
	 MID_RHS_MATCH_FROM(0.00)[];
	 RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:104:10:150:64:98:from]
X-Spam-Level: *
X-Rspamd-Server: rspamd1.dmz-prg2.suse.org
X-Rspamd-Queue-Id: 45EF55C8E6
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=1w8IDFpB;       dkim=neutral
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
> Pass the limits to bsg_setup_queue instead of setting them up on the live
> queue.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: John Garry <john.g.garry@oracle.com>
> Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
> ---
>   drivers/scsi/mpi3mr/mpi3mr_app.c | 12 +++++-------
>   1 file changed, 5 insertions(+), 7 deletions(-)
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
one-eyed-alien.net/d/msgid/usb-storage/99686f5b-bd8d-4cd9-bb2e-341fd5d75c1e=
%40suse.de.
