Return-Path: <usb-storage+bncBD3JNNMDTMEBBXVXXOYAMGQEKN5QUVQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc47.google.com (mail-oo1-xc47.google.com [IPv6:2607:f8b0:4864:20::c47])
	by mail.lfdr.de (Postfix) with ESMTPS id DE136898CBC
	for <lists+usb-storage@lfdr.de>; Thu,  4 Apr 2024 18:57:03 +0200 (CEST)
Received: by mail-oo1-xc47.google.com with SMTP id 006d021491bc7-5a46b025acbsf1229547eaf.3
        for <lists+usb-storage@lfdr.de>; Thu, 04 Apr 2024 09:57:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712249822; cv=pass;
        d=google.com; s=arc-20160816;
        b=dc7BTO4iJuBVlfFG3cZapv+dgSi2xxl3eac+H/vTfZ6ln/dhjOFly8sqIX3tvDNcBJ
         uJdRziuadMJtz2aIBn2HnEQ6R7mowzk9ASMqNDazhq3X0D5y30+2TgesCtECGKGOmm/s
         OBbaFk2v8VYTd+IJtyMyGE1SCOadQ3FST2OyiW9yMxJwOJJfDhjoss4ZVZurWGZ8oh+E
         gKMZ4V5H1AqmF6OwYR+wWl5mKVCjzSv89V7oCD1M9igQWFqU3XX8kJYiVvgN0dF7Ph+j
         m1aatiavq8mw0cy8CbX5oAZvOu27S/QV4XGXPe5jehK+5V+1LEiJRMgBoFDu8cMDt95l
         UANw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=E9hQjzV5APDYdlB9Csc5Dco/tfOnhyc6dlqvvLAhgq0=;
        fh=tXTH9YpLjqKoS8jPwwIOyHll1YosA+OCOwQz1NnD788=;
        b=EWRa42pEPfXpOKCk3S0Od7NulKYi/W2iIU4/PzvvCf9x5cP9d5yyya3MnEKEm/TGYE
         kWh7jxd1BpEFAbJhEVPSaHuPL47fz5+Tcx8/BXz0e45MgbWjYqgjuJhYFxFCZolhxX74
         NaPUKDjaCRRHxpiI53C849GLFv1xTeXwcD5os/7Ut3Wg9mtgr+8wrQ0dJde31J7cj6cf
         0rS0/yXjkqUvgUdA6t1hVqLun5lye3f5BCA6EMRObrGnqNCULuO8mz9WKamWx2c7jQHI
         QNciPBczvHCNuTy+mpkfK6+q08jCuM/bq8A2DDHJklVidwFfql8DRXGbRST6yjR1OQ29
         dUQQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@acm.org header.s=mr01 header.b=Gv+WvMz6;
       spf=pass (google.com: domain of bvanassche@acm.org designates 199.89.1.12 as permitted sender) smtp.mailfrom=bvanassche@acm.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=acm.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712249822; x=1712854622; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=E9hQjzV5APDYdlB9Csc5Dco/tfOnhyc6dlqvvLAhgq0=;
        b=OTqO7t4J2zXgiknP/A49gLZ3n1TomMUDSgoIpaoCroKjcGhV+MJFZCCP+jVqnk7Rfk
         QnqoOndsFJo5CFT8J3DdtqPb0oleCopqXRNzdyW+e92Ax4yoVmgw9C0jlZKX27uBoS8p
         BWdlQp/Ej8uTh7ygyizwQOs7w1eGqa6P2SQ2o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712249822; x=1712854622;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=E9hQjzV5APDYdlB9Csc5Dco/tfOnhyc6dlqvvLAhgq0=;
        b=aVxVBihowTc1BZPMvs84EW4yxC0++j3u8SSrNHois72UHtoCXKhHXz5OW0H6k+50Rt
         aO3suQoAB6L6oUaTleu+NLFBrHw/NLZ7FETtoTqXTW1nB72WqvFzXxtNHAVvcQxThzHJ
         hDqtvU/9xv9bDI20vP5P3qwlLA3+dHr6KHY/laGCW4YJkWvslQouFGRqe5Afuf5D/iHs
         7MQ3n1p0EvyFLcswwuGSVVgWyRtoyuOWhtNrOtauIPQm9UOWr9a5Gi9qD/tSLFYnj5y2
         ivlh1FRLoOD/SDJU5ru6odZYomDMYgR/UrhaJjtLOUYh2zNWCoroLBEpI4EevlZA6Hx/
         4bIw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCV/RGLVL1s6eZ7iJyYQwPfjzlCAT87inSAvbxDJRzEDL5qGIWAM7ZAvSGDOleCCahxs/VTfc1KgppBn46bg0/UZU8P622GosBS/
X-Gm-Message-State: AOJu0YxwTR3p8sRQcufn6LstNgTE01sAfRARBz/v7jHf9Yaf254uniWU
	Jcq/p0f0HeIZgZWeJV/oFkYSBmPRz/DEk+75EiLpL9Kv6x1hrqyCBcen3CohAIA=
X-Google-Smtp-Source: AGHT+IFnQXbhOuFtHNmTxQJu0Tuxq3yOHGeFw0PWWDUE+VmTq3iGy4affiLcoeaHyF9/NY37vMH4ZQ==
X-Received: by 2002:a05:6870:b4a9:b0:22e:b363:73dd with SMTP id y41-20020a056870b4a900b0022eb36373ddmr2710760oap.19.1712249822508;
        Thu, 04 Apr 2024 09:57:02 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6871:408b:b0:22e:aa35:5a40 with SMTP id
 kz11-20020a056871408b00b0022eaa355a40ls1334317oab.2.-pod-prod-02-us; Thu, 04
 Apr 2024 09:57:01 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXpJT22ZheQclalFcDe0S/Tm2tx6mMiKYbgUOx5xVBJ0uCLW7e1e2uyNXPvr/xD0iu8it32hfTZ1RTtiDdNWAxdoKY5njSvoh7Vjvsfi04ZcYZfxZA=
X-Received: by 2002:a05:6870:d886:b0:229:f50b:d5a5 with SMTP id oe6-20020a056870d88600b00229f50bd5a5mr3334995oac.5.1712249821566;
        Thu, 04 Apr 2024 09:57:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712249821; cv=none;
        d=google.com; s=arc-20160816;
        b=1DEEW6/J8HDp4Ipiy97ri47ZqAgX5ZuBdMY8RsU2HfJH7wRWCQqT9X3OKGpaVvHCH3
         NbVDBp/nbLvXTQUsKbGBw44LvqIeH7d9Z09PPQMaxufususDhlnIQMs5IcrktPQxzys4
         wLLFPAFEwdFSfxoQY6NCNxx5usA/nmuvYfVxGfv7lj3LF6TzF1Og3RxanV9YEfxjfHMp
         E2xf7bYX0Q65Fr0xCrv6VPFMZPIytGhVlN8HptPAn6D/sMofFFKPmgdjEkax+EkSg1wF
         FKtH4Xh+R3648H5TQBrd1zMoJQadOQEQm+fA3oubrvNOnoYcv8LkiuVWn8FUaLhuugj9
         HTUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=5v5iMJrhr92ajSpicNdBGcbnQO35Gg4ei5aK8q/jLec=;
        fh=d+NN1/9nDuwnwJoao3XCncS9eXV4fvw18mXgsLtMD5A=;
        b=LlzAuC98Wr5NnDRJP0WfAt9Rk3rtJoqAr0RhiDtrP70uiVSqY9IOP+228tk2He002Y
         +dBPpPV7TmT2inYkyA3SM2wKm3i1ALjBQNkNOrVlkjLx0EIdFUYC/mzP4MMarCnBHmAe
         h/VhAuYpQIaN3wmZOVFwFIHam1q4Ij4I9pYZXtjIf4Q0M9+YcTV11glASgykKC4K3iaZ
         X24gN7vMecZZrakqsVqt8V6lGG+/99P6Y9eVQKK+tbljz8+xOBBEuhZ1qvgYN2rgrCpU
         DNJpcan0gXatNt40IKsztS9s73sVbVnOQqvaZ79orNrnfxAma8qudzonOzS/jOtAE576
         No/g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@acm.org header.s=mr01 header.b=Gv+WvMz6;
       spf=pass (google.com: domain of bvanassche@acm.org designates 199.89.1.12 as permitted sender) smtp.mailfrom=bvanassche@acm.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=acm.org
Received: from 009.lax.mailroute.net (009.lax.mailroute.net. [199.89.1.12])
        by mx.google.com with ESMTPS id s1-20020a63a301000000b005d8e3c86163si16017288pge.142.2024.04.04.09.57.01
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 09:57:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of bvanassche@acm.org designates 199.89.1.12 as permitted sender) client-ip=199.89.1.12;
Received: from localhost (localhost [127.0.0.1])
	by 009.lax.mailroute.net (Postfix) with ESMTP id 4V9ST91smhzlgTGW;
	Thu,  4 Apr 2024 16:57:01 +0000 (UTC)
X-Virus-Scanned: by MailRoute
Received: from 009.lax.mailroute.net ([127.0.0.1])
 by localhost (009.lax [127.0.0.1]) (mroute_mailscanner, port 10029) with LMTP
 id ROX_SkAJtjED; Thu,  4 Apr 2024 16:56:52 +0000 (UTC)
Received: from [100.96.154.173] (unknown [104.132.1.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bvanassche@acm.org)
	by 009.lax.mailroute.net (Postfix) with ESMTPSA id 4V9SSv06MTzlgTHp;
	Thu,  4 Apr 2024 16:56:46 +0000 (UTC)
Message-ID: <f272dc57-dc2c-46f2-8390-e801fa5c4bf8@acm.org>
Date: Thu, 4 Apr 2024 09:56:45 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 05/23] scsi_transport_fc: add a
 max_bsg_segments field to struct fc_function_template
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
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
 linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
 megaraidlinux.pdl@broadcom.com, mpi3mr-linuxdrv.pdl@broadcom.com,
 linux-samsung-soc@vger.kernel.org, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net
References: <20240402130645.653507-1-hch@lst.de>
 <20240402130645.653507-6-hch@lst.de>
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <20240402130645.653507-6-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@acm.org header.s=mr01 header.b=Gv+WvMz6;       spf=pass
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

On 4/2/24 06:06, Christoph Hellwig wrote:
> ibmvfc only supports a single segment for BSG FC passthrough.  Instead of
> having it set a queue limits after creating the BSD queues, add a field so
                                                   ^^^
                                                   BSG?
> that the FC transport can set it before allocating the queue.

Thanks,

Bart.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/f272dc57-dc2c-46f2-8390-e801fa5c4bf8%40acm.org.
