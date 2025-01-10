Return-Path: <usb-storage+bncBDUNBGN3R4KRBA7JQK6AMGQE2JWK2MA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1046.google.com (mail-pj1-x1046.google.com [IPv6:2607:f8b0:4864:20::1046])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EDA0A086CA
	for <lists+usb-storage@lfdr.de>; Fri, 10 Jan 2025 06:47:49 +0100 (CET)
Received: by mail-pj1-x1046.google.com with SMTP id 98e67ed59e1d1-2ef80d9b738sf539528a91.3
        for <lists+usb-storage@lfdr.de>; Thu, 09 Jan 2025 21:47:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736488068; cv=pass;
        d=google.com; s=arc-20240605;
        b=kdaL8nNWL1jLzvWwCSqUloLQeB6Ynjvhqv5rvd59I4A5iizR1AMMXbf6X9AKrVe1kb
         RRuH/SqMuhUmjwTp3tWzmbWfV9Myxy9Go3Jg6zmaqmeuNe5YZcpuTBvgt7f8HhA5Vjye
         fDOD8GxhKaP//j4/meYmy8UO6VWofjBZtqJnrbFZee0A+tY5c5Ag+gahzZyKXa3/aXRi
         bpxPH84UevUE0hOBbM59MzSFjLYcALXEBzu6q0yDAe2qWAVDbNLFYmlTkHJlKhVwBvIL
         ckbKkbsBUkWXgFOpokgwIPiVPxNdl6163CikBZcRe4R/PcQwufIA3jhBHHbQ3+DyUG0H
         u2KA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=XMacV5kmLXrSh8OBj2dSrSxRT5M9ChUI5kZa00boYzA=;
        fh=aMOh2XerNu1lGbLZIrgK+b1HOHkrLIg10ia+PlrQfy8=;
        b=JtFrYOJll7/EW/efNBJiX219sOD+qbZ4yZuKGIKz9T6wyBjxA10IA/JmPJtjkX/JzC
         DygJAKgDVyDNrgUKjNnIDdNaJ3FYf8MnivJvl5GZ+wYEmZzhEyiFksr3N8SI6X61IW1f
         97Li313vL8s7zyLBgZsueP/agqMB64HZghlpEdWmzm6UYPXN4jI6oxmAWPR4KC1yFDgt
         r+GvVWMe+KcxP5w8dehA91vDTwrj64IkOjSFD3FYjU+ojsfwiZICC+mRXRzru8tZcWxy
         2LUxnz3UmQlO/IMjmlneOui5tGB6PAShZ7D9rZ0BTrfmHttyTRb7LTHaqzu0/USUcDpV
         GvoA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=L6Wh1url;
       spf=none (google.com: batv+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736488068; x=1737092868; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XMacV5kmLXrSh8OBj2dSrSxRT5M9ChUI5kZa00boYzA=;
        b=SaxwJjLcnVGe8cSkLWQT3MqSRFvd6/WBSWd/FzaoWuIyolDDfMYKiQKHYTuQRJ9UMW
         CJ5ZNfaEF8Tv/EJ58rr+HE6PFnD4D3gbdN6RxrXSHdZ4MvxmoNy91Aou0mMPCOj1CQI6
         908hAXqpz8EEgFf2+tzGQD5Hlp7xYaJtqEjL4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736488068; x=1737092868;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XMacV5kmLXrSh8OBj2dSrSxRT5M9ChUI5kZa00boYzA=;
        b=JsxU5ZHSKFi3T8eK0M+WcAnRfh1aQuTbwOMx3gNeDsqAxDWbHmcdFXRQLhPP+IC7Id
         8Gt2Zttq9KnocJcaZaV101GSoR0CSjVA5iBIc9AlCovp518aXRul+gnWNlMkQL5Wf90I
         kx+mi1kJDv5xwnXV5uUDoIO0ZP9fQCrOMFwRy8pGWFkOIuYh5zl4bEXV/UAoWsL2bMPR
         4AOIgClAiz6LSnAR8ryoXY+RYALiOtuENrfGJNeMl0jdCHROR9dz3j720nCEJRZXAcae
         /z7grDfHr36B1tBu5yqjYyIJWyaPuJZwgyyUrLiO8PKk0e4wkBlXB1QMoBrjMqb1O/4A
         mJ4Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWS0QA0NdzVWxGblQ4QJQPcuFVGAwsQAols4/vaE5QlMI2qWyHcx+XmR8tThB/IDuAisfu5rw==@lfdr.de
X-Gm-Message-State: AOJu0YyjMW/I88Pqz4iu2E7vwBVa5g7jIrc7JKcCWPDX9m1lBG3vA0hg
	92cH84A9ihenBTVisnbsc/njpr80i9X5es6A6pmhZUTLfl0GaS15IQvMzNQnTqM=
X-Google-Smtp-Source: AGHT+IESMNkKg3gqbWD44WQQfwdXm3LzUNzvgDED8EmOh33MMTPJdLmYmAFz7k4exoeHA9sWL/U5gg==
X-Received: by 2002:a17:90b:5344:b0:2ee:6563:20b5 with SMTP id 98e67ed59e1d1-2f548e3e81bmr5332106a91.0.1736488068034;
        Thu, 09 Jan 2025 21:47:48 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:bcf:b0:2ee:edae:763 with SMTP id 98e67ed59e1d1-2f553d3cd5bls1392084a91.0.-pod-prod-06-us;
 Thu, 09 Jan 2025 21:47:47 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUREswqt6TXEp9MEkS167jdHUjqZAn0uh/qHGQCZFyYt0h1OlXUH9/fFZ52TxpZrYoGY5jyaKqAvx3avg==@lists.one-eyed-alien.net
X-Received: by 2002:a17:90b:2d88:b0:2ea:8aac:6aa9 with SMTP id 98e67ed59e1d1-2f548f69ff3mr12581099a91.21.1736488066690;
        Thu, 09 Jan 2025 21:47:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736488066; cv=none;
        d=google.com; s=arc-20240605;
        b=GGawY6+ZJE8xhDA2xEEpsqVShhYbb2Zkhy8jHtFy23KSFDmraiYtbxUimnvmlpAknJ
         xpkzYyfD+RQsf06cUvzrvQDFt/mpH2hHCLS3Y+m1/5BfATsSiP1rMLMP6n8c0nHyNkjb
         7Pmuyv3t2ALzOmOyUFGmBrCWbFKkCyPGt1Q86rM8Zh8aJrUt1wd56S3c3eZ130qWDD4g
         V4yXJlAlyuQJVrjpS272IQIbuM5nVsUfOSCHk9EAUHioMuABwjzZf0nxyxe48JZ9NVnb
         Z/zI2xzoMmTcXVhiEp71XwCtRoZt3L//TBS59rEywb1NDVWhV2PUyQq2ummQzbAPgJpL
         zcxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=XOwKKQcvaeqm5/EcreVGcBeygYwpt1R0Y193htmengg=;
        fh=K4mYBT/f9uT4NDiXg9vO0QvGda7RTqDR2brfxQ7Fzow=;
        b=CmBHfF5jlAEobixLwCHV/3zMluLcOAJCRPwGGgTJO1jAsHUwTrHFDo2qASGcJKWc47
         huTh9X3kU+X3nA04zt784CAPqd6jDLgbQn2XBfafnPEL3sI3QO0vzPhOxK/X7Zv7RewG
         mLVQCuimJjFvhFzPf1M8TDFM45IeehXqLTNUtramK9h8T4MoL6lRxGouwQ4Kh5JveDlr
         JY+MaZgegxMtFFgw8uHXB2ImqLskbKAisYxJ/3dVV9m1xYSY6SY6kGThzLKaijBL8bJi
         vgfg2FbUC4mnuCt9iP+XYEJtzey8KWVuGAekwW7HiYE7MCGQ6MQtNpSfPvWqty4P5CP8
         TvEA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=L6Wh1url;
       spf=none (google.com: batv+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 98e67ed59e1d1-2f55887bad3si3024077a91.40.2025.01.09.21.47.46
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 21:47:46 -0800 (PST)
Received-SPF: none (google.com: batv+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-76c3-a3dc-14f6-94e8.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:76c3:a3dc:14f6:94e8] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tW7rz-0000000E4xM-49cZ;
	Fri, 10 Jan 2025 05:47:44 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Ming Lei <ming.lei@redhat.com>,
	Nilay Shroff <nilay@linux.ibm.com>,
	linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org,
	nbd@other.debian.org,
	linux-scsi@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Johannes Thumshirn <johannes.thumshirn@wdc.com>
Subject: [usb-storage] [PATCH 06/11] block: fix queue freeze vs limits lock
 order in sysfs store methods
Date: Fri, 10 Jan 2025 06:47:14 +0100
Message-ID: <20250110054726.1499538-7-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250110054726.1499538-1-hch@lst.de>
References: <20250110054726.1499538-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=L6Wh1url;
       spf=none (google.com: batv+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org
 does not designate permitted sender hosts) smtp.mailfrom=BATV+d77ff3599ace4b46004a+7810+infradead.org+hch@bombadil.srs.infradead.org
Content-Type: text/plain; charset="UTF-8"
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

queue_attr_store() always freezes a device queue before calling the
attribute store operation. For attributes that control queue limits, the
store operation will also lock the queue limits with a call to
queue_limits_start_update(). However, some drivers (e.g. SCSI sd) may
need to issue commands to a device to obtain limit values from the
hardware with the queue limits locked. This creates a potential ABBA
deadlock situation if a user attempts to modify a limit (thus freezing
the device queue) while the device driver starts a revalidation of the
device queue limits.

Avoid such deadlock by not freezing the queue before calling the
->store_limit() method in struct queue_sysfs_entry and instead use the
queue_limits_commit_update_frozen helper to freeze the queue after taking
the limits lock.

This also removes taking the sysfs lock for the store_limit method as
it doesn't protect anything here, but creates even more nesting.
Hopefully it will go away from the actual sysfs methods entirely soon.

(commit log adapted from a similar patch from  Damien Le Moal)

Fixes: ff956a3be95b ("block: use queue_limits_commit_update in queue_discard_max_store")
Fixes: 0327ca9d53bf ("block: use queue_limits_commit_update in queue_max_sectors_store")
Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Ming Lei <ming.lei@redhat.com>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Martin K. Petersen <martin.petersen@oracle.com>
Reviewed-by: Nilay Shroff <nilay@linux.ibm.com>
Reviewed-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 block/blk-sysfs.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/block/blk-sysfs.c b/block/blk-sysfs.c
index d2aa2177e4ba..e828be777206 100644
--- a/block/blk-sysfs.c
+++ b/block/blk-sysfs.c
@@ -694,22 +694,24 @@ queue_attr_store(struct kobject *kobj, struct attribute *attr,
 	if (entry->load_module)
 		entry->load_module(disk, page, length);
 
-	mutex_lock(&q->sysfs_lock);
-	blk_mq_freeze_queue(q);
 	if (entry->store_limit) {
 		struct queue_limits lim = queue_limits_start_update(q);
 
 		res = entry->store_limit(disk, page, length, &lim);
 		if (res < 0) {
 			queue_limits_cancel_update(q);
-		} else {
-			res = queue_limits_commit_update(q, &lim);
-			if (!res)
-				res = length;
+			return res;
 		}
-	} else {
-		res = entry->store(disk, page, length);
+
+		res = queue_limits_commit_update_frozen(q, &lim);
+		if (res)
+			return res;
+		return length;
 	}
+
+	mutex_lock(&q->sysfs_lock);
+	blk_mq_freeze_queue(q);
+	res = entry->store(disk, page, length);
 	blk_mq_unfreeze_queue(q);
 	mutex_unlock(&q->sysfs_lock);
 	return res;
-- 
2.45.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250110054726.1499538-7-hch%40lst.de.
