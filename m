Return-Path: <usb-storage+bncBAABB4WEU2FQMGQEA7AEOLI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf46.google.com (mail-qv1-xf46.google.com [IPv6:2607:f8b0:4864:20::f46])
	by mail.lfdr.de (Postfix) with ESMTPS id BA93F42F739
	for <lists+usb-storage@lfdr.de>; Fri, 15 Oct 2021 17:46:59 +0200 (CEST)
Received: by mail-qv1-xf46.google.com with SMTP id bz13-20020ad44c0d000000b0038379dd89e5sf8558583qvb.20
        for <lists+usb-storage@lfdr.de>; Fri, 15 Oct 2021 08:46:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634312818; cv=pass;
        d=google.com; s=arc-20160816;
        b=lVyuZXRQTUGhxsN//jVYMjPNodG4rQrneFCKLM7yu0xkH1CIFnw2VOQteb2OCByYZu
         ySAVt6IXcMV75voFb8VWBo3qY1kctC5QJ87RIE/s1yjA76CVeiURUYLXaegHS3UZpyh/
         hUOtNUe/Mh0aDWdaFG4ZSqvWIsMA3x3UfK4A4j9/elsIYQ7jJEWz0uoR5M6vnXBrOXdi
         VtoW8Qpq+8mPIo86xiPkLPua7oYeKJpFMX+ftnoRuKmLiBhtdZ5AJQWwiIYJy+XBVdS5
         aRJv90xwlk8a/WimPvSt+mjIh5TyM9rCFoESjUoGMk/w4kb8GCXzRgxr54vCXFWeSXcJ
         hCaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=cxccQSiyKyZg2E2sqClJam0yV9zFWotrQqGTToTAiJs=;
        b=OF41IJ5jOink5AIXpb0oHf4Rgu1Fn7quWPaqAug6h5u/gxgk2iCdCyGuucHmpm46bT
         RkA4cM4cfXTzVtLfCiALbNm2od+d+vEt+ZjYySJQoXpvJEGobnqSjXDWluxFCRlP3G7c
         DAiMjhVBK3GG7ysJs5LaE7Tj65SBKSVLc07huZDYGJSkItt0cgL5lQAX362XgS7MucqZ
         upcpkxmsXcTXY1sHTmmvvSffs0wTpzCw5dvYngBImTWMtu4dwLnJ4gm/1dOM9WzXnNtV
         RhZn3E42m8Wj8C81eW1yaUfq7XyrGGxNbD+TuL3/rml/vqjmMNQRP+W5zVG9pFhQ7BDH
         IsKg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=YoMS8Brx;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=Z5HO8+NB;
       spf=pass (google.com: domain of bigeasy@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=bigeasy@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cxccQSiyKyZg2E2sqClJam0yV9zFWotrQqGTToTAiJs=;
        b=gV91lU1l5DMsInlFsk+aQfdk3Ik8/heQZZZPiTUYkmESutL9/sYL/Wuz6Kt7R65ilX
         S3K/8TXIDo9MT6A2IFw96BcWVWPbH4Ag2j8qwzNiHA5eoA6ugNZPEukV8TLC2o/UGLA8
         bynBZz9VfBmH+xxooXSQJ636oqHc8Q4+LvYPc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cxccQSiyKyZg2E2sqClJam0yV9zFWotrQqGTToTAiJs=;
        b=kx5TVdo13T6ycl+AJs9Om7d7pPcnaY9Fw7UXxQnfpwJwZFUldPn4KX30QFfay9Eaz8
         fc6VvZi5grXp1sZeax+XFvq3qNKRCtxtu+kXtHr6eAM8T+c560WbhuWyiHHxIgD5iWIa
         /hr3xDdR/PQGmqJ88FD3xArYbt1h/DYgDHlSsg9nz0A9AbTQmkDhU49UvjYa+Ltovr4g
         RAFZ/RdaGQabMVjqyCIXUE1nCz88Wu+9Mi/Inuxf5aJjvJ94yQJfEkpEe2zsKESMa6VL
         8Uf7ADm+KnAk46sRYZgH+lSJMFnc7lI1BJQEFq0G30ox11G9jpU37hMJQQJhr2aHhn18
         xERA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532PR7tj1RT23zC8csPAZLR0D2nwJJwiHQvlxGLlv7NlDvqJ11H9
	bZ/tb6jdPiPEUkfo1IBexoYJBA==
X-Google-Smtp-Source: ABdhPJzgn/V2xjGRZxv+Nt1Mqhb8wkAZM+q1H/kgfN/RGobkvYR9peqrwRu5wYskIrzKfqXMVul+WA==
X-Received: by 2002:a05:622a:180f:: with SMTP id t15mr14031085qtc.33.1634312818415;
        Fri, 15 Oct 2021 08:46:58 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:2099:: with SMTP id 25ls5219940qtd.1.gmail; Fri, 15 Oct
 2021 08:46:58 -0700 (PDT)
X-Received: by 2002:ac8:7143:: with SMTP id h3mr14360538qtp.242.1634312818052;
        Fri, 15 Oct 2021 08:46:58 -0700 (PDT)
Received: by 2002:a37:270d:0:b0:432:f196:6bf5 with SMTP id af79cd13be357-45fc47fb9e2ms85a;
        Fri, 15 Oct 2021 08:14:28 -0700 (PDT)
X-Received: by 2002:adf:a504:: with SMTP id i4mr15110776wrb.35.1634310867781;
        Fri, 15 Oct 2021 08:14:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634310867; cv=none;
        d=google.com; s=arc-20160816;
        b=wfEP3MqshAS1Ydq78YqiDeskyjWjWE5memgzqf22OPt2yJ7+NbLMQ6Ab41RDR+DUHU
         MU1+FQI1tCffnzUfW5dY7z7DCyY/EEmIwohCrYs4/dmVEX7tZVJEgPIKqe9L4JjK2m1d
         1BIkWbnj3AqGjcjOY7XzkECAAIiFNc7dob3dIlDOTOFxTgV2T5msLccgEkVHglOG+q3B
         QtNlplaBcg+V8QbXbanOaYlTQ7qCAMeJAUZIfuJozOI+WjEvf+LSvPqIC2wN2d+C6gLy
         6xphmppb6fvrnGKA4dwNndZylvxrTqiaBkPj99RYdtuacxCCFt8gd7MrfnT0IQQThqmL
         b3aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:dkim-signature:dkim-signature:from;
        bh=t2vyjTQFjQd4X++czmFyYar/C0EbLUZWpU7OKsZ1+o4=;
        b=AXevQ1cou+4sJaCQmOaYjqdDgX1jk9QazcIIf9csY8gegegX8qSBPGhWBvSOw8ceO2
         18QpufrQletQkh7MoQSY6zoz0dOt5j0/mjVIDEGOZ4Xl2w3OvC/HGIt9tdhnUlJq50w4
         SjMwwtArYsgBsA6fqyQebu2VuZ7It/J4cdz7Imst9tK3Zv8aNRPxQOJ/0FVoHObD5RIq
         OqEhRIxd5h2Aw8qu2YxmdwLBuVs7syyvM1b6BcXCQ15XIsmFO7Cu9NN/FQFG/BKsp7Xm
         3YIMfA4NN6WXXyE4T4iVPvkA4m1xlTFVEgUeBVZYBdAg2Uo7f2+GH62FFdcvx+D6cJfT
         9OGQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=YoMS8Brx;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=Z5HO8+NB;
       spf=pass (google.com: domain of bigeasy@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=bigeasy@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by mx.google.com with ESMTPS id b5si8632347wru.141.2021.10.15.08.14.27
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Oct 2021 08:14:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of bigeasy@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: linux-block@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Cc: Jens Axboe <axboe@kernel.dk>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Christoph Hellwig <hch@infradead.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: [usb-storage] [RFC PATCH 1/3] blk-mq: Add blk_mq_complete_request_direct()
Date: Fri, 15 Oct 2021 17:14:10 +0200
Message-Id: <20211015151412.3229037-2-bigeasy@linutronix.de>
In-Reply-To: <20211015151412.3229037-1-bigeasy@linutronix.de>
References: <20211015151412.3229037-1-bigeasy@linutronix.de>
MIME-Version: 1.0
X-Original-Sender: bigeasy@linutronix.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=YoMS8Brx;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=Z5HO8+NB;
       spf=pass (google.com: domain of bigeasy@linutronix.de designates
 193.142.43.55 as permitted sender) smtp.mailfrom=bigeasy@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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

Add blk_mq_complete_request_direct() which completes the block request
directly instead deferring it to softirq for single queue devices.

This is useful for devices which complete the requests in preemptible
context and raising softirq from means scheduling ksoftirqd.

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
 block/blk-mq.c         | 6 ++++++
 include/linux/blk-mq.h | 1 +
 2 files changed, 7 insertions(+)

diff --git a/block/blk-mq.c b/block/blk-mq.c
index 108a352051be5..44582aef3c32c 100644
--- a/block/blk-mq.c
+++ b/block/blk-mq.c
@@ -667,6 +667,12 @@ bool blk_mq_complete_request_remote(struct request *rq)
 }
 EXPORT_SYMBOL_GPL(blk_mq_complete_request_remote);
 
+void blk_mq_complete_request_direct(struct request *rq)
+{
+	WRITE_ONCE(rq->state, MQ_RQ_COMPLETE);
+	rq->q->mq_ops->complete(rq);
+}
+
 /**
  * blk_mq_complete_request - end I/O on a request
  * @rq:		the request being processed
diff --git a/include/linux/blk-mq.h b/include/linux/blk-mq.h
index 13ba1861e688f..df9ea4c5d91c9 100644
--- a/include/linux/blk-mq.h
+++ b/include/linux/blk-mq.h
@@ -528,6 +528,7 @@ void __blk_mq_end_request(struct request *rq, blk_status_t error);
 void blk_mq_requeue_request(struct request *rq, bool kick_requeue_list);
 void blk_mq_kick_requeue_list(struct request_queue *q);
 void blk_mq_delay_kick_requeue_list(struct request_queue *q, unsigned long msecs);
+void blk_mq_complete_request_direct(struct request *rq);
 void blk_mq_complete_request(struct request *rq);
 bool blk_mq_complete_request_remote(struct request *rq);
 bool blk_mq_queue_stopped(struct request_queue *q);
-- 
2.33.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20211015151412.3229037-2-bigeasy%40linutronix.de.
