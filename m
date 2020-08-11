Return-Path: <usb-storage+bncBC27X66SWQMBBT7OZL4QKGQEODGISPI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x746.google.com (mail-qk1-x746.google.com [IPv6:2607:f8b0:4864:20::746])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F818241D0D
	for <lists+usb-storage@lfdr.de>; Tue, 11 Aug 2020 17:20:48 +0200 (CEST)
Received: by mail-qk1-x746.google.com with SMTP id v22sf9565700qkg.15
        for <lists+usb-storage@lfdr.de>; Tue, 11 Aug 2020 08:20:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597159247; cv=pass;
        d=google.com; s=arc-20160816;
        b=U6iSn74COEta2RGDAqxk2Sz8+s5QwtCpC/sIU/xj5BUGPRoj0KM6nTFKcuokF6oO4Q
         V/UHBlPXtFyJwE8zJHTokcY5QN4sLmZaA+vA34T3mEffRIYSJCk0YKJ7pzpiExhJNrhb
         oj/DNurUWTTOR5Cu8IIK5FPmLhk4K6VfNA2uMsSzv53HLzkblPj8DeNNzZxTza2kUmNz
         DxYJp5bUKw1UZW/aLhKUBweNushmbyr7YaB+E38wcBMcZBoiHyu2q3QZ2GhZGhAbFxGk
         guoXp7sTRG3Ilgh1de7X9rbCjDR9zzzYeL85BLm/e6RSyWfV5j+TzuC1byUDkyVkWdSB
         GmGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=2yFITQ2WT9DCaPCplmr4ZPBQJzsmjcNRi9DIZB2j4mM=;
        b=deKq1dw2R4c+hFyfMV+GxbbgIa2GGvo/0qfOm/MRd9XQxNShg1GtaIbJEoCaIJaXAa
         b9xdnb5tpX9mJ6fjb1enLriClzPJah8Mf1tD8mH1nyAPWnE5URuSGweaDgu0CGBUDHJN
         KlAXgvkPIXuhPCjWIGR8hx4NVDXrQaQeGOCPowf3NUBCHGq0VylcS8eb0S2N6BCiFfvd
         BGJVcOtevIEx/39rFj2nsotycMTx/AO6vkdgThGLW4BjU8kVNC8+7ORB+biHQE8civu9
         krrpvzQfaMhX+UnFrtNSDo3yEfQI1TqyucK8F4zxsbWCQ0EuHMH1T3eVJ7czHf8mdd5t
         EHgA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=aiCRxcJh;
       spf=pass (google.com: domain of trix@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2yFITQ2WT9DCaPCplmr4ZPBQJzsmjcNRi9DIZB2j4mM=;
        b=HPYIzhAiZHQ9i4yxPy0KOHOsuWKQj5MPg7KBioVwni74fr4MS6hgBKVDzQJYjkk1RZ
         KTPvbyzV5n87HdAVjXkaLFAC3SyVKTvOqb7AemzaXZmpKyElI8uxGrxKXRKAOYMmKfxK
         lpRs/7GeOH+NigVX58eillVKcxpZ4p5VNfNBc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2yFITQ2WT9DCaPCplmr4ZPBQJzsmjcNRi9DIZB2j4mM=;
        b=geEFUPHblONCE3Sf9kVgdBr0QguhPY2FPCdEvnAGDtDU9Ask4yxCema6rDycDg6oAS
         /pf0VUgT1FqhHirsIbkkHeROY2Hs7WEqeNYV9uPf7zQgFVrAtNfS4H1HfE1nTkByMumP
         MSKTBVdbZe3zH1nw6F7iPqee2hboE0qmcYKTXmvjZ7PjIt8CC5fzRWMpfSZ7zudCvldo
         +I+X9Q+g88RwcAU/sgMzpdXxF2CtQ0qBB1cktr/l7T0kRYlCLt+lTOLM4mDG5rBlgKJC
         qy9B8EGnlW2fgE8bc9V8XUczrvdRhFgZG6J13XMqccHBeSU9fPTrcHFZdv8EzGoZlU+/
         f7ug==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533lEKRKb/8ajZ5RqGzFH1RZgMS0Z5WqQFkeNYjV3hVDFSX0ImoV
	vRvLdFajbulV+y1jSsW+PQQvOg==
X-Google-Smtp-Source: ABdhPJzm2/JHekYWEymqlbdqRsS5t48GqkvCII3xoJ6BDAaabtotWnuILyF4tY46zTH2qK28CaJNKQ==
X-Received: by 2002:aed:33a5:: with SMTP id v34mr1607302qtd.262.1597159247591;
        Tue, 11 Aug 2020 08:20:47 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:620a:120e:: with SMTP id u14ls9861223qkj.3.gmail; Tue,
 11 Aug 2020 08:20:47 -0700 (PDT)
X-Received: by 2002:ae9:e902:: with SMTP id x2mr1691153qkf.66.1597159247272;
        Tue, 11 Aug 2020 08:20:47 -0700 (PDT)
Received: by 2002:a37:f502:0:b029:105:636a:708b with SMTP id l2-20020a37f5020000b0290105636a708bmsqkk;
        Tue, 11 Aug 2020 08:15:15 -0700 (PDT)
X-Received: by 2002:aa7:c513:: with SMTP id o19mr26593566edq.327.1597158915192;
        Tue, 11 Aug 2020 08:15:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597158915; cv=none;
        d=google.com; s=arc-20160816;
        b=BQZoO9qY8Ls+bb0CtLYyW1tQ5xKvXS9FvOEjXuTj7qteQ92B6Oi5SnVQSh3ynUbEl3
         pjnitVsV4JFTGahf3HwkflPPuAvBuZbY6m+odBQ4H8K0WXh4MQpmIYYkCnLDL9FVkt+S
         suTij9fJ8qoLhkljpY/dND05XBOUCvk0KhyhMMfvxYjmTL7v0K4rzP4W1ZU8ZVsGC0sx
         2J1rDNynfvUzOnt8edL24iptjZmcX4NBSkbKVSGqLQEoVd7IEPCRNOfshlDNxKnMK0Bn
         QRdl5ZeBPmVVftYr8JqLjkL5UuLD9u3XOjHr05iZMCtGMqsvA+h1/Z2wLoJd4xKV3GV+
         wBmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=3esd2ry+DBaV82mVE8iUIQ1zvcp2TStZOt6XF639RHg=;
        b=dqRtUbstNnYLT6OO977prK1zj6+u3Ff6B7rk4zJXWDJEcIpbl/AdcaTs2FctojMJPr
         vDS0siZtI2gAu9aEmLYE3fY2eG9a+Qo14/QTRWNUbFSc6pcHNKtFMYj8CkZk5SDxvsKX
         BYZXut8bC0MlKWHj+S50beKX5J334XK4t830BcV8gKY5Pf4xp1bv7w8MDYwTEL0aEzYI
         9YZFDPglav8/4kwFJLC7Q5tCX2KsJdCfQQr5Q/1R8QpWedyn0K1R14hzS+FTj+JmunSa
         EyQ01wTPNzvfdYHj2XlpCc+8m1aA4rurIz1P6l7UGN24Xi/rit+HbTS3XAPxpe/LQE3w
         aYbg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=aiCRxcJh;
       spf=pass (google.com: domain of trix@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id x60si14683061ede.582.2020.08.11.08.15.14
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Aug 2020 08:15:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-503-SnA99IxdOl2SFuoTi-scSw-1; Tue, 11 Aug 2020 11:15:12 -0400
X-MC-Unique: SnA99IxdOl2SFuoTi-scSw-1
Received: by mail-qv1-f69.google.com with SMTP id r12so9818397qvx.20
        for <usb-storage@lists.one-eyed-alien.net>; Tue, 11 Aug 2020 08:15:12 -0700 (PDT)
X-Received: by 2002:a0c:9b85:: with SMTP id o5mr1806901qve.11.1597158911543;
        Tue, 11 Aug 2020 08:15:11 -0700 (PDT)
X-Received: by 2002:a0c:9b85:: with SMTP id o5mr1806860qve.11.1597158911195;
        Tue, 11 Aug 2020 08:15:11 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id 8sm16358892qkh.77.2020.08.11.08.15.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Aug 2020 08:15:10 -0700 (PDT)
From: trix@redhat.com
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org,
	acozzette@cs.hmc.edu
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Tom Rix <trix@redhat.com>
Subject: [usb-storage] [PATCH] USB: realtek_cr: fix return check for dma functions
Date: Tue, 11 Aug 2020 08:15:05 -0700
Message-Id: <20200811151505.12222-1-trix@redhat.com>
X-Mailer: git-send-email 2.18.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=aiCRxcJh;
       spf=pass (google.com: domain of trix@redhat.com designates
 207.211.31.120 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

From: Tom Rix <trix@redhat.com>

clang static analysis reports this representative problem

realtek_cr.c:639:3: warning: The left expression of the compound
  assignment is an uninitialized value. The computed value will
  also be garbage
    SET_BIT(value, 2);
    ^~~~~~~~~~~~~~~~~

value is set by a successful call to rts51x_read_mem()

	retval = rts51x_read_mem(us, 0xFE77, &value, 1);
	if (retval < 0)
		return -EIO;

A successful call to rts51x_read_mem returns 0, failure can
return positive and negative values.  This check is wrong
for a number of functions.  Fix the retval check.

Fixes: 065e60964e29 ("ums_realtek: do not use stack memory for DMA")
Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/usb/storage/realtek_cr.c | 36 ++++++++++++++++----------------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/usb/storage/realtek_cr.c b/drivers/usb/storage/realtek_cr.c
index 3789698d9d3c..b983753e2368 100644
--- a/drivers/usb/storage/realtek_cr.c
+++ b/drivers/usb/storage/realtek_cr.c
@@ -481,16 +481,16 @@ static int enable_oscillator(struct us_data *us)
 	u8 value;
 
 	retval = rts51x_read_mem(us, 0xFE77, &value, 1);
-	if (retval < 0)
+	if (retval != STATUS_SUCCESS)
 		return -EIO;
 
 	value |= 0x04;
 	retval = rts51x_write_mem(us, 0xFE77, &value, 1);
-	if (retval < 0)
+	if (retval != STATUS_SUCCESS)
 		return -EIO;
 
 	retval = rts51x_read_mem(us, 0xFE77, &value, 1);
-	if (retval < 0)
+	if (retval != STATUS_SUCCESS)
 		return -EIO;
 
 	if (!(value & 0x04))
@@ -533,7 +533,7 @@ static int do_config_autodelink(struct us_data *us, int enable, int force)
 	u8 value;
 
 	retval = rts51x_read_mem(us, 0xFE47, &value, 1);
-	if (retval < 0)
+	if (retval != STATUS_SUCCESS)
 		return -EIO;
 
 	if (enable) {
@@ -549,7 +549,7 @@ static int do_config_autodelink(struct us_data *us, int enable, int force)
 
 	/* retval = rts51x_write_mem(us, 0xFE47, &value, 1); */
 	retval = __do_config_autodelink(us, &value, 1);
-	if (retval < 0)
+	if (retval != STATUS_SUCCESS)
 		return -EIO;
 
 	return 0;
@@ -565,7 +565,7 @@ static int config_autodelink_after_power_on(struct us_data *us)
 		return 0;
 
 	retval = rts51x_read_mem(us, 0xFE47, &value, 1);
-	if (retval < 0)
+	if (retval != STATUS_SUCCESS)
 		return -EIO;
 
 	if (auto_delink_en) {
@@ -580,7 +580,7 @@ static int config_autodelink_after_power_on(struct us_data *us)
 
 		/* retval = rts51x_write_mem(us, 0xFE47, &value, 1); */
 		retval = __do_config_autodelink(us, &value, 1);
-		if (retval < 0)
+		if (retval != STATUS_SUCCESS)
 			return -EIO;
 
 		retval = enable_oscillator(us);
@@ -602,18 +602,18 @@ static int config_autodelink_after_power_on(struct us_data *us)
 
 		/* retval = rts51x_write_mem(us, 0xFE47, &value, 1); */
 		retval = __do_config_autodelink(us, &value, 1);
-		if (retval < 0)
+		if (retval != STATUS_SUCCESS)
 			return -EIO;
 
 		if (CHECK_ID(chip, 0x0159, 0x5888)) {
 			value = 0xFF;
 			retval = rts51x_write_mem(us, 0xFE79, &value, 1);
-			if (retval < 0)
+			if (retval != STATUS_SUCCESS)
 				return -EIO;
 
 			value = 0x01;
 			retval = rts51x_write_mem(us, 0x48, &value, 1);
-			if (retval < 0)
+			if (retval != STATUS_SUCCESS)
 				return -EIO;
 		}
 	}
@@ -633,37 +633,37 @@ static int config_autodelink_before_power_down(struct us_data *us)
 
 	if (auto_delink_en) {
 		retval = rts51x_read_mem(us, 0xFE77, &value, 1);
-		if (retval < 0)
+		if (retval != STATUS_SUCCESS)
 			return -EIO;
 
 		SET_BIT(value, 2);
 		retval = rts51x_write_mem(us, 0xFE77, &value, 1);
-		if (retval < 0)
+		if (retval != STATUS_SUCCESS)
 			return -EIO;
 
 		if (CHECK_ID(chip, 0x0159, 0x5888)) {
 			value = 0x01;
 			retval = rts51x_write_mem(us, 0x48, &value, 1);
-			if (retval < 0)
+			if (retval != STATUS_SUCCESS)
 				return -EIO;
 		}
 
 		retval = rts51x_read_mem(us, 0xFE47, &value, 1);
-		if (retval < 0)
+		if (retval != STATUS_SUCCESS)
 			return -EIO;
 
 		SET_BIT(value, 0);
 		if (CHECK_ID(chip, 0x0138, 0x3882))
 			SET_BIT(value, 2);
 		retval = rts51x_write_mem(us, 0xFE77, &value, 1);
-		if (retval < 0)
+		if (retval != STATUS_SUCCESS)
 			return -EIO;
 	} else {
 		if (CHECK_ID(chip, 0x0159, 0x5889) ||
 		    CHECK_ID(chip, 0x0138, 0x3880) ||
 		    CHECK_ID(chip, 0x0138, 0x3882)) {
 			retval = rts51x_read_mem(us, 0xFE47, &value, 1);
-			if (retval < 0)
+			if (retval != STATUS_SUCCESS)
 				return -EIO;
 
 			if (CHECK_ID(chip, 0x0159, 0x5889) ||
@@ -677,14 +677,14 @@ static int config_autodelink_before_power_down(struct us_data *us)
 
 			/* retval = rts51x_write_mem(us, 0xFE47, &value, 1); */
 			retval = __do_config_autodelink(us, &value, 1);
-			if (retval < 0)
+			if (retval != STATUS_SUCCESS)
 				return -EIO;
 		}
 
 		if (CHECK_ID(chip, 0x0159, 0x5888)) {
 			value = 0x01;
 			retval = rts51x_write_mem(us, 0x48, &value, 1);
-			if (retval < 0)
+			if (retval != STATUS_SUCCESS)
 				return -EIO;
 		}
 	}
-- 
2.18.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20200811151505.12222-1-trix%40redhat.com.
