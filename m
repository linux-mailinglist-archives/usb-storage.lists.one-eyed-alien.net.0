Return-Path: <usb-storage+bncBCZNB4MJSMHRBE5O7G5QMGQEYKDNNEA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1046.google.com (mail-pj1-x1046.google.com [IPv6:2607:f8b0:4864:20::1046])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C833A0587D
	for <lists+usb-storage@lfdr.de>; Wed,  8 Jan 2025 11:44:37 +0100 (CET)
Received: by mail-pj1-x1046.google.com with SMTP id 98e67ed59e1d1-2efc3292021sf38427325a91.1
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jan 2025 02:44:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736333076; cv=pass;
        d=google.com; s=arc-20240605;
        b=Qa5Wlb09s2lt5Nyx/jNstf4WLw7Pv9LXFSAwt5pr1j8srpCgLkB7fviJiuI0y+aHIM
         P1vruwLNDU58E7q14OQFHD1DTemQEjfQ3H1MMSAaEIg8/NjLmgrMo+d1NkrXijRg4l13
         gXiBOufLlK6VBfAsPFt0WQeUg8YcHSfezZnIm5xFQXGKBTu+B/f3H3dZMdhVH2MyOX8Y
         J2LDRP/lYNVHK67cr8dIb0R9eiYO7W3qTxwZA8GyEPvhNp5r8l2RT/PNnAJmJCVMCB3B
         8orY7m6rbkN5rKQRjAR+C2JNFu+hQsLDhygvpfQUQr6T68/jkC2w2j4I44cdVKn/qkT0
         CskQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=wN5AM1XbzVdhEbwmAaTn/Ca78QzcZ15fbQ5tWWyZdmY=;
        fh=0UWa8Er+vbIamXz2/fCmqLQZEZr5vPJ9QDrK+/5fp1s=;
        b=OKiJb3jtHLqb56WBl6N15HdyreDjV05eOBGDcM8Hyxdbp09388oiCxKsD38A9IkXzx
         cdTqPee9KdmeNBEmBOf/9xEuTn0kCzVzkO8ZkYGmiTHwei+ujcQYwwj9aTMg5KV4hFU7
         HVoJgcdDl8ICxxZnR8Ms191zbdV3k5yYOtgFRjPV7YHiq5GemP8fKkuE2qeknlPk3uAc
         qELlYVERu/dTBmRb6SmNTa10k4fq9gfeMLuttQ61yRV9mUPEnTv5m6pb9vIntluDQtLb
         22QCqNVngrCd95NJyXYJS9AZz6WeoFNR1/64ghKfaJj+oW5mFg+nMJJG6z57xNSoCxAU
         evAQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ZwvNOTsu;
       spf=pass (google.com: domain of ming.lei@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736333076; x=1736937876; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wN5AM1XbzVdhEbwmAaTn/Ca78QzcZ15fbQ5tWWyZdmY=;
        b=X7Tx6E6kqb8434Dx5piqnBGo5uL//Wxy8FaYEVL35Ur7WaX58KpNjw2rGC5ZpHKKrX
         bmPWxnJ85iu3WRHASZ9V+aMOaJNWjTgLnaSs236160xWQCUE5ttqaJP87bkE7nPjRFNI
         S4gnHIo/c1Eu1m0hs6YhzFhyxscc4asUQCCg0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736333076; x=1736937876;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wN5AM1XbzVdhEbwmAaTn/Ca78QzcZ15fbQ5tWWyZdmY=;
        b=m+er7krrjs57wSeJUrmdJl+dBJWqiUopIVeh2DL9WuewXUgg8jfZX85JrE1unDw3xg
         5Lmf/oXbDk1mmJnrQibDr6BsAeC0zkzazaDSeyWRnoCmRIHar26Gclcglq8qRVHGx+n7
         KAF6InTrKnixOS9ZyiE5jm6EVFVFzrlEzV4UuwPSDjfG+VYwhRBrD+UxZy2ivnHgDx9U
         Og4fgcstfLuTsxH3ZCcxYL5CB55I53udtFkuWslMOCbbNJgX+pQxOYfaf1y8E8xZtfPe
         2rVkxv0uyKpGXvWk2MO9mQiaPb6lNV9hNC0UJP1z6g0VVUJ6ykBxqxCaBjzYYo9Nproj
         yC5g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCV7zwBLyKhVJ/5CEOMhEolBlcScGiiBehKbK5iY0sSiqeDdPDz+ZONOGig2MLqndtCJ7WHasQ==@lfdr.de
X-Gm-Message-State: AOJu0Yy61McW8g5dxvSh+funb36KGhKBE5yK4T990cp14cJQ/hBbdNhP
	3ytv4Ee6Yw88QnfqcHA7bEmreX8J8zfdB4gL65sfU8KXr24wh0Iot/eiTGrTktA=
X-Google-Smtp-Source: AGHT+IE1VR4+ZRxJa9/+Lv4p81vwmJnANiLz8zG3vMQgTEaoZHpwA/XRPXSIAynWco8TgERwed3wxg==
X-Received: by 2002:a17:90a:f94d:b0:2ea:696d:732f with SMTP id 98e67ed59e1d1-2f5490bd806mr3466446a91.29.1736333075709;
        Wed, 08 Jan 2025 02:44:35 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:903:22c3:b0:216:3178:9efe with SMTP id
 d9443c01a7336-219d9fba7aels58167815ad.1.-pod-prod-06-us; Wed, 08 Jan 2025
 02:44:34 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVjKX1X+5EyXsEGFDAZX/f8PD2mGR7RezjfWkBuYxOthdYhHlIJMRDRQUh28ovbnekMl7kD9bQxovJ2Pw==@lists.one-eyed-alien.net
X-Received: by 2002:a17:903:1c8:b0:215:30d1:36fa with SMTP id d9443c01a7336-21a83ffbe2dmr29341935ad.39.1736333074555;
        Wed, 08 Jan 2025 02:44:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736333074; cv=none;
        d=google.com; s=arc-20240605;
        b=U0mNoLHanBvqQCjMYkiokoBBiLN914/dsf8HGInA0yyWEF1tRyDz1zTOtDywe8Rjsh
         79wHiq93Ciyyf1ri2cyQytM/TsfFb57DwWuJKiHLbihyXiiMqTR+g90xImRItIIMxisq
         v1zwPr4ri43GdyrYYAUC08/hS/wtegO53oFutERwSkBuBsEILgr9428gySvPoZ2+RcJJ
         DEpRFOFo0zmCdUnLa66Jk9kj6XbWq620hg1TTarQL57SSEUzapgoz4zQRNByMkREDaT9
         Mx6d1heUWGCtaqSaUMB6aBaYa0tI3wEPnJ1hEyXp0EbioBfwev5kR6gIFZOWZqTy7ZBw
         txMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=B8+WjPvgGIbhzkcemmv78w2LxK9mcyjSw5bhvDUQPa8=;
        fh=qxJjebJ4kXQxwqDHz44qjxVnY49wm3hZvrgJ6gPRbXw=;
        b=JnTH38L6Ay8Hq+jsUqb4CLMZn71BaTiNDt1J+qcVNNaUBUuf1e9dODmpi7aMGRQDtC
         1W0dmAAjgXw/BKEd04Dg5bM+uzjW1pWNHM+Mb+gJ0BzZ3rc8mzKUvqMttsCG8LPqoSzi
         s9HUT8GeMvZYuld9Sr8kh9533zG2xBaKVMiBB3vm4Q4umttPYomIavvasX/uTrdNPtnT
         +qNyQK1qnAbeSMxchsNUZjLWFm28XpcK/hD95UtRKUZ1IulpspmX8VHSCKHO8U9EAp8w
         LoNDZqzU5vJPCC+N/DDg/9ozYhRWv/SO2P/u/FtKGdBrBpBcXMUGrjgoDcJveUDWtk2m
         zG0w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ZwvNOTsu;
       spf=pass (google.com: domain of ming.lei@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by mx.google.com with ESMTPS id d9443c01a7336-219dc98af69si109162425ad.136.2025.01.08.02.44.34
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 02:44:34 -0800 (PST)
Received-SPF: pass (google.com: domain of ming.lei@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-554-w-R51ZUcOOKsnr9FUL6S7Q-1; Wed,
 08 Jan 2025 05:44:30 -0500
X-MC-Unique: w-R51ZUcOOKsnr9FUL6S7Q-1
X-Mimecast-MFC-AGG-ID: w-R51ZUcOOKsnr9FUL6S7Q
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 52C9A1944B2E;
	Wed,  8 Jan 2025 10:44:28 +0000 (UTC)
Received: from fedora (unknown [10.72.116.74])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 78259195608D;
	Wed,  8 Jan 2025 10:44:22 +0000 (UTC)
Date: Wed, 8 Jan 2025 18:44:14 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Christoph Hellwig <hch@lst.de>
Cc: Jens Axboe <axboe@kernel.dk>, Damien Le Moal <dlemoal@kernel.org>,
	Nilay Shroff <nilay@linux.ibm.com>, linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org, nbd@other.debian.org,
	linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 10/10] loop: fix queue freeze vs limits lock order
Message-ID: <Z35W_iLqwXKUKr75@fedora>
References: <20250108092520.1325324-1-hch@lst.de>
 <20250108092520.1325324-11-hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20250108092520.1325324-11-hch@lst.de>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Original-Sender: ming.lei@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=ZwvNOTsu;
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

On Wed, Jan 08, 2025 at 10:25:07AM +0100, Christoph Hellwig wrote:
> Match the locking order used by the core block code by only freezing
> the queue after taking the limits lock using the
> queue_limits_commit_update_frozen helper and document the callers that
> do not freeze the queue at all.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---

Reviewed-by: Ming Lei <ming.lei@redhat.com>

Thanks,
Ming

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Z35W_iLqwXKUKr75%40fedora.
