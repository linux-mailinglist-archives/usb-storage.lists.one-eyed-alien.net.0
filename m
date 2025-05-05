Return-Path: <usb-storage+bncBDUNBGN3R4KRBRHF4HAAMGQEUK43E6Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1046.google.com (mail-pj1-x1046.google.com [IPv6:2607:f8b0:4864:20::1046])
	by mail.lfdr.de (Postfix) with ESMTPS id 82295AA8DDF
	for <lists+usb-storage@lfdr.de>; Mon,  5 May 2025 10:11:50 +0200 (CEST)
Received: by mail-pj1-x1046.google.com with SMTP id 98e67ed59e1d1-30a4627dd0dsf3619923a91.2
        for <lists+usb-storage@lfdr.de>; Mon, 05 May 2025 01:11:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1746432709; cv=pass;
        d=google.com; s=arc-20240605;
        b=UfvT29Jq67NkRNxA51ei4QfK9THHY5wd2p3UsCOOrb5DqdcyvsesFGNqD/0lU73lEz
         qXyJjUGGgHMVy0eV+M2ZtHjamebbNcFdkjF9rjs3lCOGuEcQmkA2Cp8tKIXGEgC5+6l4
         BkwwSDKO/I45amg4vT0AGoMnrn6tUxcTEk6W39n/s8NJBenQKbYicGxycEzIOl/koIOB
         sJqHh1OLH+hmpKRhhgjimkvv0D7OiuweU3SHS1VWsIf/dcqqYSdg8kuosWst6TOsT9BO
         xS4fGa9LUaqEeKwkHsylphAEMk1LN2oLHy25j488nXEeJwdemuet3WR679j6AGMoWhuR
         wZOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=u4MSo7iJ94BBBRltQ9BVjc1SBTLwITQyCN5OOdwSBMc=;
        fh=3DmkqSDb7WbXu3k6j/CzVFSKv3T/rKMW5ubYwnWMk6w=;
        b=aJhg+3Ths6q3a4px8Fz0NJYCxBZRZrvlrSL+n1QFHUKsx8/R3bJlEY078X83423kft
         zrG0l5Up3tiUm22ywkrFDRdokioXOf4TmBraEhjaLHa5jBDxnH8kIejAAibbr08o5dZ6
         qanXTuNZfOW8MrOiQ3iptRLK3E9xGBtk4YnRu/YB+YWYrHxtz+6Jyd2f6D3sgb1Di+u3
         vXfRKrZXG4pIWOsDvpFD27vZiHYKUug0LSJrirabNSTvqR0rU0O7X5+O7Aa1DR1qfN/U
         cXMIKnMf/oluJG7Lm/I5ByhRfrhsJYfrDfNmv6Gw1TewQ/yuiIHDJSnnViNYXtkpjvmK
         8Low==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=rYJgjJT2;
       spf=none (google.com: batv+9b9d72b124a21f5aaaac+7925+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b9d72b124a21f5aaaac+7925+infradead.org+hch@bombadil.srs.infradead.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1746432709; x=1747037509; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u4MSo7iJ94BBBRltQ9BVjc1SBTLwITQyCN5OOdwSBMc=;
        b=jaWhkQN3qkwosfjGKaI4oFz82rj/9wg/TOLrk6Oi1f2vPMuIArPSwDvJV+6YWw6/O6
         PZbvwQ+WnjflHpzF5Q8tLs0IXyYafjPSl/i7H9b5iHY7S6pEVKOFSzXRNhns/3h11xbQ
         WyChRa+7fNM7VoYDPd/t4OHvN4wLbn2hS6L6w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746432709; x=1747037509;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u4MSo7iJ94BBBRltQ9BVjc1SBTLwITQyCN5OOdwSBMc=;
        b=G27n9pPDScB4cQHvvSe3OM9Gy2JuTA9rACBoIHxFCZQq7JwoF3pOSGK4J0GOXRnHvN
         Ghc2rbq5bts4VS1nsPirHH/wnL9Q1SZTUVwKcgL2WEm4qFlfcis4RG1ECrt1WBCjC4Wm
         HsE+jxS+JXRRxXruy8s4tjdf2M0YWU4RHKpBBt67ushyn7B4BPZgYdWmJDcJKiKSoON8
         nlxJUWVLMBSYPFsAG7HQio6tL7lZPafX1oKiFXW1DTYrYwpuGFSkA6unjq6VpbPPD41y
         fRjMbyximGC/AMD4HkCQfzoGBeCztYoYKSOIrv6PbqSJNCBVy+dVi9WPThNKMbQ3CfoD
         fZSQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXOu3iggFJAIPvfs/ftD+DkTQj182dcEwji/Je2PcOiRG99tef90lpstOqEGskW8szdBvN4xg==@lfdr.de
X-Gm-Message-State: AOJu0YyTd/n7EPl3J1SNNdFJ2daSiPIbUhDPBbACpm046nXTYJ3nuup0
	k3s9RDVMirvskd0wTaL5TEUnxmzF+fOxKfsaDBLcE8IoJkmGjKnhK1UpIFNcny8=
X-Google-Smtp-Source: AGHT+IEZyG9S3oY0Hy06/mRO8r0dtLG/SZ94h8+FrwXCJMYOz0zQzYRyLl7m22XGDtEI970EklAkFQ==
X-Received: by 2002:a17:90b:2745:b0:2ff:5357:1c7e with SMTP id 98e67ed59e1d1-30a619a8d7bmr9880264a91.20.1746432708657;
        Mon, 05 May 2025 01:11:48 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AVT/gBGJvTa02ChNdpXBOqz9YhZh8tWz9QtlfkysYYXeSinzwQ==
Received: by 2002:a17:90b:1f82:b0:2ff:4b06:9a15 with SMTP id
 98e67ed59e1d1-30a3e889125ls3616672a91.1.-pod-prod-05-us; Mon, 05 May 2025
 01:11:47 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXSUNeUjfM9rV5+oyigL7nYVjBoze6T9W7ab+hlzr1T1Hf8y39Dez60z/AZfC1yqgE75rLOVEH0quNB0Q==@lists.one-eyed-alien.net
X-Received: by 2002:a17:90b:5868:b0:2ff:7b28:a51a with SMTP id 98e67ed59e1d1-30a619a53e6mr11208832a91.17.1746432707232;
        Mon, 05 May 2025 01:11:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1746432707; cv=none;
        d=google.com; s=arc-20240605;
        b=Fz8B4x7GCSKHJSnIcwzfjqk0t1eL7weN1sCyv12gQq51Rzyidb1SA0jZZeNaY60my5
         jIE3lTDROYgjf0Iy0whwadiW2Li1n1z83ClFq/3hzKk4POkUrt1CGGVbXm0kpMp5/7Dh
         s5JnxUzul54giwWFhegIj4pvTocBAfQgXJSjMj8pGoDrYKrsxQ88SBfHakxR4spd1xmc
         U2WqerTU+dBENI0uI1HegxfjUgoS0XAso3vj/FCwnKC0ENat6ZIsWE8tAHKuLcJ9yISV
         xNKiuMxGSqQJIU2cBiqwWK4N/3pnf/QSEMw0/LwHejvFGkKbJdasAGeXy/zJEpzTpzeQ
         atog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=6XEbUoueC1gHPxeSLnipQtnbtK806iU6jTCT9j8NDXQ=;
        fh=jCZuufslJRqVNSPQbxa+ulBAoCMg5B41hiJr74nL2CM=;
        b=KbtYevGqaXGYY1W8lkzFcLoqK88Pj/sK5gTfwaitxh12nx6FKF4dxwP5h6qURRzgQ6
         XuDwEi2crvAwOBrD++6DaoWGg7xGs26F6g8MZYpH1uWjgS8pe2VODV/oYYlU9c+kMnuu
         +S3xxHPuyIPEudNI8AZmmymc9Y/cLQnw5cgq+jCjZWrN9erAhvcLvQ+qJ3W/gYXb3cJ5
         BiI9AwOmsrZ9eQj1bFPSLaMINaaDTBUD25nmJyGYX0rZ4I2jDjXhArD6FFxjT1+nbl9X
         4JnJ7l8XNA2HM9MgCF3i+rte8mtv67ZTJaTJwyCDpGAQvQUBdYDuWgI5ob/LZTvsn7+h
         9fTg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=rYJgjJT2;
       spf=none (google.com: batv+9b9d72b124a21f5aaaac+7925+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b9d72b124a21f5aaaac+7925+infradead.org+hch@bombadil.srs.infradead.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=lst.de
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id d9443c01a7336-22e1522f9f3si85096185ad.489.2025.05.05.01.11.47
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 May 2025 01:11:47 -0700 (PDT)
Received-SPF: none (google.com: batv+9b9d72b124a21f5aaaac+7925+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-f2ef-69c9-6274-23a2.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:f2ef:69c9:6274:23a2] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBqvQ-00000006kT7-45L0;
	Mon, 05 May 2025 08:11:45 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>,
	"Juergen E. Fischer" <fischer@norbit.de>,
	Alan Stern <stern@rowland.harvard.edu>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-block@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-mm@kvack.org,
	Hannes Reinecke <hare@suse.de>
Subject: [usb-storage] [PATCH 1/7] scsi: make aha152x depend on !HIGHMEM
Date: Mon,  5 May 2025 10:11:20 +0200
Message-ID: <20250505081138.3435992-2-hch@lst.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250505081138.3435992-1-hch@lst.de>
References: <20250505081138.3435992-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=rYJgjJT2;
       spf=none (google.com: batv+9b9d72b124a21f5aaaac+7925+infradead.org+hch@bombadil.srs.infradead.org
 does not designate permitted sender hosts) smtp.mailfrom=BATV+9b9d72b124a21f5aaaac+7925+infradead.org+hch@bombadil.srs.infradead.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=lst.de
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

This is one of the last drivers depending on the block layer bounce
buffering code.  Restrict it to run on non-highmem configs so that the
bounce buffering code can be removed.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Hannes Reinecke <hare@suse.de>
---
 drivers/scsi/Kconfig   | 1 +
 drivers/scsi/aha152x.c | 1 -
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/Kconfig b/drivers/scsi/Kconfig
index 5a3c670aec27..c89e6991e934 100644
--- a/drivers/scsi/Kconfig
+++ b/drivers/scsi/Kconfig
@@ -403,6 +403,7 @@ config SCSI_ACARD
 config SCSI_AHA152X
 	tristate "Adaptec AHA152X/2825 support"
 	depends on ISA && SCSI
+	depends on !HIGHMEM
 	select SCSI_SPI_ATTRS
 	select CHECK_SIGNATURE
 	help
diff --git a/drivers/scsi/aha152x.c b/drivers/scsi/aha152x.c
index 4276f868cd91..e94c0a19c435 100644
--- a/drivers/scsi/aha152x.c
+++ b/drivers/scsi/aha152x.c
@@ -746,7 +746,6 @@ struct Scsi_Host *aha152x_probe_one(struct aha152x_setup *setup)
 	/* need to have host registered before triggering any interrupt */
 	list_add_tail(&HOSTDATA(shpnt)->host_list, &aha152x_host_list);
 
-	shpnt->no_highmem = true;
 	shpnt->io_port   = setup->io_port;
 	shpnt->n_io_port = IO_RANGE;
 	shpnt->irq       = setup->irq;
-- 
2.47.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250505081138.3435992-2-hch%40lst.de.
