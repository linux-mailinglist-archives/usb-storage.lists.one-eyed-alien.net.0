Return-Path: <usb-storage+bncBCZNB4MJSMHRBQFN7G5QMGQEA42QSWA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x847.google.com (mail-qt1-x847.google.com [IPv6:2607:f8b0:4864:20::847])
	by mail.lfdr.de (Postfix) with ESMTPS id 29231A0586D
	for <lists+usb-storage@lfdr.de>; Wed,  8 Jan 2025 11:43:14 +0100 (CET)
Received: by mail-qt1-x847.google.com with SMTP id d75a77b69052e-467bb8aad28sf180927791cf.1
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jan 2025 02:43:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736332993; cv=pass;
        d=google.com; s=arc-20240605;
        b=A1iojwWTc2RfAwtpum05gUQPk7E86XbVSStRUpxj8jF+Tcfiry9aXo9RCdLwE6VfcT
         od4dWdKEunbAwBGt54Pcex8mlVaZV1Xuf3+rHExvGYJQlE9PEtBJgoXpAuy0Sv0O6Jry
         rU1Iwymvk5lmD58RC88wLhz85Xj2SQjJwx5L1Ik5kwtd4XVpIwMouXSLfWM3W4CqXCzU
         VhwtQbyhD8UGB5VdO6WtlvnmCoGJr9Ah+TttGj/0ymDTGMzlNypATwqCLcLPVjg2Y++X
         2gOc3P6n+mSfp7i7wW9r5qA+Wi/nDQ6qlkVYCYlZ0fRVsPhnjW1z/hEGl1hlAypZ9Apa
         D0+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=6v6j42W0wIYt5PGj0KZDqetQrGbhw9JlVZtXzt8ilo0=;
        fh=MTJ0OUr8ZICtC5UEb8tEXuzG7uwEVDNuC6FpXIfpCz4=;
        b=Z7DKsqUl+4940K896UqLZS1uwI8ig34gJ/6x7N8VEV+b6k9aiF3H+7csMoJW3xGK6A
         wbB7D0/aFdY9vFxyVXXtEoarEWfw9sfTTbXm6I7gme1GFZeFGbqDx6OxcEwppXYgnDv/
         HTIOrbGbp5I6OkC5gQWUK9bmt/1aE4iPfjFR6taGsVs22PabW5tlNcjxA+b8TfkpfHkK
         gwGxip2INgZ4Se4rXB+itd74Imaq8ivM584mzgbQSEITuTUKnRMNMrn03qB2bV0dBzMv
         7vv6/FY67O6uf26i5W4RI7r6esdlWQPgWiEUQznyJEsswH/X5HkcvcDO8XgjZQzGY1Y7
         AcAw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=CHZRlfPr;
       spf=pass (google.com: domain of ming.lei@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736332993; x=1736937793; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6v6j42W0wIYt5PGj0KZDqetQrGbhw9JlVZtXzt8ilo0=;
        b=XgFxLs6MYCF/UH3OfugFSuq386iYJROT+Wpi0D+qrArugQl0EUO/akZtvONXgjfi2/
         9H/V50JSI8UKg4OpEja8lk1+hsENSdwJcImyYWQUHw3WAOw8ecsE1E1f2f+eUYFCLnO/
         cswkuWHRpuKSQElousen2yzyXpdZuKas15o4E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736332993; x=1736937793;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6v6j42W0wIYt5PGj0KZDqetQrGbhw9JlVZtXzt8ilo0=;
        b=anjXliD3j91S7QbcevNnJaf9GPFtzbO4Ve9wFramb+3p0/NSkhY+SrORl/5B2Km8sa
         zoeUJQ9mqmFeCahGecmPSwJomZjRRn/F0pSF0EtKv/jVjcwt8ib0NcdPX6xgablkx+bi
         SfXpFHBjN0LXNfQKXr+oLq2HkLbsMfcCB6AdraEDYy0QnYV6azBwtrMWf/vOK+Z2GBc6
         XRuxi58+Ls3xVU/hYoFMrI7+zPHAT+GKnxWwKZS4rWwHpmsImdH5k+zkkGdDqMN5RX3K
         JH1TK9f0LVc+kvmG0mefFS8w7Mn9jewWbxsjm9tlREwvyp0wzGO/TyPO/WeTsGnMv3w8
         z87g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWKxClc+I5ANi86UZpP9R9FCydN/PtBxLpxjuCbmLNUOBTdY233vUol4Pf387a7BMnzlMxT7Q==@lfdr.de
X-Gm-Message-State: AOJu0Yzm1mEr+cbCrol7xz8/dcvjb+0yee2ZFhX93o/1ttJdHYyUMpMf
	BqdYxWMKkz8gQfUhhbW+OtI1hoxeWlTWURTYf5SsDtaqly3nsOxcFUf3tqV+KXM=
X-Google-Smtp-Source: AGHT+IHSNEfOhmqUh1RN1hydKMoAF78GKMgXhS44DO6A7FuofhH3j6rG0b1b1xIcEIVtTBsbTvHiag==
X-Received: by 2002:a05:622a:130a:b0:467:6c18:9855 with SMTP id d75a77b69052e-46c710a93c1mr36933891cf.27.1736332993058;
        Wed, 08 Jan 2025 02:43:13 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:5205:0:b0:466:ac8d:733d with SMTP id d75a77b69052e-46a3b05aebdls29396711cf.0.-pod-prod-08-us;
 Wed, 08 Jan 2025 02:43:12 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUJmxPJgAcxc94rB9F13Rf1cdx75U5E9sddP3ugz4goC3kjSO72J5gBgS+4UqLqXP3ERaGEXSI+QK3n6g==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:2906:b0:7b6:d8da:9095 with SMTP id af79cd13be357-7bcd96e8cc5mr332225885a.13.1736332992167;
        Wed, 08 Jan 2025 02:43:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736332992; cv=none;
        d=google.com; s=arc-20240605;
        b=EkNJdbCbpXchy97RK6yuXMszXvtZ9CxS8WQHf00WY5ZCVHDWmuAVHvEMluDBmrcZqr
         r0ZOK7r3hGTbbF0L5gInY+4vFQYQor8Wvgeynf11eBGzhBSJeKeejcsiJmbFkVwgAzNp
         xlbZElg7OYuAT0W/+rcxlrFFmr0OmGPeNpnmw37bpthp0G4PcV0F/Qg0VUM3237AsuPT
         Y/xCy9IlLqeeCQou8cSTzRDUxje44IJvYOP5JQyy5/qGB/GdTwkeRpvGEsBlsZQyXv2p
         NTR+ZGXYZsjd47bWBG/C84aLpriG/bhyfJE1yqNwlBzw7pFeyH9tm+BoXFdJc3J6P7m/
         +Y1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=GLX9dDlTVgmbVGGd6/BeEkeXDnHYku8g8v3tdeUuyVA=;
        fh=qxJjebJ4kXQxwqDHz44qjxVnY49wm3hZvrgJ6gPRbXw=;
        b=TBQNd5tBRUJDm2Qo1+tcH7yBM3og+XPvtQnKB9gCPU7fEIiNN6jpLWPloaV0UQ62sP
         TO7wU5av4pIOZ0LOmVtYrt+KQZO7A/er0AJM9nRvxF3hHn4/njqmaA+WGV5S3zbPA5oi
         3Mteo0X6qA29qmcHLTQePYw1yT+QwDHxFDslxXGq8iP5HgIoXSkbNdM35N4pQpMmxHWj
         NYJ92zTb3vAzoa8bznfotK8k7iH6qUjTKIOOSCo0NrgM57RjU/900dh6JLEy1G25upj+
         A11tfCChaJobJUUlSP0OAzri+TJWUcGYZW/vg8ttKj+qu0fwAUm43L5JkPOorhHuLDJf
         ledw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=CHZRlfPr;
       spf=pass (google.com: domain of ming.lei@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by mx.google.com with ESMTPS id af79cd13be357-7b9ac4f29dasi4657155685a.519.2025.01.08.02.43.12
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 02:43:12 -0800 (PST)
Received-SPF: pass (google.com: domain of ming.lei@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-370-IIXNRp38NQayN-I7ZSObOw-1; Wed,
 08 Jan 2025 05:43:08 -0500
X-MC-Unique: IIXNRp38NQayN-I7ZSObOw-1
X-Mimecast-MFC-AGG-ID: IIXNRp38NQayN-I7ZSObOw
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 61EBC1955BED;
	Wed,  8 Jan 2025 10:43:06 +0000 (UTC)
Received: from fedora (unknown [10.72.116.74])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9D150195608D;
	Wed,  8 Jan 2025 10:43:00 +0000 (UTC)
Date: Wed, 8 Jan 2025 18:42:55 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Christoph Hellwig <hch@lst.de>
Cc: Jens Axboe <axboe@kernel.dk>, Damien Le Moal <dlemoal@kernel.org>,
	Nilay Shroff <nilay@linux.ibm.com>, linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org, nbd@other.debian.org,
	linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 09/10] loop: refactor queue limits updates
Message-ID: <Z35Wrx1LxOScyNQK@fedora>
References: <20250108092520.1325324-1-hch@lst.de>
 <20250108092520.1325324-10-hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20250108092520.1325324-10-hch@lst.de>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Original-Sender: ming.lei@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=CHZRlfPr;
       spf=pass (google.com: domain of ming.lei@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Wed, Jan 08, 2025 at 10:25:06AM +0100, Christoph Hellwig wrote:
> Replace loop_reconfigure_limits with a slightly less encompassing
> loop_update_limits that expects the aller to acquire and commit the
> queue limits to prepare for sorting out the freeze vs limits lock
> ordering.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Reviewed-by: Ming Lei <ming.lei@redhat.com>

Thanks,
Ming

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Z35Wrx1LxOScyNQK%40fedora.
