Return-Path: <usb-storage+bncBD3JNNMDTMEBBLOBXOYAMGQE75T2QJY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1045.google.com (mail-pj1-x1045.google.com [IPv6:2607:f8b0:4864:20::1045])
	by mail.lfdr.de (Postfix) with ESMTPS id 31047898D1A
	for <lists+usb-storage@lfdr.de>; Thu,  4 Apr 2024 19:17:35 +0200 (CEST)
Received: by mail-pj1-x1045.google.com with SMTP id 98e67ed59e1d1-2a266c4d38esf821614a91.3
        for <lists+usb-storage@lfdr.de>; Thu, 04 Apr 2024 10:17:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712251053; cv=pass;
        d=google.com; s=arc-20160816;
        b=FQn/VzK20sJDMbTP1GHsvy+NtBFuUNlrCbMSJEJD2D3gdVYg5DAKLXmU12FGJTztoV
         1l7n+uUZmoS1/SXrHRmfp8HJXgtUxXmGpdDGn0T+PWiJEoEA3NnukTmyiMI/eYe3bxgf
         Uoum/NRXbjqQZEgxDGw7UNZHt/kFPmid8W60+vQ/aFGBC/wYBINAbGju/npBOPXoV3xa
         K3nqLff1OrQ2CcoTEL5KoSKPtJQ7YCXzAv6c7s4/vRhxCJ5Awsqm3fQ8pMXsbBoMIPnu
         4KqiY1WD03GqRlJAobt8xSB88iZtyRoQufr39vklvbmBWzJlFkHjn5KayqYxlVugK8v1
         b4Aw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=wyDV0bWRt3Q5PyUk7bf1p343NPfF8CddXyS4Tg7lX/w=;
        fh=oDLiaGrxMFtNo4OxWnYwmnFWlSbo8V9Wz7A0chRY0Rk=;
        b=DCFOGVBuBjnBKgtN5H7HWcWs46aee83fFOvKuJzUmMQU4YRznG0D+Dc3t41utlEOn+
         cZM8g1OQle04gJK8FGKfQCa10m+f0CjN6R+mY4abDgcnMmxs/0ur4o+c1mcY8MxwH8MZ
         ro3hD67fw87YMgvZVS7HgfA1GjXRcUER5HSY1djKzWD4scvYgXSze2/wzFlTzfTokOZm
         E1hOr0a0OKE7FcvgOKl0jPOyaiFy+Cr1d2G5sXbmVB7aeS5rouHZIOi9VTiWn7B9lAfW
         mEHCwvu0kc47jnPkcAtIwMftJ+6pg2j8IQ0cM3iBCbr9/s5wHRWE6gdWVywCTbVF9ppL
         nJXg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@acm.org header.s=mr01 header.b=mV1rUhRp;
       spf=pass (google.com: domain of bvanassche@acm.org designates 199.89.1.12 as permitted sender) smtp.mailfrom=bvanassche@acm.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=acm.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712251053; x=1712855853; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=wyDV0bWRt3Q5PyUk7bf1p343NPfF8CddXyS4Tg7lX/w=;
        b=kyJiePv9Hncr7C0daIOgiwm8zoQVlz3um44ac7WmF2infiAhiRNfqrbQ6f7lk3fLgB
         5ZG4IAPmv1+PZXKqWp7ez65R6ckO9YO1/8uCP1t5KUUf5B8vzJid3PpX1asm2MINDjnI
         V6XlgTNOnScITx36XoPiXHXah0TchGkGWlHlo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712251053; x=1712855853;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wyDV0bWRt3Q5PyUk7bf1p343NPfF8CddXyS4Tg7lX/w=;
        b=IsQcP0GvT0VlO5V5ETcRkcCgPK+hmPoW0NLsDPbyiHe4A1cadXQuOOK54GAkIxc/F5
         e5v8H2Df20ozf03rIH0K/hPZb3lFOhu0Qwl2lewq4dOHYTi2OXzxNhzaHpVU+dJdv0O6
         xEwY+jkMK88EAqGmKK7SNQe5lN2UEaNBtW/n7PbJDwaIAvKf9dA4mwiprDw+YEFzQFww
         ZjG6f3u/xRzRjLHzwDY5SeG9TabuOqhmCHCchrvOT1HVIR1GOL0Tr0/Aj1lPjh7xTA9q
         s5WCrCOqRDwjnIdy25Hu5DFF1jYtZxDydV4CkivxEw6RsI9Yi6MphHNdizbbPJdDOknY
         KVcQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWkoYcaASOtsicn6sA+AaXCXqmlGTgJrEjEmve87GKYuToPcqPwwcrb4IMJefwyNe8vl6VwmUJF8xf1fkzqpDVx6+97JmMljyA7
X-Gm-Message-State: AOJu0YwNpjblVm666Vt05kO86IKuvShCCzYoEx0mm3KAW/QLdxrag219
	rxyR8CPhK1FuPXt1JxBhu4K3DuzaoXwihfkvizNc/yODNNkgTDJBldrxphufsic=
X-Google-Smtp-Source: AGHT+IFM9VQIlxSanVt/VGsOOBa0hgg1ro1YQgPrcyPsgZGIWBHldyz4AGLu4eF9AAZ+K+N+J3COZQ==
X-Received: by 2002:a17:90a:eb13:b0:2a2:13ec:fc6 with SMTP id j19-20020a17090aeb1300b002a213ec0fc6mr3084005pjz.10.1712251053691;
        Thu, 04 Apr 2024 10:17:33 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90b:d89:b0:2a2:c18e:e2e6 with SMTP id
 bg9-20020a17090b0d8900b002a2c18ee2e6ls633904pjb.2.-pod-prod-01-us; Thu, 04
 Apr 2024 10:17:32 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWwyfHDkDlzMwZ3iqvr4X7ZuYikLAx6pHUsv3SEmgAaYZ0CUEOd+4jWhoUTGSMuqpvbMXKY6f8agG5W52jK6D8odFf//LMm0+oqEmEPHILfQSbuA8M=
X-Received: by 2002:a05:6a20:9585:b0:1a7:3b54:417 with SMTP id iu5-20020a056a20958500b001a73b540417mr1082466pzb.58.1712251052484;
        Thu, 04 Apr 2024 10:17:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712251052; cv=none;
        d=google.com; s=arc-20160816;
        b=XmKqDniHwbDLBBzxvyvbbOkEE6ql9MetujotkAnZShVMBJTU6JLRQFLmoPZhK/Zv/W
         ao6hqXobfNld+F/2CXU2VykuINQILGG3vjYygDwAWXgzn12Y2PuMlJMFX6bn4pHX1Ed6
         pMsXa2N6uoL31QkVk+3yoDKaj8qevdtr0wJ/kGs6FtquEAyxAhV8oc2sr9e7kRIZeVeC
         Xxzv0uDl8njZa/F3y5aus7S4G6Y9V74tsi7+6f5nfc1vO/JzkR+CpfrJHmGBtruE3gK0
         eilzzbMWY7eaeye+GfpBCKzTBv6PGW8tZeg62bdZqnAS49cY7SZzs+KWhEjIIZU1PxC1
         p22w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=HQkSNFPA1A8z8KFsn8EP/LhL18xwv+Q6EHrk7q5IWRI=;
        fh=Q9BqWqbrpwWilujVPg0PqsccPQOrLyzHfI1EOXSGGtU=;
        b=YFwCdryNm+OIzDZ79gKyf/WvRnMMdYMI954WRRopieguPzSBw0+to4G9G00aL0NW/z
         Kn4AUfr9WJor0qCXHst5vEH75H8+0qMmnteJjW9sHp3sboHnGuDQFKVPnHMheIeHtXcY
         SgHDM3ZjGXjzPbU6eVGJI72SQ2URl80aeT733i7B8WjIsop3vUiHZdou5CVjCany0p4P
         m8FBTyNeJsofXGXzLTtnuxe9sfR1LZny+FEadmKv/ykjNOaDHOH/ikWq0n3ZijZogrcl
         EEN/v+DutzXqPPVdNmBcE3l/NdpaQfzJkQccQvTq70y7UXPvN50eeNl3kFJ1Rqt2iG5y
         Y7eg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@acm.org header.s=mr01 header.b=mV1rUhRp;
       spf=pass (google.com: domain of bvanassche@acm.org designates 199.89.1.12 as permitted sender) smtp.mailfrom=bvanassche@acm.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=acm.org
Received: from 009.lax.mailroute.net (009.lax.mailroute.net. [199.89.1.12])
        by mx.google.com with ESMTPS id e8-20020a17090a9a8800b002a238219047si2082924pjp.8.2024.04.04.10.17.32
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 10:17:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of bvanassche@acm.org designates 199.89.1.12 as permitted sender) client-ip=199.89.1.12;
Received: from localhost (localhost [127.0.0.1])
	by 009.lax.mailroute.net (Postfix) with ESMTP id 4V9Swr0G9KzlgTGW;
	Thu,  4 Apr 2024 17:17:32 +0000 (UTC)
X-Virus-Scanned: by MailRoute
Received: from 009.lax.mailroute.net ([127.0.0.1])
 by localhost (009.lax [127.0.0.1]) (mroute_mailscanner, port 10029) with LMTP
 id QVqTQJGwJwvO; Thu,  4 Apr 2024 17:17:20 +0000 (UTC)
Received: from [100.96.154.173] (unknown [104.132.1.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bvanassche@acm.org)
	by 009.lax.mailroute.net (Postfix) with ESMTPSA id 4V9SwW6YjTzlgTHp;
	Thu,  4 Apr 2024 17:17:15 +0000 (UTC)
Message-ID: <9aa90db8-fcc4-414f-a4e3-ee33ff78fb2d@acm.org>
Date: Thu, 4 Apr 2024 10:17:15 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 12/23] mpt3sas: switch to using ->device_configure
Content-Language: en-US
To: Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>,
 Jens Axboe <axboe@kernel.dk>, "Martin K. Petersen"
 <martin.petersen@oracle.com>
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
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
 linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
 megaraidlinux.pdl@broadcom.com, mpi3mr-linuxdrv.pdl@broadcom.com,
 linux-samsung-soc@vger.kernel.org, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net
References: <20240402130645.653507-1-hch@lst.de>
 <20240402130645.653507-13-hch@lst.de>
 <031d6f0c-7d94-4adc-b194-929dbfe80c6b@suse.de>
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <031d6f0c-7d94-4adc-b194-929dbfe80c6b@suse.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@acm.org header.s=mr01 header.b=mV1rUhRp;       spf=pass
 (google.com: domain of bvanassche@acm.org designates 199.89.1.12 as permitted
 sender) smtp.mailfrom=bvanassche@acm.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=acm.org
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

On 4/3/24 00:08, Hannes Reinecke wrote:
> On 4/2/24 15:06, Christoph Hellwig wrote:
>> @@ -2687,8 +2686,7 @@ scsih_slave_configure(struct scsi_device *sdev)
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 **/
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 blk_queue_flag_se=
t(QUEUE_FLAG_NOMERGES,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sdev->request_queue);
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 blk_queue_virt_boundary(sdev=
->request_queue,
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 ioc->page_size - 1);
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 lim->virt_boundary_mask =3D =
ioc->page_size - 1;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return 0;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
> Here the same argument as done for the previous patch could be made; if=
=20
> we had the possibility to set NOMERGES in the queue limits we could do=20
> away with the reference to the request queue here.

Another possibility is to remove all code from drivers that sets
QUEUE_FLAG_NOMERGES. I agree with Christoph that drivers shouldn't set
that flag.

Thanks,

Bart.

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/9aa90db8-fcc4-414f-a4e3-ee33ff78fb2d=
%40acm.org.
