Return-Path: <usb-storage+bncBCZNB4MJSMHRBBNI7G5QMGQE7V5SSXI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x847.google.com (mail-qt1-x847.google.com [IPv6:2607:f8b0:4864:20::847])
	by mail.lfdr.de (Postfix) with ESMTPS id 56203A05822
	for <lists+usb-storage@lfdr.de>; Wed,  8 Jan 2025 11:31:36 +0100 (CET)
Received: by mail-qt1-x847.google.com with SMTP id d75a77b69052e-467982f8816sf360248171cf.1
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jan 2025 02:31:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736332295; cv=pass;
        d=google.com; s=arc-20240605;
        b=hF7Eug2ICjRaID+j8mhNCzLCHhBlK+bOw/CPYlARSeLCQc2Kx8ERliDo8fdHWeUw42
         CgU2RyjnvGTBezUmfXQLTANbOYbQse/m3DpMV66shPgHu5rhr5UIEwVgU5KR/s2gieVl
         KkqerDWp6ymuSMmpzN6ZdJHMcIygYmvOTL9DqfVzw1/7ddwhWCpBkzYS5ffnHE1ArT+q
         ilJ6ufjFSk4j2cOtsBf5zqO5dBq5KGsfIC2EqmFedlGRXxZOxs4l97iDZQKybH5hsDYA
         M8wItbtNIg4x9FnMhNdD51W6fyJo1mEiL6nkIfDqmVw0RaGZ04FtP7gXzmAIavzuRWPM
         1xXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=99xmFZ7392MS/1B1uyItrUseTWSyeez4opQlb1m4cz4=;
        fh=AXt2Whx/Bpjzr7GOX14ZXHenxUdPQs8BFLyEAx3zH8Q=;
        b=bH8zMrxeOPXe8L5Kdnw9TuA+Q0JwmMBNsPQat4E19hBtzrEmy4TZoCcyDPxl1FWNqw
         x61xBOlJrM2GQ9H8l0r+8KQFS8VCZHEAcvuUEvub0SiLOPbyuWfOe9E3olr+g/zLUfea
         YJ+lq6ipRJ7QYLQYsV34qdkK+/e94iKOUbK8xKwhD1RimtK9tf5A5oQbAAnhJ3z2mwQd
         AbZPvix3LAb6D3R7WNPMJvI1e1Ntf0eFmhzzF0TprBD9g2KG/38XJfW5cih7QgAwZqcS
         shM2P/PjPbkDghA8xTkZPcWVhaEmk8AoMcK5Wz5LCqGggiY8rc8C3LH+MXFp9pIU9HB3
         LyNw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=N4FJgxbo;
       spf=pass (google.com: domain of ming.lei@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736332295; x=1736937095; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=99xmFZ7392MS/1B1uyItrUseTWSyeez4opQlb1m4cz4=;
        b=X5qn2jqalqdE0HTzbA2mEsA+qk7SaQPIbfMtdRgLllzeSVKT47sObS+a2LSmf0hb77
         6DTpXmMxrLlfO/CoqGftIsIJmWQgzOCDl5s0UbV/FYp05ijSgiYlB23tuc3btOPlzhzr
         fAna379JluFmxEpo6stj505hgQAMS16KtNogg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736332295; x=1736937095;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=99xmFZ7392MS/1B1uyItrUseTWSyeez4opQlb1m4cz4=;
        b=bzgvZ8WcLo1XGxFsev4tnACbHCxFgtOy/cMpQnKIFhfeuaeK1uFStMnGIHBzxZ/Ilh
         9x7HGpR1uoMFZmr40OyxGz7OvtW0GbL9oGdMpDVoYsgyZF+fijaa4E+YK9XIZZ01Lhj7
         6m2BwsypdsQOrDOOPH39IRJciHGucsqvntakSuvVS4AN6jYjVRDuoX9ooL/mNe15upqJ
         ZTqTwkUgptYcoicRS05mOpE5QRd1wEVtNujbtDllCg6MbX6T7Gtprm/WLumc1J7hwyct
         FGb7pa9EUMCmRiL/UGmY2K1gO9V+9WsmsP1X0YQApfx2SPfc2RiInWCCsspCnIgMNRxs
         sKrg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXNzlyjUfZDcV5TfPbR+GFKsuwuXzFOKbcU+FO/rREBTTV6+5TWNeDXS3m1/4IyEyl1aIDciQ==@lfdr.de
X-Gm-Message-State: AOJu0Yy70X3+lGb1Sn4URB24IfkUu5hxhfbpE3ld3sROCAUDsyvSL52M
	fP/MTKiygICgsLO0OoDLm313jma/IhQ9v7qwqNmr7pazV8EwQPg4usaA+lfn6gU=
X-Google-Smtp-Source: AGHT+IHBJzvwr3+amzeQm56OSoZEJBJjYyCZcdykX/dL/L6vhoDz8noLf7XSU9XIzn9bq39/DkZ9cQ==
X-Received: by 2002:ac8:5dd2:0:b0:467:67d3:7c8f with SMTP id d75a77b69052e-46c71005821mr32954871cf.21.1736332293817;
        Wed, 08 Jan 2025 02:31:33 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:81cc:b0:468:f965:33af with SMTP id
 d75a77b69052e-46b35a43098ls15418351cf.0.-pod-prod-02-us; Wed, 08 Jan 2025
 02:31:33 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXlxoSUERh2LEdJATQdgTybtuyLGiAdBZ++vzvSzly2Ov35XX9eXATZbaCxsNRCPh6R250hhkYJjFwHqg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:622a:1a19:b0:467:53c8:7570 with SMTP id d75a77b69052e-46c71003b70mr36579491cf.13.1736332292894;
        Wed, 08 Jan 2025 02:31:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736332292; cv=none;
        d=google.com; s=arc-20240605;
        b=E3Hk3oBZMPjj0LDd/X1iwtzRfdpaD48WfZU5dV2CzrIMLmt9audvD+0tHB0YCd5lTM
         FYq5t0jx0Y+HHaVGGKAbVSsTIEWJL9OmLdD2J5Q0M4PqjeYi/fhlo3KTfZ0Sme/xct7G
         lAKqBVbIe/17i54dioizY9MaUgLv24sqmlmIpXNZ0x0rUmyFUM4vKcUEmMvUg8zNpU0M
         jxwdjT7gZ1aCPLI1mYnrLpuVBYpA28I3FjEZnW+vPlX2iusf4Gwkm/up4H1z6w0Ma6oa
         L0LwD9sm9qIDcfBbERaDmrBgEnQWj3AO9QkkGXTXxsUMBaLPoCdGfGpWBIIvFYkf4Ax3
         nJNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=RFF47yrkVJBHoWSFdhCxN9Pmr1E8ln/cV1XqKCoPz5s=;
        fh=qxJjebJ4kXQxwqDHz44qjxVnY49wm3hZvrgJ6gPRbXw=;
        b=Ts5nNridNatAfCNZCRrQ/niHEmPm5gSBE5S+1dZjxrOCF7DWzspuGeMWlEqeTFVaIW
         kcT8JOUJbwiJvd01LE1OGnlFj5sGZD9u8nwIN+BchCBpXKI+b/4sij4jvncC8AQResTz
         Z7tJslxZGRDYcUIUN0NI+euqE98rG72O4dPCNr3k1EWQ1+8zIfMk/OHo7eZnYjBJbdXO
         miOTbTpDomqHbQqPXgfyiqCaf1DnMmiCLamxTBu3UiS/a7VS95LFbHXm4aB7En76spFV
         2uxFZS29HKUHBAh4NCy3BgpXrUbhcSVsJtZLbyPwQ/oNV61I7oUxmJiqC6QOBLC/dQqA
         +dpQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=N4FJgxbo;
       spf=pass (google.com: domain of ming.lei@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by mx.google.com with ESMTPS id d75a77b69052e-46a3ebd7257si455264171cf.551.2025.01.08.02.31.32
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 02:31:32 -0800 (PST)
Received-SPF: pass (google.com: domain of ming.lei@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-612-FT0j9aoPO92yisgQAdt35g-1; Wed,
 08 Jan 2025 05:31:29 -0500
X-MC-Unique: FT0j9aoPO92yisgQAdt35g-1
X-Mimecast-MFC-AGG-ID: FT0j9aoPO92yisgQAdt35g
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B995719560BB;
	Wed,  8 Jan 2025 10:31:27 +0000 (UTC)
Received: from fedora (unknown [10.72.116.74])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id BC26F1956053;
	Wed,  8 Jan 2025 10:31:21 +0000 (UTC)
Date: Wed, 8 Jan 2025 18:31:15 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Christoph Hellwig <hch@lst.de>
Cc: Jens Axboe <axboe@kernel.dk>, Damien Le Moal <dlemoal@kernel.org>,
	Nilay Shroff <nilay@linux.ibm.com>, linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org, nbd@other.debian.org,
	linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 03/10] block: don't update BLK_FEAT_POLL in __blk_mq_update_nr_hw_queues
Message-ID: <Z35T8xeLxhXe-zAS@fedora>
References: <20250108092520.1325324-1-hch@lst.de>
 <20250108092520.1325324-4-hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20250108092520.1325324-4-hch@lst.de>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Original-Sender: ming.lei@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=N4FJgxbo;
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

On Wed, Jan 08, 2025 at 10:25:00AM +0100, Christoph Hellwig wrote:
> When __blk_mq_update_nr_hw_queues changes the number of tag sets, it
> might have to disable poll queues.  Currently it does so by adjusting
> the BLK_FEAT_POLL, which is a bit against the intent of features that
> describe hardware / driver capabilities, but more importantly causes
> nasty lock order problems with the broadly held freeze when updating the
> number of hardware queues and the limits lock.  Fix this by leaving
> BLK_FEAT_POLL alone, and instead check for the number of poll queues in
> the bio submission and poll handlers.  While this adds extra work to the
> fast path, the variables are in cache lines used by these operations
> anyway, so it should be cheap enough.
> 
> Fixes: 8023e144f9d6 ("block: move the poll flag to queue_limits")
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
...

>  /**
>   * submit_bio_noacct - re-submit a bio to the block device layer for I/O
>   * @bio:  The bio describing the location in memory and on the device.
> @@ -805,8 +817,7 @@ void submit_bio_noacct(struct bio *bio)
>  		}
>  	}
>  
> -	if (!(q->limits.features & BLK_FEAT_POLL) &&
> -			(bio->bi_opf & REQ_POLLED)) {
> +	if ((bio->bi_opf & REQ_POLLED) && !bdev_can_poll(bdev)) {

submit_bio_noacct() is called without grabbing .q_usage_counter,
so tagset may be freed now, then use-after-free on q->tag_set?


Thanks,
Ming

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Z35T8xeLxhXe-zAS%40fedora.
