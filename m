Return-Path: <usb-storage+bncBDUNBGN3R4KRBE6PRGYAMGQEOHVQXLY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x348.google.com (mail-wm1-x348.google.com [IPv6:2a00:1450:4864:20::348])
	by mail.lfdr.de (Postfix) with ESMTPS id 492D188BA47
	for <lists+usb-storage@lfdr.de>; Tue, 26 Mar 2024 07:13:40 +0100 (CET)
Received: by mail-wm1-x348.google.com with SMTP id 5b1f17b1804b1-4147faf154csf13364885e9.2
        for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 23:13:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711433620; cv=pass;
        d=google.com; s=arc-20160816;
        b=S71vyEjnvv5x05oe8sN3zZf+CW8BVvKcU/xUGuKUOYnXf0JotfCsWkTuzRlejX4q1I
         lqjNEviXH/l3oYE+h2IFmFGTso4dIR7r0f1BfHv7QfRFTwrvyL8ggncB+Y8P06uo/R/M
         rjPZ8ZBWenuViAn/yBxWsW+280UKV/vnBtABsMsz9kz8xqmY9WxXE49AuNEC1U/EYROx
         blbnf7zIRZCbEVOZIhw6fKbsZiN9kYCdSUSlQcl1CG1QpD2pXD71m5CjXUeQNZPCbPO/
         VDO5dwKFhaPmX6WeAFnNdhOlgl6D68t7/ibmwDIxJLMZfmKhrxkfTA3h4P8yy1BCkDdE
         ub4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=aaeY/5DzuV3n5VMNPGpfRZi1WG7vpITQ8Gi+Nht0Lj0=;
        fh=g6LVLf0GQf7IKPeta77CI5kE7N6krQG6wlV7VBn9QWY=;
        b=hpGn4EebtD57hofdIqc34P0Ts6yCdgH/ZvLf7WBZwH+5srrVJk3EwXn2dMydNBf+ES
         i2vxaHW+Yo+Bcy91DpkoRrlQ9/zmWcY39hLIMyL7YQ0XsO03as9DVJoR3ugxiH2CLZ+d
         8V/e3YudSTGsmDAlDaI1Gaymsd6CZzv7Hp0ArOSuZcWgFZRaDJ8zrBzCVutNJtGfF8OQ
         asdehhiANXcDlSGqtVQG1CBmHLMUElAqI8U7vsIuqBYvX5wyJCwUlprqOry+C3I6Eahf
         j1tV/6CLGGo/oTtSUcqdIyblqfBd7IPlMK8QUfDW50pDMIlWNLdTT0lICbjcGEodU/VI
         ZTkQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711433620; x=1712038420; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:user-agent:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aaeY/5DzuV3n5VMNPGpfRZi1WG7vpITQ8Gi+Nht0Lj0=;
        b=N5M4fd/FSu0rGcMCuPQugOQItn4xDeEOJ5VDjHjucfOiDB/gIvn3eLsAdD2CUPmKwA
         wRtnxfPqCPs0aWVFVpThFjJtYLjVL1XYYGunBtEE1yWnx1aWX7r6UuetOPqJX+srOJHh
         j5kdeWW1YMCmxGufHPXXoIEa1DHkmVgFeClPg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711433620; x=1712038420;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:user-agent
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=aaeY/5DzuV3n5VMNPGpfRZi1WG7vpITQ8Gi+Nht0Lj0=;
        b=k/8UaMAnwXjhQLjjwNfkiuvQKVaKdNumap5mNhRKedvWv61K0Mqot069d35bupxCeQ
         5QnYKf+rKLYvVZcAmlsgzpTjrOE1tHSl9e0umJeTxlUX8vp8uLstyp7DrtbcIKsNIpI4
         X1g+ZEhdZO0IwDYdC1t5n+mXSquPW1hVjuzuQVaOebPAfrgH7sbFqN0h6fQwCiU/YiVw
         d5MuJiUhcpJrfCTxKcS/X50PWn/6C3Gz+eERCE1azypLhuQaiZ8267aAd0aPia/cxsaP
         FJ4Q9EdDkesHul3+1whnHtF+F/kTlro2sFxoSNMEBnVhzesl0x9oxhsykrK5iuAlOUSv
         FGMg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXbQhwMdOBU1cguWM9DnCD6/STJucJ6eN/vXxkrCUjfMk/kSf9tZ28FkdVaat4m8fBea1RrmconYx2X0PLvbVGqXepeTDsAW0Rh
X-Gm-Message-State: AOJu0YxDQDdUR3fPHmhgeP9sfn4c7VOWG3qwkM95mOr3YC2lv3kJW6ar
	VWrVT9mBH1n/eaj3mLa60lUooYpMLFGuTvvGMhE9dGc/2Ob6BVFMWrMM6ciiWxw=
X-Google-Smtp-Source: AGHT+IF4rfUE1gbxNcq+upfoAAqtZ+g8s1I4ZSxSh2//OilNBecXGpwdW64p82Fn+NHFg9ltH7s96Q==
X-Received: by 2002:a05:600c:1f84:b0:414:887f:6167 with SMTP id je4-20020a05600c1f8400b00414887f6167mr4702832wmb.7.1711433619832;
        Mon, 25 Mar 2024 23:13:39 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a5d:4047:0:b0:341:8f4c:d1da with SMTP id w7-20020a5d4047000000b003418f4cd1dals1837360wrp.1.-pod-prod-08-eu;
 Mon, 25 Mar 2024 23:13:38 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCX/xZ8hqB5Ggu/dgwcCgpM1/glmxvSqOLPR9RFzlzPncnEOm3tcU6s7dd1qZJzSHqu6RbXtjF00ylPXfNKhd4GVbdghQAIe0HwZg8i7AORBO7w834g=
X-Received: by 2002:adf:ef4f:0:b0:341:8a09:1258 with SMTP id c15-20020adfef4f000000b003418a091258mr7014199wrp.23.1711433617736;
        Mon, 25 Mar 2024 23:13:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711433617; cv=none;
        d=google.com; s=arc-20160816;
        b=SyirYaOMPbYry5WwiuWPv+qwvdZYBPxkX99WeYANKEHr4yaYsXJpKecyhfmKmWPGl3
         ZKRK3K/3mjugnlNr1NL0bPzTekULHuMksQUBEa8n441sSATAVo60f9LILVj/Tr5hzJZD
         aVnkxKuQtCslQlAQIGoSmAiWUzqtxO9JcI59omdy3aNfNQIethGM2JaMjSbPJpuf/yP9
         2M3oVF/drZAM3KLRz4MotY2tDzb0qQQlbFOQ5ObVGaZnxCPzpOCdMhtYOCTMLZkHZAW1
         t/QDD9PciqYHByY6lvsAWOETVuIPIB2KzjTU1kJNeLtoB/+EXYZ+EZR2ku5czkguaTSr
         k3iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=TaqrKAickkEpZy4N5dpDLmCjJXiM5JfW2BBVBU6k0xY=;
        fh=rGclfsX6IVvLNBcVa+osytPbgqjudZGOzaQywEyEf3Y=;
        b=vfw2J6LuxxAH9sxPEa39exvN7sextgYOoi4YnFZKJlC32+LtP4I6tkbNMjBDlQD4+6
         DCT4eJ4ScKc9U0g+4x/+NWHhGqk7hv9ocmIXAy/h91pJ9q2Oy7buuBawNBzQxPIUWMa4
         qCAlz5IMULUKHgzRj+YUx6ivjWzWN1o/tIjN7QLnLRPwJEBG549u1+wBV4qkP1ppIMCh
         QOixXMtrmDKrwz/pvHw/Q5VjDFBlb27GkycbitEu2cbUp03GPlpjSFPohhK1qyCjMU8T
         blbEfyAoet2/0DAD9YmMlWHzWXD4f+WTihhLTysavo/EscCZNVm4kbOdZaqip+3QKaWA
         xiww==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id w7-20020adfcd07000000b0033e7b7ba203si4671900wrm.899.2024.03.25.23.13.37
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Mar 2024 23:13:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id AEBC068D45; Tue, 26 Mar 2024 07:13:35 +0100 (CET)
Date: Tue, 26 Mar 2024 07:13:35 +0100
From: Christoph Hellwig <hch@lst.de>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Niklas Cassel <cassel@kernel.org>,
	Takashi Sakamoto <o-takashi@sakamocchi.jp>,
	Sathya Prakash <sathya.prakash@broadcom.com>,
	Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
	Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
	"Juergen E. Fischer" <fischer@norbit.de>,
	Xiang Chen <chenxiang66@hisilicon.com>,
	HighPoint Linux Team <linux@highpoint-tech.com>,
	Tyrel Datwyler <tyreld@linux.ibm.com>,
	Brian King <brking@us.ibm.com>, Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	Mike Christie <michael.christie@oracle.com>,
	John Garry <john.g.garry@oracle.com>,
	Jason Yan <yanaijie@huawei.com>,
	Kashyap Desai <kashyap.desai@broadcom.com>,
	Sumit Saxena <sumit.saxena@broadcom.com>,
	Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
	Chandrakanth patil <chandrakanth.patil@broadcom.com>,
	Jack Wang <jinpu.wang@cloud.ionos.com>,
	Nilesh Javali <njavali@marvell.com>,
	GR-QLogic-Storage-Upstream@marvell.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
	linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
	MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com, megaraidlinux.pdl@broadcom.com,
	mpi3mr-linuxdrv.pdl@broadcom.com, linux-samsung-soc@vger.kernel.org,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 10/23] scsi: add a device_configure method
 to the host template
Message-ID: <20240326061335.GE7108@lst.de>
References: <20240324235448.2039074-1-hch@lst.de> <20240324235448.2039074-11-hch@lst.de> <6199c70e-f0a9-4756-b3fb-106985c41ebf@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <6199c70e-f0a9-4756-b3fb-106985c41ebf@kernel.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
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

On Mon, Mar 25, 2024 at 04:38:43PM +0900, Damien Le Moal wrote:
> > +	if (hostt->device_configure)
> > +		ret = hostt->device_configure(sdev, &lim);
> > +	else if (hostt->slave_configure)
> > +		ret = hostt->slave_configure(sdev);
> > +
> > +	ret2 = queue_limits_commit_update(sdev->request_queue, &lim);
> 
> Why do this if ->device_configure() or ->slave_configure() failed ?
> Shouldn't the "if (ret) goto fail" hunk be moved above this call ?

queue_limits_commit_update unlocks the limits lock, which we'd
otherwise leak.  We could have a queue_limits_commit_abort, but
it seems a bit pointless.

> > +	 *
> > +	 * Note: slave_configure is the legacy version, use device_configure for
> > +	 * all new code.
> 
> Maybe explictly mention that both *cannot* be defined here ?

Will do.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240326061335.GE7108%40lst.de.
