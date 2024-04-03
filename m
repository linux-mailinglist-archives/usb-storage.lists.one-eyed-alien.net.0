Return-Path: <usb-storage+bncBCHZVHVFVMARBF4FWSYAMGQEHQJVPVI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x545.google.com (mail-ed1-x545.google.com [IPv6:2a00:1450:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id C312F8965EF
	for <lists+usb-storage@lfdr.de>; Wed,  3 Apr 2024 09:17:43 +0200 (CEST)
Received: by mail-ed1-x545.google.com with SMTP id 4fb4d7f45d1cf-56e0ae59a9asf113584a12.3
        for <lists+usb-storage@lfdr.de>; Wed, 03 Apr 2024 00:17:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712128663; cv=pass;
        d=google.com; s=arc-20160816;
        b=zY/sAjdrcHPp2oT2n8qjqLrRCoCDdjH3bOgnavjwhFR7c4tw2q9ZTKHd/h+5PitpuJ
         xlOFAcNox4NwYdsL8H8MYYxGkkN3RW3E8KXVwisuFNDMYLwLrnQiyfXvezd3uoR6D6Ox
         7Pnri91I15RQW1JoAAyHDivD2+GQQZOOie6iYlluIGA4ZVYbScQJo6GLRgvoMJe3uUEY
         w3DrcbDWWkzKBVMqwTMREFBu3Z4FyzbatKoTptTQ3HiquoEIRk3XLHlsT1arn908D2no
         v+2PGilyP/s2O69HpnzkajKl6FSxK/qfTm6Pz7+n2nn+gvhYNbGoYDMu5UA8vlk/KvgG
         zEbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=+NYYtNo6Zy13eEAQpHQcIdgajmHfvVe0E04rPytfI/I=;
        fh=DrWn2k0z8jjtRj0a71NmQbwpdNs6NII6kf9e4iDZdx4=;
        b=qPY3j+xAYXxSvzXG6n4SgpAPxCdIbNqXW7HU3g3vP9P9xAJHqqzFIVb1K8NN/I+QNC
         GLU3GKZIzR807yLdCib65Qg2tc0Kz8cFtJRtU5wKqYOgGuvYfyJVcvfLpvW9s6JODsgl
         f+5H/xOrotf2TyxwQzrnwfvAJvqRgRg3BcYkq0Eeo2csohD7HIvHyz9hb4P9FzCfTUdO
         ibdLEJqjKbdgyhoI25x1sJd0N5iuVUsxq7K83P7NMMaLi+IviR7BSiA9TTi/WCy+mmAu
         ubV6IFz71wdEnk795HdEBUx31+TCcLqqB+/HVT+ixrOfMSaVK++7ro7J+UmG1JbuOibU
         mP7Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=Qzp3BQHP;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:2 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712128663; x=1712733463; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=+NYYtNo6Zy13eEAQpHQcIdgajmHfvVe0E04rPytfI/I=;
        b=kJeFwF8Y/VVZDGcjA3/xdvN60awyru3k4BMWk3/F2JdbT1g6HwaZ7I5RFVq0+d/HM3
         NeNqTBrfcM5wWS5FfkfEVhSn+MzVvO0+6HpiMstU8XGBkKHQBJt6cIGTRzwoK2ANlTaZ
         y7o69HGsnqXK9ZSsuOlZQYlrfsY31JF0MRwTs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712128663; x=1712733463;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+NYYtNo6Zy13eEAQpHQcIdgajmHfvVe0E04rPytfI/I=;
        b=NdO9XeR5RbZEu60+XMl4JrHOU6yrd9sr3T4BKzTO8kkv0SdR7U8eMObAAXPxnwItyz
         TiUzeT9dfRSsepYg0DVfhagpDdmCLqGLX+dBBPEvY0Y5s7Z7BgWRK3lT0KlcG6PIAI9C
         eKmuUZKDp1Z0Q4HDT7uKc3lJQM4N8e7maRii5AVBveQIrJM3qpftGRPcr1caGAZPBO/S
         2igGRxX4/C+zNY8TDpn0to0oGss+H10BgnNU5wQuCEzNTeyHv1bsUq8uUb7YPKIN0uYt
         49jMYh1Xw+6gNl6LQWwbjXJSggP0J6n1j0x8zAxcTX1sOm/aeC+edEgnYhra1I/dzZAY
         +21w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWdVfbtbNAnjJmURQX/XL3nsPBpYiRMW3gaJqaHECDig4kb55VlBX6hWOWWgcu8LaxnRVVzhvSk5YvKg4IijiWkMYn/MYkSWJXI
X-Gm-Message-State: AOJu0YxNPmezHo74QL5U6bAi9tTQTH1l2Y8elcS0mrE/I3nHPzpsawmc
	vAGPORQITHQnAKLb2ZnO+IIRA2E3JYPSuRo6h3XiVMA3Jxka0Jc4PCTy1Iq60kk=
X-Google-Smtp-Source: AGHT+IFlGq1V+PE1sWMG7Dh+uBhclIkaRZb1mr5kiYe4/qemg4VXF15doroZZs5PNFmUdY3y2mxmeQ==
X-Received: by 2002:a50:ccc2:0:b0:565:980d:5ba9 with SMTP id b2-20020a50ccc2000000b00565980d5ba9mr1018074edj.32.1712128663315;
        Wed, 03 Apr 2024 00:17:43 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:3588:b0:56e:997:fbbf with SMTP id
 y8-20020a056402358800b0056e0997fbbfls122763edc.1.-pod-prod-02-eu; Wed, 03 Apr
 2024 00:17:42 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW0ozeGmAhlDLyrTkhjvQZdQIdfr4MZJbpdrxs7swMfYxrzmFk0yOPema8HbG4/yC8ymDQPM5kcUTNt4VES/TEBHoeYLadIaWcWhc0s0Dkz+kbTTy8=
X-Received: by 2002:a17:906:694:b0:a4e:6e23:b4a9 with SMTP id u20-20020a170906069400b00a4e6e23b4a9mr1124656ejb.18.1712128661640;
        Wed, 03 Apr 2024 00:17:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712128661; cv=none;
        d=google.com; s=arc-20160816;
        b=fkq65s/9mXL1Zd2E9N3mPuHwhR9iFL/zysJbZC8subEJwQ+lYUDURcO08Ji8ix8sBJ
         eSpRGxLL0wimdUSWtEssu+CXsuXHVT3QIyBedoBFXjpDDFX4wS/bfRQUi9BzEWqjjlbD
         neuq0zdB15U7cVanEHLpaw12GDN6WUsjbuTN77QzQRUnO+1A5xoA8oCVYVDFuMdJohdW
         LjqO0/8qXZybCWGj7NQbjeMNmWwRrnd8GDURIotTG/84sQHXevQDv125c1cHPv7o5Rux
         by6W8nqxO/rFRDHg/ZCenFi4MwUnpzAvoh4/+Wc3zUT/dDjqcqQzeaYI6nOzeA4r3Quy
         X3mA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature;
        bh=dzr4baU9kcytlC2yj/jZLK742rEcmjzfe9eVOAIgG8U=;
        fh=9aauSyI5eQk5b4s5O16fFO5a6x/LXiZqBjzkmnuA6As=;
        b=IlzA8MGRZOyHL683m/egtank3cZSCZXm9EVtEB6Hc7B16SI+eU+dOO0sf+mP9Cfi4w
         a3TdtxEpCzrZ4f+O9li9GcJvR0LbUMI8sdKhy57lhnxpd/j3jqGbcLMIodCDLaWOLiCn
         bNdtNOHgKDozLZlG40IHDMJiSk219eaumxtGdDX7kO3GzJORamMiGGp7q8U1wZWvBZEO
         wJFcQE+jEOABexiCvKgcumbtaQuWUakQpIci1hj3LqtYEufJ8KME4Y1ttniHqG4cqeJa
         kJtXrNQzM77FP6ojpivjI5P8zABUDN8G6ShBHLgy1xhAyrcL0ru1HzRqAqXHnQ8ZpWy1
         Qb/w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=Qzp3BQHP;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:2 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [2a07:de40:b251:101:10:150:64:2])
        by mx.google.com with ESMTPS id mf6-20020a170906cb8600b00a46e7029dbfsi6417076ejb.1007.2024.04.03.00.17.41
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 00:17:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:2 as permitted sender) client-ip=2a07:de40:b251:101:10:150:64:2;
Received: from imap2.dmz-prg2.suse.org (imap2.dmz-prg2.suse.org [10.150.64.98])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 50E405C165;
	Wed,  3 Apr 2024 07:17:41 +0000 (UTC)
Received: from imap2.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap2.dmz-prg2.suse.org (Postfix) with ESMTPS id AD87C1331E;
	Wed,  3 Apr 2024 07:17:39 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap2.dmz-prg2.suse.org with ESMTPSA
	id gCo9J5MCDWYlEQAAn2gu4w
	(envelope-from <hare@suse.de>); Wed, 03 Apr 2024 07:17:39 +0000
Message-ID: <06b273a7-52aa-45f0-9b45-fc3347c135be@suse.de>
Date: Wed, 3 Apr 2024 09:17:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 22/23] uas: switch to using
 ->device_configure to configure queue limits
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
 <20240402130645.653507-23-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <20240402130645.653507-23-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Spam-Score: -2.71
X-Spamd-Result: default: False [-2.71 / 50.00];
	 RCVD_VIA_SMTP_AUTH(0.00)[];
	 XM_UA_NO_VERSION(0.01)[];
	 TO_DN_SOME(0.00)[];
	 RCVD_COUNT_THREE(0.00)[3];
	 NEURAL_HAM_SHORT(-0.20)[-0.999];
	 FROM_EQ_ENVFROM(0.00)[];
	 MIME_TRACE(0.00)[0:+];
	 MID_RHS_MATCH_FROM(0.00)[];
	 BAYES_HAM(-1.42)[91.06%];
	 ARC_NA(0.00)[];
	 FROM_HAS_DN(0.00)[];
	 TO_MATCH_ENVRCPT_ALL(0.00)[];
	 NEURAL_HAM_LONG(-1.00)[-1.000];
	 MIME_GOOD(-0.10)[text/plain];
	 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	 RCPT_COUNT_TWELVE(0.00)[42];
	 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:email,lst.de:email];
	 FUZZY_BLOCKED(0.00)[rspamd.com];
	 RCVD_TLS_ALL(0.00)[]
X-Spam-Level: 
X-Spam-Flag: NO
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=Qzp3BQHP;       dkim=neutral
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
> Switch to the ->device_configure method instead of ->slave_alloc
> and update the block limits on the passed in queue_limits instead
> of using the per-limit accessors.
>=20
> Note that uas was the only driver setting these size limits from
> ->slave_alloc and not ->slave_configure and this makes it match
> everyone else.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
> ---
>   drivers/usb/storage/uas.c | 16 ++++++++--------
>   1 file changed, 8 insertions(+), 8 deletions(-)
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
one-eyed-alien.net/d/msgid/usb-storage/06b273a7-52aa-45f0-9b45-fc3347c135be=
%40suse.de.
