Return-Path: <usb-storage+bncBDUNBGN3R4KRBGEJ7G5QMGQELEEOZPY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1045.google.com (mail-pj1-x1045.google.com [IPv6:2607:f8b0:4864:20::1045])
	by mail.lfdr.de (Postfix) with ESMTPS id 727DAA056AF
	for <lists+usb-storage@lfdr.de>; Wed,  8 Jan 2025 10:25:46 +0100 (CET)
Received: by mail-pj1-x1045.google.com with SMTP id 98e67ed59e1d1-2ef775ec883sf23838751a91.1
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jan 2025 01:25:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736328345; cv=pass;
        d=google.com; s=arc-20240605;
        b=ia7kNq2a5ohMCyHwShEjUtknJZBjt1Yd59kZWGTxBI/++1IGKeMvDBCnNgKcvxawpj
         jmW9lV/RGkCK6CL6Z0W+ia+cix8kTGaCUs6Nz9Ht5E76po9eDlQ7UkuLMRBTYBQngGgR
         ccDPiE1n9Xtp3nTdxbKZysyzU8ZNlvjR+BNJ/WdKaLuzDYkdUBFAVpZrONmb5fT2RcvM
         gATBUUZ0ngEYSjgiQpqltRXMR3ygHEG47EOb+Hb5HlxMRd7ONTUg7IY7ApiRBNU78eOC
         mtE6xYQ9iB87mzloB20sgARlsrWqkSs50VQ6TZvMubySKlryffKCV8xTTLA2BHQ3VzJZ
         eE0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=OWRgqmRKx+DQ/It46KPURISYqW3DaM/MLtRwN6z4lP8=;
        fh=zzhwP2EEhXQkf0rmBIGS8g3llBJJ/Axzh0+UBkhcl24=;
        b=emEQqHZ0lCgGSJGe3ajIII47lYXaiJ5RmBKchDF1MmBKbXI9ATDlbkf2rV4UgN+Kx8
         OaQvZS7pIe0OwmmTUR9gj1SQUEzOo8IFNpcJ9YKLPkxqjWxYEv3HI3HwqZP9Ujx2Gswv
         5mKgchBemqeDF9w+/8lBcOzFOae1YKfPydV3Rkrl1GD5J+a8hX+goNVp0KLUtMZsTTaO
         EgOQl3kup6nZBxT9rY2WR77cozxPsnrwOSF5MP8lOdXtx3KaiogP6FphlZM76VRlOTIT
         TVXpOxapUtgGGHDHFZuzTuDN6462m3Ug4cGkIBDe/QtPJ3HtGjhTEGkua4uv3z3ynyYo
         Vcyw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=KZcY6PoO;
       spf=none (google.com: batv+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736328345; x=1736933145; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OWRgqmRKx+DQ/It46KPURISYqW3DaM/MLtRwN6z4lP8=;
        b=iq0+F55oclOKNv3LsfB/c1wqQxpWL2x5MnxeRjmIpJGbf21m4brXmlJJEOhZ2PhQSs
         57gFVdruUj0qJTXjNPhyhFKJdmuXuOqtOTDzqGnLVaLsWDJpXtMHBydHiJ6vc1BF31Ri
         sfDI/t5eHm8SZssiTu4PIcNo6jOQEycI9NdEI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736328345; x=1736933145;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OWRgqmRKx+DQ/It46KPURISYqW3DaM/MLtRwN6z4lP8=;
        b=Duvnk2B7KLI7QcvmpOtFCrd8qxTlZIfIgYZuJvGKXvUKhY3iHRQclIY1FyenjAz7/M
         twAfZrQnSuubHJRu7HoOwJX4BPrSilpXS7K/BjMJNu65lcWlYmR+/hcvHnpM8v7AjGwo
         wvup7SzZrQDsGURkstw4LUSmymG01u/h/lkEuy+oO3wPFHm14S+CESH+b9oejolB5EvS
         c2aqa9fQsP1QBoPd4QAKCCzko6u7ux0fGZZBSqx+5HEmuWDPNjPBS45F9rkgcNrmwyOd
         5b68AcLMZZ3mvEFaJ6QzbL36ZPx+ltpVqODyzhjsGagdaexEaLeTeORViArdtsW7SABM
         b63A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWJeoflEFac29YOkKR5BFRq9HByKjFeVh8YG85+EhsZcqf8U+z+x/tq39O5jIkkpASjv81D8w==@lfdr.de
X-Gm-Message-State: AOJu0Yz01uExod5f+QAY6jQD+ZGOUsQEetO3uuaxVfV++XxlEkq6VTXi
	huUntYCOyW/f2Cckd5UFNMcRvrgxhoiC3HTbf5CE3v2hMQ1ZexQ9N2r6V8WqfKM=
X-Google-Smtp-Source: AGHT+IHqR7hrg+QQqLCYvHmD/3fI3TWntX7gw/QHSoBg8khkz0vckdi/2cWoeX8WNKvTEgj+xN2jag==
X-Received: by 2002:a05:6a20:7491:b0:1e1:9f57:eacb with SMTP id adf61e73a8af0-1e88d0e0f11mr4260500637.14.1736328344864;
        Wed, 08 Jan 2025 01:25:44 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6a00:6116:b0:725:4630:50f1 with SMTP id
 d2e1a72fcca58-72aa98012a4ls3341733b3a.0.-pod-prod-02-us; Wed, 08 Jan 2025
 01:25:43 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWWc/rvLg1tZyKmOmicbBwlE3nX7fsQzR+zYlQ6THzFnnNuyQnuy2fEoxbqsbp2VTg7KmDjZOjAl4tVFQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a20:734a:b0:1e1:aba4:20ab with SMTP id adf61e73a8af0-1e88d0a1e42mr3866498637.5.1736328343611;
        Wed, 08 Jan 2025 01:25:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736328343; cv=none;
        d=google.com; s=arc-20240605;
        b=Sv8y5u1JhVKutuc6LwDrjHwMObptVoaNwPNyimQ2ijZq30riMA+R0ykkyLga0CvUoN
         MULeHopDobbSkttsKB2lU+DH9w054GuxHWNednVWkdxr0E3Jlklm3h9elv9TjOW9jQwK
         jKc/x4h/GyUtiquumA3+qPPGUkWziVAN9SqUm11uaG1sJi/wnrrv2Tt6jmxsGfO7Ny37
         KTKk63kyuAVm+IW0s6fsjVO+jUOOjIpSS52EFCPiprVrt86ieE71iuGhHIzuzG6MVcN1
         6d6cMUBedEmN4UL4OsAjngA4vztWqMSbPIse8azzb6paK4lGUjwUqsipGUfInlzT3J+i
         koHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=uJvbhGLt97FsIbhsJnskeRWyPNiZsDPKmhL4bk2h2rs=;
        fh=/IQ3556OhCBpzuvXgLE22Yzy616bQT8dDlkj0uCHKWQ=;
        b=J8Ece3woa+WKj60Gob///nzqts2ewaym5+bmL+MQEG7HKcFlYbh4340oyZcS1ss+qz
         KmA+Sb6uKf4hDLso1mkzysGN8DhHHwDDUhKfkXVIT+A2huYmz/U+x4A/8rJWYNnvKRTC
         co/+CFk9wRqq/rCwVqGfDHW6aBDjpfModkvzoxKBc1ToJTnOzkTQf7kPqgyVlKpM+Syb
         uCIjY1CIrgdR66u+MtxDjdfFMkV6JBF79GH5QVWYVrKJ+sSvTlU74c9//yWx1Ukt6uzd
         a1bhEgnaTthXLdOT/+/2b5iragRxkXnjcY1GZERyQV8gp3p7o9zbDW6xKuyaSPladcHP
         /jUw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=KZcY6PoO;
       spf=none (google.com: batv+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 41be03b00d2f7-842e9a397desi47101642a12.341.2025.01.08.01.25.43
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 01:25:43 -0800 (PST)
Received-SPF: none (google.com: batv+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-e44b-b36a-6403-8f06.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:e44b:b36a:6403:8f06] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tVSJp-00000007lax-21ig;
	Wed, 08 Jan 2025 09:25:42 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Ming Lei <ming.lei@redhat.com>,
	Nilay Shroff <nilay@linux.ibm.com>,
	linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org,
	nbd@other.debian.org,
	linux-scsi@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH 05/10] block: fix queue freeze vs limits lock
 order in sysfs store methods
Date: Wed,  8 Jan 2025 10:25:02 +0100
Message-ID: <20250108092520.1325324-6-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250108092520.1325324-1-hch@lst.de>
References: <20250108092520.1325324-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=KZcY6PoO;
       spf=none (google.com: batv+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org
 does not designate permitted sender hosts) smtp.mailfrom=BATV+9e166f3f48dee24ac321+7808+infradead.org+hch@bombadil.srs.infradead.org
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

(commit log adapted from a similar patch from  Damien Le Moal)

Fixes: ff956a3be95b ("block: use queue_limits_commit_update in queue_discard_max_store")
Fixes: 0327ca9d53bf ("block: use queue_limits_commit_update in queue_max_sectors_store")
Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Nilay Shroff <nilay@linux.ibm.com>
---
 block/blk-sysfs.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/block/blk-sysfs.c b/block/blk-sysfs.c
index f36356cbde0b..2de405cb5f10 100644
--- a/block/blk-sysfs.c
+++ b/block/blk-sysfs.c
@@ -691,22 +691,24 @@ queue_attr_store(struct kobject *kobj, struct attribute *attr,
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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250108092520.1325324-6-hch%40lst.de.
