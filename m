Return-Path: <usb-storage+bncBCHZVHVFVMARBXMBWSYAMGQEPZ27TZY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x548.google.com (mail-ed1-x548.google.com [IPv6:2a00:1450:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id 0858989657E
	for <lists+usb-storage@lfdr.de>; Wed,  3 Apr 2024 09:10:22 +0200 (CEST)
Received: by mail-ed1-x548.google.com with SMTP id 4fb4d7f45d1cf-5684345c0ebsf690749a12.1
        for <lists+usb-storage@lfdr.de>; Wed, 03 Apr 2024 00:10:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712128221; cv=pass;
        d=google.com; s=arc-20160816;
        b=Bhn14Yv0HXhp/kxEN9Ba2eGvN445d4K9XrZhcHi2AOcNSJ9k5B1VsV5rCJR03D/ABc
         ahvUdelmCwqO3DR2BMZsJKlD8+iUpHCoN4a6FBhY8yDa6BMIeSAkOuGxyPlfdqAeykxQ
         Ts1bC/8NqpbkGBlzuCdjSURrCzFJEoNxqRuy7V+3b2PEzZ/DR30MNZPTK+VvaxJbENco
         6TuiAY8alkcvI4mBLAMy2AG7B7HqRx3+d918z/RoXuDuoCeCZRkepwsqxLf1qkWOJJOL
         Kza2vndcQU2Q8ztMESEguz+Cc4J2AKwJJ8IZjb7InntLqVfAHRX8pMmzZqcKTdW9rArD
         TY4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=dNYpFR1mLjxQ7rjEz4xxg0KeYhwZHewIMFKGJFMN55Y=;
        fh=mMz689S4WO2U/jrWw1Zk1H0j1BJp+nqyl0Stpc2Mcyw=;
        b=OhNoDNoJTdGM/vE9uc88jkXedwpSEzEhRPPwjt55TKGTpzqrGBiZ+/Yfn5FMsdKZKd
         5mh383zBKQ+a5YmzYpxM/LNLhj24P/COSadWhC3gv7rz8OuA/uhbnwJSN3iZ/CIPGX+O
         PbHrEGuNXZNe7aLUiAB3yVrl35edT6xFhDSVLH3W1pIyEoqlVeryF8Bh8Ho5XTb1neor
         pxQCBQsxp3hjz/6Y86bplzbxAt1lENHxIjWpPGMQJXQ3X3eoCesTEiRwUxQeYw71scgw
         fTl06RHV33qjbEAML36EKIvRXSCY9SMLyxEBo93VqO5uQxAxRy+30vYFJQ1/mk7p2cNs
         SXzw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=UQr9x7vL;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519 header.b=czg26s4y;
       spf=pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:2 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712128221; x=1712733021; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=dNYpFR1mLjxQ7rjEz4xxg0KeYhwZHewIMFKGJFMN55Y=;
        b=Puse2UskQaJbicvOEWXG3NtmSQVNzR/ilXgptwZvGzM0KPGLhsBmBS5EwZsUk33CuD
         cyte+zLm4aOynfHZPpidwkRzDDb3CjsKOLh2UJW0QHn44hPiGDz94xM9XN72SZKSlnN1
         2tusIMpzZl7ZjXH6koGLJ1dXIozc7U3WQvHZA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712128221; x=1712733021;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dNYpFR1mLjxQ7rjEz4xxg0KeYhwZHewIMFKGJFMN55Y=;
        b=HuwOdz6mwgxj7LjBoS51LFSof78/r6dQapjinP/mr6wQYD7ALwQzkY4BVnXIYtiFoB
         JKel2lse5cUFsEJTz8TqklBPnj8lGCX4lAk9N1YriQmw2CTFAEz2WbJN0a7kuOV7ODOg
         0XEXKa7+OwZlmfcO+8RWs3VSs2jOs9Rcx4NW+SDinjD0LycenBm1HnIFj0XwbnyNr+82
         dyjSMR88yqZlfHRU1Wa4xzRZnEpHq+0wYzVVUViZvf3s1TDBK6FGC69n/COLxID6CBU1
         29xsF9dbZFPaZvT6baSJqwHYMM5uLrvJp7x806oX4WILY0iixBjytebHWAIEH8fm/iye
         Ulvg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWVfx0ly/esKbU4yEIbzFnXKwhaZC92QkjGW+LFenQz4BPdUVH0mzjl69iGgrvVynU7kOJwt95lJFMuVHXBPaC6sZwzSeV3wjkq
X-Gm-Message-State: AOJu0YylQ63DRQ0KMYgheRQVZxAxJ1xQRyrux5K3QmJMTtk/aNy4MSCH
	BG7FP2hbPj4MG/UPCQYtvms6xPwgclwx1p25AoPUGTDAppbYsFslC2NGzFWg3+0=
X-Google-Smtp-Source: AGHT+IGbk9GVkxcQgfYpjr2q0gavJlMQaqWmXIoeQjuezb9v0ViDXk1l6vcZ0zBRdQUPS5nlxPXQIQ==
X-Received: by 2002:a50:aad1:0:b0:56d:f29d:c80d with SMTP id r17-20020a50aad1000000b0056df29dc80dmr1499309edc.5.1712128221595;
        Wed, 03 Apr 2024 00:10:21 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:4026:b0:56e:ac0:95de with SMTP id
 d38-20020a056402402600b0056e0ac095dels120947eda.1.-pod-prod-00-eu; Wed, 03
 Apr 2024 00:10:20 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVwdrk8VATfovkmNzdqI+atHbIeXtSDZnwSVgKBvE9DfmT2iFwx6Qj4/DYQLoxLny8EbwyYUBbscKvpDlg9oYxy53k/QTm02xMpyXtOfRYQ9VUsPN0=
X-Received: by 2002:a50:a6d7:0:b0:56c:292f:84da with SMTP id f23-20020a50a6d7000000b0056c292f84damr1647462edc.17.1712128219657;
        Wed, 03 Apr 2024 00:10:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712128219; cv=none;
        d=google.com; s=arc-20160816;
        b=bcGDvXXlkMbzTMxNwgdlnOVeAILdDHYGYHAw2tyd4J5f1URzMb/v80tZVUbr6kvHad
         k4lvsaUxSluJmXTpYJriEuYl4kHJQW04WT3ijS3dRLMaEKsDhU4fMak9YQa9n9iQyB6x
         uj+5bPAiMUOAjUBme5yUTa5W0tCQHmlVn8LFC1BeYlPDdLk9fGB5VYOvseDyfR9wsfnW
         sEl4lUYDfQERq3Lj4ItuOJjWUf4j1pHAa0H3f051bSKec6zVRPLEkOekKZQaxGQvrZ9t
         ZNaBW3hApStx4scxI+/errtKJaxdWSHvn+8Mv44q7gwMUqio1+3dlLd8PhdamK9WCWEC
         blBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature;
        bh=WL4PBt4OeCK24+JUx6RaHmrkS5YiDBiLiXTBa031mnI=;
        fh=9aauSyI5eQk5b4s5O16fFO5a6x/LXiZqBjzkmnuA6As=;
        b=Su/tIITebGxkFl+M9s1Y1nsvqe/a+OazDCPj1wzcLj0AASBok2f2hR6jqfl7lmSjOU
         xsP70Lv3pE4cDVL6FyY/n0BDB2bDR5N/WeC2eP3pdcPoqW80Ds825mxdak/gMQZYp+ne
         ks3dDGbvZO03zloKgF1zUoUPUwkZDyPxDeQVqUQbmIjwNCUQy8nvZ6maJozWrfChORkb
         Kh7GK0PZP7xaK3xm4XFKezPurygTFaDu60pE63eO0jvA+aycPj8VJ6/ak3aI2+A8GuT5
         awTxL7jBWEqYZrRLNtVR4GT6pRp7um6afBozhPLEdqpP+fCCJeC5UVl8EajDEJKy0R8q
         9FBQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=UQr9x7vL;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519 header.b=czg26s4y;
       spf=pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:2 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [2a07:de40:b251:101:10:150:64:2])
        by mx.google.com with ESMTPS id w21-20020a50d795000000b0056dfc0cdde8si699405edi.586.2024.04.03.00.10.19
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 00:10:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:2 as permitted sender) client-ip=2a07:de40:b251:101:10:150:64:2;
Received: from imap2.dmz-prg2.suse.org (imap2.dmz-prg2.suse.org [10.150.64.98])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 2F8AD5C910;
	Wed,  3 Apr 2024 07:10:19 +0000 (UTC)
Received: from imap2.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap2.dmz-prg2.suse.org (Postfix) with ESMTPS id 2C2E113357;
	Wed,  3 Apr 2024 07:10:15 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap2.dmz-prg2.suse.org with ESMTPSA
	id cAa4CNcADWYlEQAAn2gu4w
	(envelope-from <hare@suse.de>); Wed, 03 Apr 2024 07:10:15 +0000
Message-ID: <69e21954-9e33-46a0-bfaa-bb5d98fa0b97@suse.de>
Date: Wed, 3 Apr 2024 09:10:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 14/23] hptiop: switch to using ->device_configure
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
 <20240402130645.653507-15-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <20240402130645.653507-15-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Spam-Score: -2.87
X-Spamd-Result: default: False [-2.87 / 50.00];
	 RCVD_VIA_SMTP_AUTH(0.00)[];
	 XM_UA_NO_VERSION(0.01)[];
	 TO_DN_SOME(0.00)[];
	 RCVD_COUNT_THREE(0.00)[3];
	 NEURAL_HAM_SHORT(-0.20)[-0.999];
	 FROM_EQ_ENVFROM(0.00)[];
	 MIME_TRACE(0.00)[0:+];
	 MID_RHS_MATCH_FROM(0.00)[];
	 BAYES_HAM(-1.58)[92.29%];
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
 header.i=@suse.de header.s=susede2_rsa header.b=UQr9x7vL;       dkim=neutral
 (no key) header.i=@suse.de header.s=susede2_ed25519 header.b=czg26s4y;
       spf=pass (google.com: domain of hare@suse.de designates
 2a07:de40:b251:101:10:150:64:2 as permitted sender) smtp.mailfrom=hare@suse.de;
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
> Switch to the ->device_configure method instead of ->slave_configure
> and update the block limits on the passed in queue_limits instead
> of using the per-limit accessors.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
> ---
>   drivers/scsi/hptiop.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
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
one-eyed-alien.net/d/msgid/usb-storage/69e21954-9e33-46a0-bfaa-bb5d98fa0b97=
%40suse.de.
