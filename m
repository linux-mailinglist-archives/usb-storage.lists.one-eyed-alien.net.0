Return-Path: <usb-storage+bncBCZNB4MJSMHRBZVL7G5QMGQEPR6OB2Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x845.google.com (mail-qt1-x845.google.com [IPv6:2607:f8b0:4864:20::845])
	by mail.lfdr.de (Postfix) with ESMTPS id AF134A0584D
	for <lists+usb-storage@lfdr.de>; Wed,  8 Jan 2025 11:39:35 +0100 (CET)
Received: by mail-qt1-x845.google.com with SMTP id d75a77b69052e-467a409b8ddsf13617611cf.0
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jan 2025 02:39:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736332774; cv=pass;
        d=google.com; s=arc-20240605;
        b=jK3+rEs3Xa/Z26oW0vMl4C5wWqYNpRI84n9UPqkfQPsm7N416QsiwtJtWQ0MN8chKN
         ijgFytV7+I4nP3Hw2nXSLIFxfFt1orQqEAQKh0L1q5hEr25eF4Jih8nKwLoBzHZIyuhH
         6vX2IBaL7Rv0Gxdo4yTfYzNX0jNO7UcEP4jKBBUtaqGNXHgFkJrfkjhzD6LWO5Rx3i2m
         ASmRgN6Fo/mN2cz1l7GKFbofJ1vg4GqibT8oe1tLBNmGq9C5LoCbmxj95asOhgCux90X
         Efk+jo+h/tSNnN+1QfxFRO4liYbLyKufgLlQwM5ThJaKxP52/N5H95h/bYDSNYc1RJja
         GXjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=6Ftnjxc73WTtgzRZTmvyLEz+AWpzRXe8WkAiZFtTLKI=;
        fh=v880QP5l7RIUo53AOE6sFjb0tJyUZyo/kAbZqVQlOzA=;
        b=Vd1CxqSf6P1/y3guNd5Y8KFCXIik25kkifWZTfXPK3uek82YiEZ0/u7QgGM2niu1Tm
         nOSbLKCRoph82UZIkyRz+S4+mP+V9bjWQo3+b+8HCvtb/UzABrMIC3aR7UhXxb3g3z11
         b+LczaUTctuKyM53AC76nNv3maB8+Kq5ZkSdMPY1PJKD71Y5y1qo3pduNnGJqoaZd4Kv
         +Wt6+hdUVRdBdclGcYGauFhLj6v14GuGy+uvhSSVPV81Jb484i0hYER7To5AeZsX2fCN
         acpXSzf+JbXzSAyoRV7XbxW7RFrx9dpqCQvxKPm+elvVOeEHSBT3Fg5bfe1zHf+yJ1xN
         ppDg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="Tzy2g/q4";
       spf=pass (google.com: domain of ming.lei@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736332774; x=1736937574; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6Ftnjxc73WTtgzRZTmvyLEz+AWpzRXe8WkAiZFtTLKI=;
        b=Cqgn1yTzoOiZ1pgC/cnelLc34xfqH1z2F/7IyYhFMnNsdHu4mcFmtcvSA57DcEEWaj
         k08Tl61dR8/4PI5QFvOxaT5oUYpeuz9nkIAwD8h32wmmEh2dSe3jwbNB3G5RCFnUlNlX
         dN1ETPhfxXG/bID4R0lwRG9eWDJz+ACqcJ/Ok=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736332774; x=1736937574;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6Ftnjxc73WTtgzRZTmvyLEz+AWpzRXe8WkAiZFtTLKI=;
        b=Qoeuh/UObZbgQT/GnejNLG761yeGwaYraIBO1iiO879anRAma+0cP6KH2ythE4Fkrd
         DaLCXtSmP0bgD1EiDa7M+uRQPQPewRGhQFrRlA0A7cPtWcnOpi5eFOj265glLtJwtoym
         FZq5FbgHhBKrr9RZiaPKQ1mn5076UEVAp22n6A+3BcJHgsm43ZSOZdYTrtgeDi03m3/E
         gLq+kBCeJNP3JSCimbiGAc02J5lneVuvw6MJOu2OraSr7+bwn1GeMaUcM4ClAx+4xYbD
         nrOjBQudwo8rZ645UsygCNc6fyHkJyKW3+90KMh1YDnD/eLeQlKvX8vwFvumJrbNqw2i
         3vmQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUO0+U/ZTC2ojrrdfcPaVvT4FSRvbuxglNUxmVBzzdbPt8MeZv74IRwZtnoWrld0XR7wPTt6A==@lfdr.de
X-Gm-Message-State: AOJu0YxAgErTWxBe+wpcvbm4fORbQedsLC4XeklTFw08hDCRtUG7tj5A
	J4QmMZHCCx15KmySK+ce9iTnO03XkdOCC4W/dR66PwMMrP9rMpNAGFNPCHv0S28=
X-Google-Smtp-Source: AGHT+IFj0rTuyCmEYPOBsrqXstz81qYQAKN5aWmtLIfaClWndO1QcU93mDsVvZFy+bujj2XDbJIxlg==
X-Received: by 2002:ac8:574a:0:b0:456:919a:11e4 with SMTP id d75a77b69052e-46c707247a5mr43018031cf.20.1736332774639;
        Wed, 08 Jan 2025 02:39:34 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:5d0a:0:b0:467:84fc:9671 with SMTP id d75a77b69052e-46a3b17a6fels46587461cf.1.-pod-prod-00-us;
 Wed, 08 Jan 2025 02:39:34 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUdK885xa69EtBiCqtyo9h7wrfmFFr5e9872A8/K7tbL8LZDP7LW/aqsEHF2xRZVLbBwZC7E5FsTLFnOA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:4391:b0:7b1:5545:7104 with SMTP id af79cd13be357-7bb90248f5emr1025864785a.2.1736332773876;
        Wed, 08 Jan 2025 02:39:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736332773; cv=none;
        d=google.com; s=arc-20240605;
        b=IASlBr85PWytknNf2eT66I4A+9w2s68cygYh3yKTgKJnHWPy3CrC53bgUUOHr4DKJu
         F/tfiAkaSEaSJVSY0T24RbokrC9KSrk20ZJhKYkEpecdmuIFZpoaEDmVjoFu2bbwaf25
         sIzCbcL5/A/DS6+VBu5+dKacn9fsq/CKfHvjKpXUiIwZs0yp/RMh0lWcSnIm6fd/XqIr
         hMZKb9mC7TVs1uRZAf/0pumEAjq6BMb38uA3QDzWFgqXfuAXT9G0SG/lmDp6vglkyoN8
         gcaCjcadidqkV/lWaAvjn02+QpjJU5OyuiT00DEyYHsVcZO6+0Z6Hn+Hdcsgu5bPayny
         NweQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=C5e7qX6c+UMsIuToE357cYeqwuSYtBePWh3qPklcP7I=;
        fh=qxJjebJ4kXQxwqDHz44qjxVnY49wm3hZvrgJ6gPRbXw=;
        b=j4bkvAUOdasW406E1g7aVFxYQLRFfKWjYYMpfIbaHNGYARfpdN2wpzm2K5hve/MYbp
         Yi59VmsK2y7KRo9Yb/QzIi8OYg+21j9dDaM+9YKdkPz6t+Rq7R0r6BykSECekD2mEHtI
         PGDyhUF3N9WpT7LSTjjUo9kM6/edah1qeEpue2I5069yJ8Umm1OYP8Ksct1GybrI5N55
         Jw1wyNhd6cuxzVnOkYpAffKsp6Qe4y5rroGUNZfvm8oPvaGAs1fH26vGvcAvL3KE0ixE
         NxZw3ll6CQuPCOLzw3M+xC6zQtkM9Ioe2QwznbouHslwNl7DYYIpyjWKMwdNnrWll+1Y
         +KVw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="Tzy2g/q4";
       spf=pass (google.com: domain of ming.lei@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.129.124])
        by mx.google.com with ESMTPS id af79cd13be357-7b9ac4f048fsi4777443585a.508.2025.01.08.02.39.33
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 02:39:33 -0800 (PST)
Received-SPF: pass (google.com: domain of ming.lei@redhat.com designates 170.10.129.124 as permitted sender) client-ip=170.10.129.124;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-643-L_aTQMnBM0So-ZDJs6AXYw-1; Wed,
 08 Jan 2025 05:39:32 -0500
X-MC-Unique: L_aTQMnBM0So-ZDJs6AXYw-1
X-Mimecast-MFC-AGG-ID: L_aTQMnBM0So-ZDJs6AXYw
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id BB66919153C8;
	Wed,  8 Jan 2025 10:39:30 +0000 (UTC)
Received: from fedora (unknown [10.72.116.74])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CF54519560AA;
	Wed,  8 Jan 2025 10:39:24 +0000 (UTC)
Date: Wed, 8 Jan 2025 18:39:19 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Christoph Hellwig <hch@lst.de>
Cc: Jens Axboe <axboe@kernel.dk>, Damien Le Moal <dlemoal@kernel.org>,
	Nilay Shroff <nilay@linux.ibm.com>, linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org, nbd@other.debian.org,
	linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 06/10] nvme: fix queue freeze vs limits lock order
Message-ID: <Z35V11UDYRCHgJgI@fedora>
References: <20250108092520.1325324-1-hch@lst.de>
 <20250108092520.1325324-7-hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20250108092520.1325324-7-hch@lst.de>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Original-Sender: ming.lei@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="Tzy2g/q4";
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

On Wed, Jan 08, 2025 at 10:25:03AM +0100, Christoph Hellwig wrote:
> Match the locking order used by the core block code by only freezing
> the queue after taking the limits lock.
> 
> Unlike most queue updates this does not use the
> queue_limits_commit_update_frozen helper as the nvme driver want the
> queue frozen for more than just the limits update.
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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Z35V11UDYRCHgJgI%40fedora.
