Return-Path: <usb-storage+bncBCZNB4MJSMHRBRFC7G5QMGQE4DTYA6A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x45.google.com (mail-oa1-x45.google.com [IPv6:2001:4860:4864:20::45])
	by mail.lfdr.de (Postfix) with ESMTPS id A19DEA057EC
	for <lists+usb-storage@lfdr.de>; Wed,  8 Jan 2025 11:19:50 +0100 (CET)
Received: by mail-oa1-x45.google.com with SMTP id 586e51a60fabf-29e5f045c93sf21386900fac.0
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jan 2025 02:19:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736331589; cv=pass;
        d=google.com; s=arc-20240605;
        b=FFREmOb0h5znQB7BIU6/49ZwnjcDklr74rqdkfGIr+s2b0odtw0q233TVB1q0HapnK
         PXq3+Pw3zJ2FddcT0FH0q6Hlm7fCFSitIDN7oY0dpSIIDuhFBS327+q+HJnS3lY9OrqJ
         zFIG+sqldBocjIvYRnReX741NKApG3wl76WGA8V0+/TXQ6DmVC8v24PttkkysvIW+wpl
         k9f6Ua2VGjFnCfbglnC1obMYfJYCnQH15ACtIxHyRT+iiCbr6Tqk/YOb4iQsoyzKePFH
         nfjM/KwKZYcItmBQSS7AQp5jPmpNQ6Vei3TJUFfmf/g01HmFXDSh/01zYLGuAzPumQU2
         rU3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=JWTAnGT+vq4ilTjlGQ5ku695J8DSJEdQW2aVS7n1bVM=;
        fh=hk3A6NUNktcJzXwR/yIqDJvEwpZgTGVYN5VOKgFJ+Pk=;
        b=SsDfJuqORONT1Pz6nLVrTScEmfj4vjrsPPkYkLb1LgBuCQDx/jOxqwPvTcqY29JwZg
         1F0LEiqqmeEwl4CCJORVEP2Qr3E/A0W/rPzoSxPSz1MTuObQ/KGUirx9o7kPRFGDSezj
         yVWEx3gAxa6e4+Pww71A0i/of8NcwrwYs1AHxUv5U4tEtnB0O1Jz1Gm7+V+PFMm8XQLq
         4DTGSPDFbR7HytmzVuiw59TxQ9TnHiLs4sGIA+0d/1BsLmvQZyDkGhbvt0fp7Dstt+pZ
         kXhYMnoc1g/SxzkwiVxCKZmFPQdAr/lF+tFG311LjVE+trJjX7D5vr8mKKKXqkb4E1J8
         G/xw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="G/1D3Frl";
       spf=pass (google.com: domain of ming.lei@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736331589; x=1736936389; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JWTAnGT+vq4ilTjlGQ5ku695J8DSJEdQW2aVS7n1bVM=;
        b=Jfr2bB6mL8Yh3Sr8iA0kMyz5VfBp6txwyQ7VSBuQrHcnytv83S6wyRphEFsm6FgXs1
         Pl27BcsIJDjv2heORXl2yUWTxfq/q8xprLPslzXxG14z10D+8Zid6G2Mx2879M1xQuwH
         B3iZ6rC6NqTRJowWnFaGHDMYIIH6G+WNlQGlI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736331589; x=1736936389;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JWTAnGT+vq4ilTjlGQ5ku695J8DSJEdQW2aVS7n1bVM=;
        b=HNow9Y4QAqRGtB7kOf4Dwtoslo6xuHIo+kApyyQIX9MLI3TG8CDbkAKDocZLoS2da+
         KdCyVWhE0dQoFIErSYgV5yOa6MuaJFLdh1BuEtus8TJN1mPcxkKKBWXa2prFnHnIefif
         zAXKuLaRY4MI5O1CAN7TwCmhHzXTdboq/miN+SL6gqXN+HRgTap4WT1aidB+H7zwN+Du
         hqyqh/gWMw/r0kkmR8KuQDYpS/YtYaSiptSFVJ5eCBF6kOkhzlzeDWTgR65mct/N2KbV
         R4EL7XdwuwlUiViKzHQwAitEWblz5b8NkVCLXSk4CRuHUbAjIfeFh20/pmbeoLprb0fO
         pXfQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWiieRsxPDG7b6t48yzyS2DNojcW5UoN8j0LE4dJC7rIn6P6x1QGviMchzmMLU6AnhLeyGRJQ==@lfdr.de
X-Gm-Message-State: AOJu0Yzc1axfdFXM3ekYm2OkNDrhMV+fGr+tqGUrvwn4NV/Vj769HMjC
	ObKOgJD9Dj36UTJiJbBFQj6CrrHxRkvEoLfWFxd48Qohc2D4c2qcs7HoB3XFq2A=
X-Google-Smtp-Source: AGHT+IF39ybkh3UHayWtfHsYh9lIrXpCVnLkyIaItRq92gJSCdDH4pfFPAjqsKhKtpSStUNwvdR8/w==
X-Received: by 2002:a05:6871:d08d:b0:29e:6096:c25f with SMTP id 586e51a60fabf-2aa06722395mr1189487fac.23.1736331589135;
        Wed, 08 Jan 2025 02:19:49 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6871:7b0c:b0:29f:aff3:65c8 with SMTP id
 586e51a60fabf-2a7d0d641c5ls3233774fac.2.-pod-prod-08-us; Wed, 08 Jan 2025
 02:19:48 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCV3kDoi2McwfuhRiI2yn3TGo791O4pmeKaHTCGE3Hr7u4Nz1kD42dXmrC/TFA6RAN6cToJCpeGFh8L+Ow==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6602:3985:b0:841:a9d3:3b39 with SMTP id ca18e2360f4ac-84ce00757d8mr243636039f.5.1736331588295;
        Wed, 08 Jan 2025 02:19:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736331588; cv=none;
        d=google.com; s=arc-20240605;
        b=L9VXZw8honVIvcTc2YvdjPtkPFEkqif0LmjPqwWBmRHcffTz/IHzTCRoxgOnJWmry9
         /rrY7lYherjVGdaMKi4tuhVi3fu94220Drn+uMNKsjQIwIeSJM+bXfZu+3XVpbUJkb19
         WhH3bSbieFB8zt24jWMvIgFpO+y2xy+NRfM9dMcZum5Qfap+ek2haRmw1TMoKPKy7EzE
         YStt6P7voc1bbmRNe2VGDDS2brilDHS5RunbnaQ5HRkp8G1GrTS+fggMfqlA0z0SCg7w
         BZ979OMjXfIJu3Z21EWHTnM8mveiJjQ3hs9Zk483ruxJFZXOuXIDv/XW36yfIrWFmafz
         agUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=u/2KSdc12WgjZkHVfUJEDj5QbQ8qveiZeeuKVBc+PgA=;
        fh=qxJjebJ4kXQxwqDHz44qjxVnY49wm3hZvrgJ6gPRbXw=;
        b=HLNiyt5GISvYmxf95r24CLxaWao1gLyqkjx1bjZzUH9C3cIeQH+7ykQ75siGXUHbT5
         U2KSGSEn/obMD4JTBs0fDaHOX1wmWvso8IHEuIgQ1wib6+mWfMjIXdrglDDelfG+4lXV
         K016wf+qkCc3RN+DKIKBciba7Wdim3fdgk5IHwIEKyFvPRo0CepTqMFmwIJKy8TXMGPx
         cnPGy9bh+XxwBjfO7+DvpkXgyEyXk4JT4694johC3HhBm1TNDCBZ4h0FC5Si7fPdYGQL
         hWx6l7wywxqI11KB6o/goM1MIRbT+VVG+GcQ2AGJsqLR3z4tg33Rc0cjpjEvicehR1BY
         U6sg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="G/1D3Frl";
       spf=pass (google.com: domain of ming.lei@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.129.124])
        by mx.google.com with ESMTPS id ca18e2360f4ac-8498d7d8cf0si2016377239f.15.2025.01.08.02.19.48
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 02:19:48 -0800 (PST)
Received-SPF: pass (google.com: domain of ming.lei@redhat.com designates 170.10.129.124 as permitted sender) client-ip=170.10.129.124;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-675-ZvBQQE5qPc602emy9OkUMw-1; Wed,
 08 Jan 2025 05:19:45 -0500
X-MC-Unique: ZvBQQE5qPc602emy9OkUMw-1
X-Mimecast-MFC-AGG-ID: ZvBQQE5qPc602emy9OkUMw
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id EB3621944B2E;
	Wed,  8 Jan 2025 10:19:42 +0000 (UTC)
Received: from fedora (unknown [10.72.116.74])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 687A819560AA;
	Wed,  8 Jan 2025 10:19:35 +0000 (UTC)
Date: Wed, 8 Jan 2025 18:19:30 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Christoph Hellwig <hch@lst.de>
Cc: Jens Axboe <axboe@kernel.dk>, Damien Le Moal <dlemoal@kernel.org>,
	Nilay Shroff <nilay@linux.ibm.com>, linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org, nbd@other.debian.org,
	linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 01/10] block: fix docs for freezing of queue
 limits updates
Message-ID: <Z35RMhj-tyy_nSDF@fedora>
References: <20250108092520.1325324-1-hch@lst.de>
 <20250108092520.1325324-2-hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20250108092520.1325324-2-hch@lst.de>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Original-Sender: ming.lei@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="G/1D3Frl";
       spf=pass (google.com: domain of ming.lei@redhat.com designates
 170.10.129.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
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

On Wed, Jan 08, 2025 at 10:24:58AM +0100, Christoph Hellwig wrote:
> queue_limits_commit_update is the function that needs to operate on a
> frozen queue, not queue_limits_start_update.  Update the kerneldoc
> comments to reflect that.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
> Reviewed-by: Nilay Shroff <nilay@linux.ibm.com>

Reviewed-by: Ming Lei <ming.lei@redhat.com>

Thanks,
Ming

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Z35RMhj-tyy_nSDF%40fedora.
