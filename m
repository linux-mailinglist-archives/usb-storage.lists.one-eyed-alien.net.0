Return-Path: <usb-storage+bncBCHZVHVFVMARBYOY4LTQKGQE6NJYDHQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x546.google.com (mail-ed1-x546.google.com [IPv6:2a00:1450:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D2BA36BFD
	for <lists+usb-storage@lfdr.de>; Thu,  6 Jun 2019 08:02:10 +0200 (CEST)
Received: by mail-ed1-x546.google.com with SMTP id i3sf2073927edr.12
        for <lists+usb-storage@lfdr.de>; Wed, 05 Jun 2019 23:02:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1559800930; cv=pass;
        d=google.com; s=arc-20160816;
        b=vyywmIz48AcpXW6TbyON4StvER1kqPWqLFWyzUxpcgkDLmu/17Mb/A6rns1j45onVR
         lU4K6PKvKPwDPfDjuTZaVNJcJC6hVBdSCKnbJnryNz7o649rR3eNntrAYSEdFL7fOUGI
         gOESClCBnkG86eAMjEEon2qJwhgH/4yHXWiRPvVuQ5U9Avlx6BuGk0KTM5Fj/H9H47ZH
         Cv1Z0+NnwyBfbzgxp8Vanm1esrHxzd3XTfc6FCp46xJ4odRhohCJYhIy4qAZjF1qJuoa
         ziP95Pg8c7Vjch+I2BB2GTrNyeso6eHKS4lsF7KDQ3T4NTvNr9rn7I016rJNwmMNr+5C
         IQEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:autocrypt:openpgp:from:references:cc:to:subject:sender
         :dkim-signature;
        bh=RhCOy4T6wR8E+l2i7nFSBZMuQfDFJ2nUSSRtjIn4FGg=;
        b=SHREhjJmgYhfRvhusiPdy3FQiQ6q6hC+tYBaBjotoAzIvxaP48cyqUEg/XTJUEhQun
         70aq6KAjxHIgHd/zB/1Mw2sZ+9r+AX+hJSwkXpCRmEe98uee2tqtPA1tEP9VWbArry4C
         xZdNUVEajJoaUZrVdNoPFJMYWz2gyT+zAVHBVRbzEQIhCDfO+mNvsOv+KUO0UCJDhIjJ
         +eXSDFOWISjp6Wkrb7d9Ii6DZoC8ehtGNeAJLFopcbmrb188XZmLGZWb2tjD1SvKCovx
         S1uFTAE6Xe5NQDHHL1ZhJYAsS6oJBJL2HCRUqAcQ6n4EfLzzdexPDct6rCcKyvgTQpT6
         pjig==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:openpgp:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RhCOy4T6wR8E+l2i7nFSBZMuQfDFJ2nUSSRtjIn4FGg=;
        b=GfkjXYzhe7mqbIZlLJx+y94cw0YebxMAd/rppI3Cr8VbYdEW1Qx1GUk0Rfg2JqHFUs
         ZeE2FPWzlUltUlcKh3pbBMoyn/CAsF/5FQxq6KkII9sJSBgSglsZHr/nHCAOu2vARD6Y
         czZBSVIx1cuUaI89Imge5pcYrrCfJHfrqXI1w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:openpgp
         :autocrypt:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RhCOy4T6wR8E+l2i7nFSBZMuQfDFJ2nUSSRtjIn4FGg=;
        b=jpbrJJ3IYWN8koBT5byUcIMQDZHLzrUDWWL36lAUT5wdnGKeoagK8QzdXZZy36wlRx
         IVED7DLRcH0p32FEBo2xTqa3cB4GlKddLYydhsUq0G/o6XgVHp2aGf9eqjTenokq3z5R
         +EkaoKpAZIl2FSPflgUrWYfpBHhUNl0KxZ3ZkUXPrkmUvBxtRuxxsvSNl2hOHvVlq0bP
         3EwvGOyvB7fXtS+etaQaQn+TLRS2J8iwphiPddt6O0ef9AVfrT4MrR0HdIVp31Am+xtF
         XwGLgShgaeiyyAzLgMPb5Wb82Eo7b4beHy6zKhEgL+hNMXEAO10ptcAdg14c001NiN8B
         rKoQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUllooJvB/1jooFdTiI2B6mmeJPYMLx2KkTIpPdWxWEF3lFoctU
	+6ACsxj8MniGhO7/tiUjwn0w9g==
X-Google-Smtp-Source: APXvYqwJ959FzwybD/sQA2q4eGsrHBaN5wXoES6oXEMh85cUkbLMkXfzuNqxxpt3NaJ3JhsROWVVjA==
X-Received: by 2002:a17:906:1e0a:: with SMTP id g10mr39994422ejj.127.1559800930056;
        Wed, 05 Jun 2019 23:02:10 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a50:cac7:: with SMTP id f7ls1251427edi.4.gmail; Wed, 05 Jun
 2019 23:02:09 -0700 (PDT)
X-Received: by 2002:aa7:de16:: with SMTP id h22mr39912730edv.189.1559800929379;
        Wed, 05 Jun 2019 23:02:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1559800929; cv=none;
        d=google.com; s=arc-20160816;
        b=XIzP4UIn2sODdaOJj8fhDI7Ee9bu1ysLGiXXZqG5UkbfQPwfHZd00rIOFUrLL7B2vI
         cB/hvM4zru/KWrym+psovojKgDsIvcXi5fp4v48SIPfXrD0cRRP0k7d2y0cwt+Srhyp5
         KkMhwv2sibYD6AF9A4EVpRvngcS885wUJKdRjRVGMTs1ofjIgVpohCTTpKOlRjFeSMwk
         QRlAdTwIp1ZFnQi2bXZvxniGYBX7X7FLnT3HCP8YDDf2UceO1jNqkhJKeHNyhl8Eync+
         z4SZs8CJn4JN5cLbfvNdDnqk+zfMvdj+4qNraooNf57+3wtiTZLy6sdbAwhpabu28677
         YVGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:openpgp:from:references:cc:to
         :subject;
        bh=+3akQD2SqQ/E8y+vvejtFTFiqRY75qJdO6k4GDxFCtQ=;
        b=xw8Abk8VjsWp1vy5SjoVQAZwTd7V7D3bsqHekFPpYTgYAXdRxvN/inyULBfRUmGanP
         IHQVpOIyyIg3vM3knXGLLE0EGaDowLRmpNWAU2KcDISSY/UFQHRfzIyVDeJwC90IZ5Iw
         nQuJfJO5JN63DCm5qx3cCHZMQ+6dGrngEpMc77+D4Iuh2hhH3j5q58ibXqLtlJ0k2PwK
         T5A2PfV3Frf5aTXPTvedmsTu/Z4xo6PCmts6+z08y9Ckh2FU9yszp/qL0k/1cxBmngQ+
         jiRWOgCmmiD8MK0ZL4otPw8Uo0wmNp3UE4ljsZQGCvH4/pOQGzll1TwED+/rqSgYhe99
         SWYQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by mx.google.com with ESMTPS id p12si678981eda.385.2019.06.05.23.02.09
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Jun 2019 23:02:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id 4EB62AF80;
	Thu,  6 Jun 2019 06:02:08 +0000 (UTC)
Subject: [usb-storage] Re: [PATCH 10/13] megaraid_sas: set virt_boundary_mask
 in the scsi host
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Sebastian Ott <sebott@linux.ibm.com>, Sagi Grimberg <sagi@grimberg.me>,
 Max Gurtovoy <maxg@mellanox.com>, Bart Van Assche <bvanassche@acm.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Alan Stern
 <stern@rowland.harvard.edu>, Oliver Neukum <oneukum@suse.com>,
 linux-block@vger.kernel.org, linux-rdma@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, megaraidlinux.pdl@broadcom.com,
 MPT-FusionLinux.pdl@broadcom.com, linux-hyperv@vger.kernel.org,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 linux-kernel@vger.kernel.org
References: <20190605190836.32354-1-hch@lst.de>
 <20190605190836.32354-11-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hare@suse.de; prefer-encrypt=mutual; keydata=
 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
 azzYF4VRJsdl+d0MCaSy8mUh
Message-ID: <345c3931-0940-7d59-ebc6-fa1ea56c60ac@suse.de>
Date: Thu, 6 Jun 2019 08:02:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190605190836.32354-11-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
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

On 6/5/19 9:08 PM, Christoph Hellwig wrote:
> This ensures all proper DMA layer handling is taken care of by the
> SCSI midlayer.  Note that the effect is global, as the IOMMU merging
> is based off a paramters in struct device.  We could still turn if off
> if no PCIe devices are present, but I don't know how to find that out.
>=20
> Also remove the bogus nomerges flag, merges do take the virt_boundary
> into account.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  drivers/scsi/megaraid/megaraid_sas_base.c   | 46 +++++----------------
>  drivers/scsi/megaraid/megaraid_sas_fusion.c |  7 ++++
>  2 files changed, 18 insertions(+), 35 deletions(-)
>=20
> diff --git a/drivers/scsi/megaraid/megaraid_sas_base.c b/drivers/scsi/meg=
araid/megaraid_sas_base.c
> index 3dd1df472dc6..20b3b3f8bc16 100644
> --- a/drivers/scsi/megaraid/megaraid_sas_base.c
> +++ b/drivers/scsi/megaraid/megaraid_sas_base.c
> @@ -1870,39 +1870,6 @@ void megasas_set_dynamic_target_properties(struct =
scsi_device *sdev,
>  	}
>  }
> =20
> -/*
> - * megasas_set_nvme_device_properties -
> - * set nomerges=3D2
> - * set virtual page boundary =3D 4K (current mr_nvme_pg_size is 4K).
> - * set maximum io transfer =3D MDTS of NVME device provided by MR firmwa=
re.
> - *
> - * MR firmware provides value in KB. Caller of this function converts
> - * kb into bytes.
> - *
> - * e.a MDTS=3D5 means 2^5 * nvme page size. (In case of 4K page size,
> - * MR firmware provides value 128 as (32 * 4K) =3D 128K.
> - *
> - * @sdev:				scsi device
> - * @max_io_size:				maximum io transfer size
> - *
> - */
> -static inline void
> -megasas_set_nvme_device_properties(struct scsi_device *sdev, u32 max_io_=
size)
> -{
> -	struct megasas_instance *instance;
> -	u32 mr_nvme_pg_size;
> -
> -	instance =3D (struct megasas_instance *)sdev->host->hostdata;
> -	mr_nvme_pg_size =3D max_t(u32, instance->nvme_page_size,
> -				MR_DEFAULT_NVME_PAGE_SIZE);
> -
> -	blk_queue_max_hw_sectors(sdev->request_queue, (max_io_size / 512));
> -
> -	blk_queue_flag_set(QUEUE_FLAG_NOMERGES, sdev->request_queue);
> -	blk_queue_virt_boundary(sdev->request_queue, mr_nvme_pg_size - 1);
> -}
> -
> -
>  /*
>   * megasas_set_static_target_properties -
>   * Device property set by driver are static and it is not required to be
> @@ -1961,8 +1928,10 @@ static void megasas_set_static_target_properties(s=
truct scsi_device *sdev,
>  		max_io_size_kb =3D le32_to_cpu(instance->tgt_prop->max_io_size_kb);
>  	}
> =20
> -	if (instance->nvme_page_size && max_io_size_kb)
> -		megasas_set_nvme_device_properties(sdev, (max_io_size_kb << 10));
> +	if (instance->nvme_page_size && max_io_size_kb) {
> +		blk_queue_max_hw_sectors(sdev->request_queue,
> +				(max_io_size_kb << 10) / 512);
> +	}
> =20
>  	scsi_change_queue_depth(sdev, device_qd);
> =20
What happened to the NOMERGES queue flag?

Cheers,

Hannes
--=20
Dr. Hannes Reinecke		   Teamlead Storage & Networking
hare@suse.de			               +49 911 74053 688
SUSE LINUX GmbH, Maxfeldstr. 5, 90409 N=C3=BCrnberg
GF: Felix Imend=C3=B6rffer, Mary Higgins, Sri Rasiah
HRB 21284 (AG N=C3=BCrnberg)

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To post to this group, send email to usb-storage@lists.one-eyed-alien.net.
Visit this group at https://groups.google.com/a/lists.one-eyed-alien.net/gr=
oup/usb-storage/.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/345c3931-0940-7d59-ebc6-fa1ea56c60ac=
%40suse.de.
For more options, visit https://groups.google.com/a/lists.one-eyed-alien.ne=
t/d/optout.
