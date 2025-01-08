Return-Path: <usb-storage+bncBCZNB4MJSMHRBFVD7G5QMGQEHIOPZ6A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x646.google.com (mail-pl1-x646.google.com [IPv6:2607:f8b0:4864:20::646])
	by mail.lfdr.de (Postfix) with ESMTPS id 99660A057FB
	for <lists+usb-storage@lfdr.de>; Wed,  8 Jan 2025 11:21:12 +0100 (CET)
Received: by mail-pl1-x646.google.com with SMTP id d9443c01a7336-216387ddda8sf229669455ad.3
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jan 2025 02:21:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736331671; cv=pass;
        d=google.com; s=arc-20240605;
        b=VaWJqM23BW3P/RR9f1eCW9ixg/sqPBGMq3G7lXjGAm8+U3cGC3VhuHrPNqcLE+ANxa
         W8wchT01hUlQD3bIjjw4HtDIh0RHn+RjCEmD0dDh3BuJiQj5jHuBEAhQGMyg/JsC8JNc
         xK5SNPB4JzV1KL6GUeJFRhYimOfqCtNR7XxZ7TQGduZKYyQBwHjbchSgRnWSKiHWF1tv
         VRi0SFgpM8zaxYHXmsUvYIzIZPEmfVLYXnTqM7eGXXoo91YF+HjbktgwrHSGGuY3LOks
         dzlycI34mKvAPV1TUekC4PS4IBNtH4vd7MQBzgkTePvtTT2KbE7JRDzeuPVYDew5CF4D
         o4SA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=hG62CFT2caQs+wlWSd7fX/cxTxuvTcWsnebadGYj6T8=;
        fh=ft7WpKlYAoRUoSUjMI4B+xhrY9vcMqI8K8D2km5QtJQ=;
        b=bJx74jbiOAHaZPFL8fXtipZGdpRPZM2Miw4Q+UG1XGYvUtnb2e5nWPqaGWoxmfrLuI
         L0u3+nfQXhe6cV1yamuntgcVzH3F1ZLNJfia902gtClt83wKQL1nfLAaeycN9lPcidue
         n7FdLUvnwC4rVK9PQcNnRrBqxu6f5quju6Zt5srdb37jLHdwRbjOVJZk2hN2Jd9Jc+W+
         hrvGRh02ZyvPRRaGRXTWcFwpj/CIUwRsB007z9O3pOFN9khC/EwgobmZ3P5+L9zwMyja
         v+bv4XUA4HkwelFwI1CzQ1eX4tu9FqKrRp1HIyD1NPicQKxKjIkc9mWDxSFRAfBtCejb
         uQyQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Dvae0cCG;
       spf=pass (google.com: domain of ming.lei@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736331671; x=1736936471; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hG62CFT2caQs+wlWSd7fX/cxTxuvTcWsnebadGYj6T8=;
        b=H+6WG2kHxb4j/Bp7QaBTgqSqKKwyQQ30G1MrbGMn88vqSZUFw8Oe6ILVTjNlFrTxRi
         iPJb1BYFkORLLq4APlVBnjVMFPULAjXQY55gWuAuD1em9ll/NLukBFs4zC2YyO/heRly
         LSaZkT2Ia9w4d7VF2qslmwFU2tiPPsdGsRbAk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736331671; x=1736936471;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hG62CFT2caQs+wlWSd7fX/cxTxuvTcWsnebadGYj6T8=;
        b=nvRGRX8UUoZAScDGNqtxgGSpCD3D3R5kNWmpRvnN+AmqNjErXsVjEJeZmk9Q2B1eV6
         eMNrFrFgpckF6nFzWZCcyNGR+GEXEtRaXy422LC74rC35cJVFDysa0OsxP1C3FZ1nWGd
         UTfpRWldP7oXYUXkOUo8sljxoWXVP6dYOjOkbVsXXWfvw4iGSUGEdHCh0IQzkp2/69nY
         bZBFUkO36zL4rXzO/mZWM5ct6huMrO/Jggx43/WV8c4Rz9VJ/q2PsvxGKN7zBwZrL/Lm
         9KcsFd4EHKlGvrM3buTly4lP5tC+D+gsVdfVRjEkrn4WVwZYcIGm2jKf70VpaJTiutqb
         P2ng==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUztmYO16PkG2y1dqaqrpScojYZFEYjeSYs7O5rec5E5H9W4ef+TEGXg9pvYruy/jkKQzuFMg==@lfdr.de
X-Gm-Message-State: AOJu0Yy4p6Xjte4iWt5er7VKRY93TTthaRK/8sS3XwxUMM/a7os4T6Ot
	iufVoE0d2lYIaE6CgmYX2bMGWUudmUJe0cN3HaidC+wR9qloEpJnI/DhG4Y0nKA=
X-Google-Smtp-Source: AGHT+IHi6+njOL3N1LbrRulcsiR8IiRjzo3jk2daAl10uCE1b750pNAQUhG20SrvN0mOjEBPovANHQ==
X-Received: by 2002:a17:902:dac6:b0:215:b058:289c with SMTP id d9443c01a7336-21a83f339f2mr40735665ad.8.1736331671014;
        Wed, 08 Jan 2025 02:21:11 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:903:320d:b0:216:5823:85a6 with SMTP id
 d9443c01a7336-219d9efebcdls22964855ad.0.-pod-prod-07-us; Wed, 08 Jan 2025
 02:21:10 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVrfzKJ+6EC/5ldOP5MJ6PpY1V1B3S9eh6QSO8RzIKGTX6b9V17mjsXz1Mrg8Gid+H7Rud4GSzkp8RYgA==@lists.one-eyed-alien.net
X-Received: by 2002:a17:903:32ce:b0:215:b8c6:338a with SMTP id d9443c01a7336-21a83f338a5mr32330075ad.4.1736331669445;
        Wed, 08 Jan 2025 02:21:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736331669; cv=none;
        d=google.com; s=arc-20240605;
        b=B26pcr3MP4qHG0QfVo3kux/rvO+af7ivLQEiKFv7ohC7ONG327InqSDc9FQ5qSDcjq
         Kv1a01BdtruyXknwvfrHRkWG6JTkWBa9GH1i2M0eHl1wPgSzjz8hCUeGXu5Z0qN7zLlp
         Ig2/xJyf7bGiPDc24b5nV7hPP2tfjXOyWoau+oEImSFU6Zt0fg/YyOS9QOECFE4J3yWi
         5F+e1O9IuDMtv3Qmg9dc2abS6jzXSLRC/DL6jV/BbuY0jDwMt6cm3NftY43iYTDlYNBP
         pmQU1l1X9z9aXXqRZp26g/cqX3DknwTI6pe6im0m1kdFc3niGsYAOYVwhyuwW8RZAbZn
         m0tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=AtbgMJMmVloW99gtaVlJcbuQAdmISbo7ifiFkzYXC5U=;
        fh=qxJjebJ4kXQxwqDHz44qjxVnY49wm3hZvrgJ6gPRbXw=;
        b=TU8ea8hOySfz8XwRiGfNu6oY7yFXJ6BOXiZjKt1dgoXnbU9hY22Nxh4g0bkorcqBNl
         6PQdRFjbVd1u7YkwEWLkZa5CdV8I7+zTPMYevkaGVYkOHyITCeTFCTJ3seUiDPFJoaOo
         h1VNeLlZ77HlRIJCXP4EW8W/QNy42/dUns7MU6/46gN+QBUGW2udBrqjpm1zUrceqEw6
         9F6S5LxE7ApBSWWys5FH9lEP0lPRr1qlCxl9Nk9oxIUEoVpAi2zHLa4SnpqCE9mb3q+p
         FkIEFb0jV/wFbP62YSVdztUuMQBgACm6fCwkArfWdfUlcBdN2jMZ7DxmKdGFdrDHNozG
         AiVg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Dvae0cCG;
       spf=pass (google.com: domain of ming.lei@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by mx.google.com with ESMTPS id 41be03b00d2f7-842aee117fcsi46506897a12.42.2025.01.08.02.21.09
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 02:21:09 -0800 (PST)
Received-SPF: pass (google.com: domain of ming.lei@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-484-njvCHczuOeCFbIZmFXbyJA-1; Wed,
 08 Jan 2025 05:21:04 -0500
X-MC-Unique: njvCHczuOeCFbIZmFXbyJA-1
X-Mimecast-MFC-AGG-ID: njvCHczuOeCFbIZmFXbyJA
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 07B1F19560BD;
	Wed,  8 Jan 2025 10:21:03 +0000 (UTC)
Received: from fedora (unknown [10.72.116.74])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 230CB1956053;
	Wed,  8 Jan 2025 10:20:56 +0000 (UTC)
Date: Wed, 8 Jan 2025 18:20:51 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Christoph Hellwig <hch@lst.de>
Cc: Jens Axboe <axboe@kernel.dk>, Damien Le Moal <dlemoal@kernel.org>,
	Nilay Shroff <nilay@linux.ibm.com>, linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org, nbd@other.debian.org,
	linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 02/10] block: add a queue_limits_commit_update_frozen
 helper
Message-ID: <Z35Rg9IQyiKpvMPv@fedora>
References: <20250108092520.1325324-1-hch@lst.de>
 <20250108092520.1325324-3-hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20250108092520.1325324-3-hch@lst.de>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Original-Sender: ming.lei@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Dvae0cCG;
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

On Wed, Jan 08, 2025 at 10:24:59AM +0100, Christoph Hellwig wrote:
> Add a helper that freezes the queue, updates the queue limits and
> unfreezes the queue and convert all open coded versions of that to the
> new helper.
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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Z35Rg9IQyiKpvMPv%40fedora.
