Return-Path: <usb-storage+bncBD3JNNMDTMEBBBNWXOYAMGQE3GSIZYQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1048.google.com (mail-pj1-x1048.google.com [IPv6:2607:f8b0:4864:20::1048])
	by mail.lfdr.de (Postfix) with ESMTPS id A8CA8898CA4
	for <lists+usb-storage@lfdr.de>; Thu,  4 Apr 2024 18:53:27 +0200 (CEST)
Received: by mail-pj1-x1048.google.com with SMTP id 98e67ed59e1d1-2a2c80fb803sf1010975a91.2
        for <lists+usb-storage@lfdr.de>; Thu, 04 Apr 2024 09:53:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712249606; cv=pass;
        d=google.com; s=arc-20160816;
        b=O/Z79Fu49y1zESddRPEVcxrooxzKDWhwiJW3HDLDbz1VClwSN8ZVE/Ll61JeIIkRAy
         HZHJQTlXGJ08J2uXwVpZhzzld5VQu9t1NzC62Y2UbYt7EXcn8YM8V3MZ2HAcdACsgIBM
         oNyNmaFDQ1ovW/7w6d0SzL0cYVpJkist2oAEC3oeBswIkbFFr1Oe68EHAA2ebBmc1Al1
         qolxEsAD5HjiXOmOt4aviIQm40T3GhKKwmqD9jnygXyh9p0DVsTeCABiorfqUjPamRPb
         WSkuX4wivV/7j7bJ8rLmN+ZR+LJQ9eKue9B6gwEfxjNkBnmLvHn5ArVM6cyeHBqNLCj4
         QqEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=FZaJKZdSMgYfwrRZpKBXDf0Kzf1l/Pc3qG1DWbGIdQs=;
        fh=rJWeJg9ptFiCrAoCrTsuen60nVHLdHFS5CFTDwgZ+LU=;
        b=GQbbwoNlJck+PiIJv7rEcefVjPg+vNCnNvO75Nta66NnkWUZ9nbvNjfz25n6+rlQVS
         NAjV4O6pHKDZFixjZD3z3XTcSyzIdkinKQkpinDDBV9KeWXCRb0/ZERMdpdoIKJxA9o3
         nrzpTARnTQvpVBQqOOLv6TjjBlcDIfLbZdJdWLKSo/7WiFuy542YSLLkLSxZALJIUz0d
         wKUzZYM5DCpZRu+oQUpHVU7hoBhBFP/iUQq0ryir/1ROLDqrJ0GcKWZUmO5Pl0Nz5y21
         DTI9ogpuTXAlsCJd/ulfd9n70b/JIkM5HSChupLlPBhZfXllE/K0RC79r5dhGgQC3V/K
         jNwA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@acm.org header.s=mr01 header.b=x6xybBpb;
       spf=pass (google.com: domain of bvanassche@acm.org designates 199.89.1.12 as permitted sender) smtp.mailfrom=bvanassche@acm.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=acm.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712249606; x=1712854406; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=FZaJKZdSMgYfwrRZpKBXDf0Kzf1l/Pc3qG1DWbGIdQs=;
        b=QxUfnW/61+SqHIFQFiwg9DEl4yDkQ69FE/OkW46G6tAGb4AP4IvRYjfN2/DYRwfyaY
         J5jIIzwpEG+dp/e21LFHDPquaa+AjLe6tLgFCTtTGdmqJBDI76vBRwUZ4Y7xuE2/IEo7
         DezAg82PEsHg+RPz4Vr+T9Pkq7EtUlGRvrhrw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712249606; x=1712854406;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FZaJKZdSMgYfwrRZpKBXDf0Kzf1l/Pc3qG1DWbGIdQs=;
        b=Wt7uKBxySKETmkCfl1Tc9b2WcJJUa8rlkK6ECVK9h/2KmBvdf8yB+B/j/gRlBwQUAD
         /vhbggx9cFhKCv15MIRAqFy326zBs9sMlC8PB8g7yg7NVNi4H11JYQ01jzubLer7k4GL
         zIf7zMO/bpBCvM3SNbigpVhQCYyAhzl4LwAHvZJgPtTebfaado95lKzonjcWxW8LU70y
         beEIEfJ6yVHM8ERWjS/yYNPzODhIpRzi3XQr99js/Xz5TRVjXfDZX2pEaf2d/OaNzRYd
         Mg5rUz60USmW6ywCzrmiaqXwr59SlvKil92nHwTN96M+f7ZNRPubabitCQJlz1ZwkDE5
         owpw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWGEYcgWFUUUnS+0uQBAb7303z7CKKu8RhKh9OBfPh3bRc54w1UNDTuWb7mEIM5urcaogUamMW07z25IWZGq/GCKbL3NmqXzgO3
X-Gm-Message-State: AOJu0YxJIWCGeAAwYgwlj2fTaMokUEEV/iloGl4W4PehT2WHATJwvZNs
	7croDmEsj6FDoK808ArfPW43sgwtJJbqWkjBtXZW4SRr27AQiAv7uzXCM2tMv0I=
X-Google-Smtp-Source: AGHT+IFX+uI4eYBENGuiFkGfs7vwASB+K/KD/EkPtf6Y52AJoaiYM9chE1Ff0M8uTNQjoG9pLJP4fg==
X-Received: by 2002:a17:90a:bf8c:b0:29b:b70d:463a with SMTP id d12-20020a17090abf8c00b0029bb70d463amr2947536pjs.12.1712249606023;
        Thu, 04 Apr 2024 09:53:26 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:6881:b0:2a2:8888:f263 with SMTP id
 a1-20020a17090a688100b002a28888f263ls733845pjd.0.-pod-prod-06-us; Thu, 04 Apr
 2024 09:53:24 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCU87DO/6ooXoEAwxBG1kGTRUguSzgocdKG9XABa9aVSB2vS4U8TINZkPsTrY4MY4Vsbk8d7f2mR2AyVJtRPDuHcNzC9IXw/55VjqdUKViBNEgcRwv0=
X-Received: by 2002:a17:902:f085:b0:1e2:a5b2:ee0f with SMTP id p5-20020a170902f08500b001e2a5b2ee0fmr2422365pla.24.1712249604472;
        Thu, 04 Apr 2024 09:53:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712249604; cv=none;
        d=google.com; s=arc-20160816;
        b=XAYufUpUbf193CoYw60lXlx9NiKRniYlYjHaUf2o1b5W7xqFflpWhvHPojhL+705oW
         AP8h5c4xQjPLDyHN9h7QUhOj/XNEiZqaamdbnW4yhA0hATQ4XRJZbE3JMTumk6v4SfWk
         kaXWDOIsrb3xE2H/QRzOrWY+r0rumGfI+8R96KykNXMQTIQYAQlBJqMG1dZm6wpd47QM
         8VZ5CeRS6aaEIiNUx9aJw+ObJScp3VB/eeQYnYllEmaBCsrTPCr2BLpSgqwqHa7oZADK
         kfjIxt7IKeDRgLGkNigjQ0oLqlqniXmKvtKvYO9d35mUObAVKREtTXAGwRTXhpX3bNF9
         MVEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=ZDHIypNAZMTo+VzP8iaJudcx+oAEkGDyDOLcGqvzK2U=;
        fh=d+NN1/9nDuwnwJoao3XCncS9eXV4fvw18mXgsLtMD5A=;
        b=t7ptxOCII/Ml6FK9ARqBv7HP/VjZhhj3BQtzuNmJKF9PoydvAJdssqw1XJBt2xwdjb
         222FuS2u5aHV4Gd/2NYtjcwWmvpZaa8VC6BNz1v+zlMc+CKdt62xPkEeWFcoYHx3HyfE
         seYfoxhsiKPiUUbWkJar6tHbNGS4Vcqmw/dqHYSPbOIhgEam87TX+GUwDO2IMLPDjF6W
         LHJqRsVzqGwy3C51zLVX2z3tJC9WMVGppdU3G4MnlnLteXfPo8g3YKMWW7ob8t/n84+n
         bowmSST85e8yXeQOFeaRf7pUgu7BIDWvKStSxmem1/QkHQg86MEnB/YizdQKdAZuZtvx
         6yJw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@acm.org header.s=mr01 header.b=x6xybBpb;
       spf=pass (google.com: domain of bvanassche@acm.org designates 199.89.1.12 as permitted sender) smtp.mailfrom=bvanassche@acm.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=acm.org
Received: from 009.lax.mailroute.net (009.lax.mailroute.net. [199.89.1.12])
        by mx.google.com with ESMTPS id s8-20020a17090302c800b001e2a44ff6c5si2375256plk.289.2024.04.04.09.53.24
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 09:53:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of bvanassche@acm.org designates 199.89.1.12 as permitted sender) client-ip=199.89.1.12;
Received: from localhost (localhost [127.0.0.1])
	by 009.lax.mailroute.net (Postfix) with ESMTP id 4V9SP00GDKzlgTGW;
	Thu,  4 Apr 2024 16:53:24 +0000 (UTC)
X-Virus-Scanned: by MailRoute
Received: from 009.lax.mailroute.net ([127.0.0.1])
 by localhost (009.lax [127.0.0.1]) (mroute_mailscanner, port 10029) with LMTP
 id O2BQcxkjvo_y; Thu,  4 Apr 2024 16:53:09 +0000 (UTC)
Received: from [100.96.154.173] (unknown [104.132.1.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bvanassche@acm.org)
	by 009.lax.mailroute.net (Postfix) with ESMTPSA id 4V9SNd04btzlgTHp;
	Thu,  4 Apr 2024 16:53:04 +0000 (UTC)
Message-ID: <bb458d47-5b5a-43c0-8cae-211b82b16309@acm.org>
Date: Thu, 4 Apr 2024 09:53:03 -0700
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
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
 linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
 megaraidlinux.pdl@broadcom.com, mpi3mr-linuxdrv.pdl@broadcom.com,
 linux-samsung-soc@vger.kernel.org, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net
References: <20240402130645.653507-1-hch@lst.de>
 <20240402130645.653507-2-hch@lst.de>
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <20240402130645.653507-2-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@acm.org header.s=mr01 header.b=x6xybBpb;       spf=pass
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
> Drivers might have to perform complex actions to determine queue limits,
> and those might fail.  Add a helper to cancel a queue limit update
> that can be called in those cases.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   include/linux/blkdev.h | 13 +++++++++++++
>   1 file changed, 13 insertions(+)
> 
> diff --git a/include/linux/blkdev.h b/include/linux/blkdev.h
> index c3e8f7cf96be9e..ded7f66dc4b964 100644
> --- a/include/linux/blkdev.h
> +++ b/include/linux/blkdev.h
> @@ -892,6 +892,19 @@ int queue_limits_commit_update(struct request_queue *q,
>   		struct queue_limits *lim);
>   int queue_limits_set(struct request_queue *q, struct queue_limits *lim);
>   
> +/**
> + * queue_limits_cancel_update - cancel an atomic update of queue limits
> + * @q:		queue to update
> + *
> + * This functions cancels an atomic update of the queue limits started by
> + * queue_limits_start_update() and should be used when an error occurs after
> + * starting update.
> + */
> +static inline void queue_limits_cancel_update(struct request_queue *q)
> +{
> +	mutex_unlock(&q->limits_lock);
> +}

At least in scsi_add_lun() there are multiple statements between
queue_limits_start_update(), queue_limits_cancel_update() and
queue_limits_commit_update(). Has it been considered to use __cleanup()
to invoke queue_limits_commit_update() when the end of the current scope
is reached? I think that would make code that uses the
queue_limits_*_update() functions easier to verify. For an example of
how to use the __cleanup() macro, see e.g. the __free() and
no_free_ptr() macros in <linux/cleanup.h>.

Thanks,

Bart.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/bb458d47-5b5a-43c0-8cae-211b82b16309%40acm.org.
