Return-Path: <usb-storage+bncBCUMB4EN24LRBLGIRXVQKGQEJLSYXWY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x448.google.com (mail-wr1-x448.google.com [IPv6:2a00:1450:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D5F9C881
	for <lists+usb-storage@lfdr.de>; Mon, 26 Aug 2019 06:46:37 +0200 (CEST)
Received: by mail-wr1-x448.google.com with SMTP id j10sf9083424wrb.16
        for <lists+usb-storage@lfdr.de>; Sun, 25 Aug 2019 21:46:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566794796; cv=pass;
        d=google.com; s=arc-20160816;
        b=ilDKRb4/h3sdbcX37dedn2tBxPe02KPjZjvChmIljDr+iCrSDCR1b6TuhwvUQOwRK5
         02POhomBAFloheC36IDxpHpRuFBU8hc9yKg4Vh2QKlp3momc9knD/bEVV/2SwJFyDGjm
         6dHasR1AfVHt7gKgDbJMgYYWXen6xunuTf3B5DSaPUcpPdtFaN3KRcZxAFKQGNFS8Wws
         5GdHl1Uv3UPj+BSjHRwj2bOvF43aTfx5WQYMP5pJ8JtrFup5x9qsgqz7iIzgldNDU4Me
         KZbYEwSfK9RjorJR7AFsj/DN5yMEJVOs2To18fxKCuKPayyxg5r2uRbFFtq7LqMQxwFK
         zFZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=RN+NszzGnjHmsU4HNXCeqKIk6w8K+hYpwEZ+GzuQSH4=;
        b=cDPc89MxuueSx4DOCo6svsp7CDF2RwAiaHamR12K5OK28Ah0GzOatVQxrQW9ANWCbu
         wNl7v9Wwfk4MW4cnc5pU+JnbOkdqb3QEH4xcIQAN++cMFEBnOjS3oJZFEFpufLdDnZUR
         MStDuV7rVcJadDmPp0nlqnIVJKOulI1VwPwVkS3IvhWCWwJ0SbnK1QKsljNAuc798WB9
         C6r+Wil1tb4HQ2jwSz8o4KUhzC+nHnlZ1AqDxzPAAhS5yNPjJnyRyEKhwSbk3xApsXPg
         T5wtLKZo1q53R7/A/2DvAE1YkvJ/hTN2MMaLnd3UefNMgFZBW6uL4OkhXNnzt/ANdewn
         ogTA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of kai.heng.feng@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=kai.heng.feng@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RN+NszzGnjHmsU4HNXCeqKIk6w8K+hYpwEZ+GzuQSH4=;
        b=luz2xwYaPmtlmpGOTZp3//tx+7axsMt5y7Nml+6iAdtUsBnDilE03QD5bdto00xcmV
         lpiwT3pEZ7sn1SFrjf0xTpLuByMLD7Z+JugkFNYRx4KUwCnq9AS4m2Ps6FOT1zhuU5M2
         Y+AJ3u6tM+bwDQopf03t6lDVgDzRNRMQYUazw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RN+NszzGnjHmsU4HNXCeqKIk6w8K+hYpwEZ+GzuQSH4=;
        b=YFVJ/Nn5ECHR/sJ3RHMjODmk8p0Dpsi8nDGhS9N5wWOGEBAejxxv22f0LwssNdasfQ
         8Cfg+FQSGrq7V7IvIQqJldIrUzzscUKxDVmKOFJUINt37bBM5a4ba6TNM2s2fajwxBUU
         iZejvedfPoP+H6SsHBhQ4/g4fZ8AkBzpZhP1GNhYhqMMGJLeiDneGu8XP7WLkm4RnYF7
         1AOEcw//Snqgfe++REyQacjKBUURI/wy1GNWaN5O0UCDUfxZNVmT75axSrKr8TM1o+3r
         OfAvrYUbxgKgaZL1nVdTInF051HCnS/pig+GFMS39+CswNvdrdnFB5kOLIYUf140p9aa
         LFuw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAU5iBI78zResUCdEYfstE/xtYDUQDdRi0yK+zPs7bF70oLeNcGU
	r8Vqz7ox2sJLXVpESejKcXshNg==
X-Google-Smtp-Source: APXvYqyTziwco+mZ5azxUipFd6EbCJP+ZhugwFkkQZWA5kQvJX9e3+CcyITv1i3T5rj9VV7MnO4CJQ==
X-Received: by 2002:adf:f045:: with SMTP id t5mr3285699wro.307.1566794796740;
        Sun, 25 Aug 2019 21:46:36 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a1c:6484:: with SMTP id y126ls5760338wmb.1.canary-gmail;
 Sun, 25 Aug 2019 21:46:36 -0700 (PDT)
X-Received: by 2002:a1c:9c45:: with SMTP id f66mr19242529wme.38.1566794795983;
        Sun, 25 Aug 2019 21:46:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566794795; cv=none;
        d=google.com; s=arc-20160816;
        b=aEzYy1vZM9R6yRxUw6PGhs1navamEXV42XI8Nie6PLgmQG8lbTlKm7YPtEpWjM6p1o
         j32TKdZerRGj9ph7s0+anXZfzj15zPBnqp5flAuaTNdEZHc9qPxE4pQ/FXmcE9R0ejcL
         X8c7AMdI6C6buMOWydN59XyR+yPKS5LDVkJJ4Wp+9xXN9HW8PQcr2ZhmF70NwWLrrzpa
         v2x6LGd0YlrprTSXCjlPJIzLwJRv/jIAeULxbdb7rn3jQG28HdE+qTcCW0aQXyQ28SB9
         AE8AFMJhieOl33M33dIVMZ+emgpcqc9Eql0ecnuJQlxzxfDvDj/kt8Pykg+DBYHZwIKu
         MUtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=nD4rp7CnoFr4zj9jKODsfCo9eG+ffSI3to+dKU949rc=;
        b=i9ZDeYRB5kXDD9NrfNutG31R9kk+3aXD2nsjTZLKBFeuipUWY3v03HQZ+fDxM8E7gE
         31U8lgSxMUa1wg18gdv7Nl3ZP6IZFCyIn9xHORlVjwKsBsMldlm7K41ACa78TocGT8QI
         NXtOrsiFU1owIl2Bzmv9s2kpGf7/a5Usw9yFFa7rnt5qxZd35TVQriOxX2FSS1Q9eKUO
         GdURC8IWp9qamkw4uFFsdxv360iUGmt5SeacgT5nmNTR2dDJh+ZAo0QyoYA6aiC1p9m6
         ZXG1NOixipKCfVMvJ2BdOr0wouIm/fbE+K0fgnGf6h9vXjGTgNUoT2bh5r1hdqIp05b8
         ujwA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of kai.heng.feng@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=kai.heng.feng@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
Received: from youngberry.canonical.com (youngberry.canonical.com. [91.189.89.112])
        by mx.google.com with ESMTPS id l25si7700890wmi.94.2019.08.25.21.46.35
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 25 Aug 2019 21:46:35 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of kai.heng.feng@canonical.com designates 91.189.89.112 as permitted sender) client-ip=91.189.89.112;
Received: from 61-220-137-37.hinet-ip.hinet.net ([61.220.137.37] helo=localhost)
	by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
	(Exim 4.76)
	(envelope-from <kai.heng.feng@canonical.com>)
	id 1i26tl-00010H-RL; Mon, 26 Aug 2019 04:46:34 +0000
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
To: stern@rowland.harvard.edu
Cc: gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Kai-Heng Feng <kai.heng.feng@canonical.com>
Subject: [usb-storage] [PATCH 1/2] USB: storage: ums-realtek: Rename module
 parameter auto_delink_en to auto_delink_mode
Date: Mon, 26 Aug 2019 12:46:29 +0800
Message-Id: <20190826044630.21949-1-kai.heng.feng@canonical.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: kai.heng.feng@canonical.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 best guess record for domain of kai.heng.feng@canonical.com designates
 91.189.89.112 as permitted sender) smtp.mailfrom=kai.heng.feng@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
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

The option named "auto_delink_en" is a bit misleading, as setting it to
false doesn't really disable auto-delink but let auto-delink be firmware
controlled.

Rename it to reflect the real usage of this parameter.

Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
---
 drivers/usb/storage/realtek_cr.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/usb/storage/realtek_cr.c b/drivers/usb/storage/realtek_cr.c
index cc794e25a0b6..4d86cfcc0b40 100644
--- a/drivers/usb/storage/realtek_cr.c
+++ b/drivers/usb/storage/realtek_cr.c
@@ -36,9 +36,9 @@ MODULE_DESCRIPTION("Driver for Realtek USB Card Reader");
 MODULE_AUTHOR("wwang <wei_wang@realsil.com.cn>");
 MODULE_LICENSE("GPL");
 
-static int auto_delink_en = 1;
-module_param(auto_delink_en, int, S_IRUGO | S_IWUSR);
-MODULE_PARM_DESC(auto_delink_en, "enable auto delink");
+static int auto_delink_mode = 1;
+module_param(auto_delink_mode, int, S_IRUGO | S_IWUSR);
+MODULE_PARM_DESC(auto_delink_mode, "auto delink mode (0=firmware, 1=software [default])");
 
 #ifdef CONFIG_REALTEK_AUTOPM
 static int ss_en = 1;
@@ -567,7 +567,7 @@ static int config_autodelink_after_power_on(struct us_data *us)
 	if (retval < 0)
 		return -EIO;
 
-	if (auto_delink_en) {
+	if (auto_delink_mode) {
 		CLR_BIT(value, 0);
 		CLR_BIT(value, 1);
 		SET_BIT(value, 2);
@@ -630,7 +630,7 @@ static int config_autodelink_before_power_down(struct us_data *us)
 	if (!CHK_AUTO_DELINK(chip))
 		return 0;
 
-	if (auto_delink_en) {
+	if (auto_delink_mode) {
 		retval = rts51x_read_mem(us, 0xFE77, &value, 1);
 		if (retval < 0)
 			return -EIO;
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190826044630.21949-1-kai.heng.feng%40canonical.com.
